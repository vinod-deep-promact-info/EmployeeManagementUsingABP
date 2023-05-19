using System.Threading.Tasks;
using Shouldly;
using Xunit;

namespace EmployeeManagement.Pages;

public class Index_Tests : EmployeeManagementWebTestBase
{
    [Fact]
    public async Task Welcome_Page()
    {
        var response = await GetResponseAsStringAsync("/");
        response.ShouldNotBeNull();
    }
}
