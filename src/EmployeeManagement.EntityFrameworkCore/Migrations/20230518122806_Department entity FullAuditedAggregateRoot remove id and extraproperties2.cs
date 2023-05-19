﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EmployeeManagement.Migrations
{
    /// <inheritdoc />
    public partial class DepartmententityFullAuditedAggregateRootremoveidandextraproperties2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ConcurrencyStamp",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "CreationTime",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "CreatorId",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "DeleterId",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "DeletionTime",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "LastModificationTime",
                table: "AbpDepartments");

            migrationBuilder.DropColumn(
                name: "LastModifierId",
                table: "AbpDepartments");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ConcurrencyStamp",
                table: "AbpDepartments",
                type: "nvarchar(40)",
                maxLength: 40,
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreationTime",
                table: "AbpDepartments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<Guid>(
                name: "CreatorId",
                table: "AbpDepartments",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "DeleterId",
                table: "AbpDepartments",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DeletionTime",
                table: "AbpDepartments",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "AbpDepartments",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "LastModificationTime",
                table: "AbpDepartments",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "LastModifierId",
                table: "AbpDepartments",
                type: "uniqueidentifier",
                nullable: true);
        }
    }
}
