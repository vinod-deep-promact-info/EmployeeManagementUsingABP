using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EmployeeManagement.Departments
{
    public class DepartmentDto
    {
        [Required]
        public Guid DepartmentId { get; set; }
        [Required]

        public string DepartmentName { get; set; }
    }
}
