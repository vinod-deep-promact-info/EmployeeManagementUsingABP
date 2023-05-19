using Volo.Abp.Ui.Branding;
using Volo.Abp.DependencyInjection;

namespace EmployeeManagement.Web;

[Dependency(ReplaceServices = true)]
public class EmployeeManagementBrandingProvider : DefaultBrandingProvider
{
    public override string AppName => "EmployeeManagement";
}
