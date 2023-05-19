using EmployeeManagement.EntityFrameworkCore;
using Volo.Abp.Modularity;

namespace EmployeeManagement;

[DependsOn(
    typeof(EmployeeManagementEntityFrameworkCoreTestModule)
    )]
public class EmployeeManagementDomainTestModule : AbpModule
{

}
