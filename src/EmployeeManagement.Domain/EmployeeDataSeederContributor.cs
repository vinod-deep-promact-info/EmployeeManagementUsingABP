using EmployeeManagement.Employees;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;

namespace EmployeeManagement
{
    public class EmployeeDataSeederContributor : IDataSeedContributor, ITransientDependency
    {
        private readonly IRepository<Employee, Guid> _employeeRepository;

        public EmployeeDataSeederContributor(IRepository<Employee, Guid> employeeRepository)
        {
            _employeeRepository = employeeRepository;
        }

        public async Task SeedAsync(DataSeedContext context)
        {
            if (await _employeeRepository.GetCountAsync() <= 0)
            {
                await _employeeRepository.InsertAsync(
                    new Employee
                    {
                        EmployeeName = "VINOD",
                        DepartmentId = Guid.NewGuid(),
                        Age = 28,
                        Salary = 25000
                    },
                    autoSave: true
                );

                await _employeeRepository.InsertAsync(
                     new Employee
                     {
                         EmployeeName = "RAVI",
                         DepartmentId = Guid.NewGuid(),
                         Age = 25,
                         Salary = 20000
                     },
                    autoSave: true
                );
            }
        }
    }
}
