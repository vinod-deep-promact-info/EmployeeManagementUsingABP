using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EmployeeManagement.Employees
{
    public class CreateUpdateEmployeeDto
    {
        [Required]
        public Guid DepartmentId { get; set; }
        [Required]
        [StringLength(50)]
        public string EmployeeName { get; set; }
        [Required]
        [Range(21, 70)]
        public int Age { get; set; }
        [Required]
        public double Salary { get; set; }
    }
}
