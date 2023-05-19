using EmployeeManagement.Departments;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp;
using Volo.Abp.Domain.Entities.Auditing;

namespace EmployeeManagement.Employees
{
    public class Employee : FullAuditedAggregateRoot<Guid>
    {
        public Guid DepartmentId { get; set; }
        public string EmployeeName { get; set; }
        public int Age { get; set; }
        public double Salary { get; set; }
        public bool IsDeleted { get; set; }
    }
}
