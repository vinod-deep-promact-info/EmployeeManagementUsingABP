using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EmployeeManagement.Migrations
{
    /// <inheritdoc />
    public partial class Employeeentityrename : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_AppEmployees",
                table: "AppEmployees");

            migrationBuilder.RenameTable(
                name: "AppEmployees",
                newName: "AbpEmployees");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AbpEmployees",
                table: "AbpEmployees",
                column: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_AbpEmployees",
                table: "AbpEmployees");

            migrationBuilder.RenameTable(
                name: "AbpEmployees",
                newName: "AppEmployees");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AppEmployees",
                table: "AppEmployees",
                column: "Id");
        }
    }
}
