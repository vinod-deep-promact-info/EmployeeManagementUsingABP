using EmployeeManagement.Employees;
using EmployeeManagement.Departments;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;

using Volo.Abp.Domain.Entities;
using AutoMapper.Internal.Mappers;
using System.ComponentModel.DataAnnotations;

namespace EmployeeManagement
{
    public class DepartmentDataSeederContributor : IDataSeedContributor, ITransientDependency
    {
        private readonly IRepository<Department, Guid> _departmentRepository;

        public DepartmentDataSeederContributor(IRepository<Department, Guid> departmentRepository)
        {
            _departmentRepository = departmentRepository;
        }

        public async Task SeedAsync(DataSeedContext context)
        {
            if (await _departmentRepository.GetCountAsync() <= 0)
            {
                await _departmentRepository.InsertAsync(
                    new Department
                    {
                        DepartmentName = "IT",
                        DepartmentId = Guid.NewGuid()
                    },
                    autoSave: true
                );

                await _departmentRepository.InsertAsync(
                     new Department
                     {
                         DepartmentName = "HR",
                         DepartmentId = Guid.NewGuid()
                     },
                    autoSave: true
                );

                await _departmentRepository.InsertAsync(
                     new Department
                     {
                         DepartmentName = "Finance",
                         DepartmentId = Guid.NewGuid()
                     },
                    autoSave: true
                );
            }
        }
    }
}

