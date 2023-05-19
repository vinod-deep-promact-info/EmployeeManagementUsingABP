using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
//using Volo.Abp.Domain.Repositories;
namespace EmployeeManagement.Employees
{
    public interface IEmployeeAppService : ICrudAppService<EmployeeDto, Guid, PagedAndSortedResultRequestDto, CreateUpdateEmployeeDto>
    {
        public Task<ListResultDto<EmployeeDto>> GetEmployeeByNameAsync(string Name);
        public Task<ListResultDto<EmployeeDto>> GetEmployeeByDepartmentAsync(string Name);

    }
}

