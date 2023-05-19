using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace EmployeeManagement.Employees
{
    public class EmployeeDto : AuditedEntityDto<Guid>
    {
        public Guid DepartmentId { get; set; }
        public string EmployeeName { get; set; }
        public int Age { get; set; }
        public double Salary { get; set; }
    }
}
