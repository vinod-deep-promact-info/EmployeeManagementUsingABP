using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.Domain.Entities;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

namespace EmployeeManagement.Departments
{
    public class Department : FullAuditedAggregateRoot<Guid>
    {
        [Key]
        public Guid DepartmentId { get; set; }
        public string DepartmentName { get; set; }
    }
}
