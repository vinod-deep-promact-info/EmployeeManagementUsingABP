using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.Domain.Repositories;
using AutoMapper;
using EmployeeManagement.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace EmployeeManagement.Employees
{
    public class EmployeeAppService :
        CrudAppService<
        Employee, //The employee entity
        EmployeeDto, //Used to show employee
        Guid, //Primary key of the employee entity
        PagedAndSortedResultRequestDto, //Used for paging/sorting
        CreateUpdateEmployeeDto>, //Used to create/update a employee
        IEmployeeAppService //implement the IemployeeAppService
    {
        private readonly IRepository<Employee, Guid> _employeeRepository;
        private readonly IMapper _mapper;
        private readonly EmployeeManagementDbContext _context;
        public EmployeeAppService(IRepository<Employee, Guid> repository, IMapper mapper, EmployeeManagementDbContext context)
        : base(repository)
        {
            _employeeRepository = repository;
            _mapper = mapper;
            _context = context;
        }
        public async Task<ListResultDto<EmployeeDto>> GetEmployeeByNameAsync(string Name)
        {
            var employees = await _employeeRepository.GetListAsync(x => x.EmployeeName.Contains(Name));
            //var employeesDto = _mapper.Map<List<EmployeeDto>>(employees);
            //var employeesDto = _mapper.Map<List<Employee>, ListResultDto<EmployeeDto>>(employees);

            var employeeDto = ObjectMapper.Map<List<Employee>, List<EmployeeDto>>(employees);
            return new ListResultDto<EmployeeDto>(employeeDto);

            //return employeesDto;
        }
        public async Task<ListResultDto<EmployeeDto>> GetEmployeeByDepartmentAsync(string Name)
        {
            var employeeDto = await _context.Employees
                .Join(_context.Departments, e => e.DepartmentId, d => d.DepartmentId, (e, d) => new { e, d })
                .Where(x => x.d.DepartmentName == Name)
                .OrderBy(x => x.e.EmployeeName)
                .Select(x =>
                new EmployeeDto
                {
                    EmployeeName = x.e.EmployeeName,
                    Age = x.e.Age,
                    Salary = x.e.Salary
                }).ToListAsync();
            return new ListResultDto<EmployeeDto>(employeeDto);
        }
    }
}
