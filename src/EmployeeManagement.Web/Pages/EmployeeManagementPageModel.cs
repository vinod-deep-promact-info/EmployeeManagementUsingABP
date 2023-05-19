using EmployeeManagement.Localization;
using Volo.Abp.AspNetCore.Mvc.UI.RazorPages;

namespace EmployeeManagement.Web.Pages;

/* Inherit your PageModel classes from this class.
 */
public abstract class EmployeeManagementPageModel : AbpPageModel
{
    protected EmployeeManagementPageModel()
    {
        LocalizationResourceType = typeof(EmployeeManagementResource);
    }
}
