using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Volo.Abp;

namespace EmployeeManagement;

public class EmployeeManagementWebTestStartup
{
    public void ConfigureServices(IServiceCollection services)
    {
        services.AddApplication<EmployeeManagementWebTestModule>();
    }

    public void Configure(IApplicationBuilder app, ILoggerFactory loggerFactory)
    {
        app.InitializeApplication();
    }
}
