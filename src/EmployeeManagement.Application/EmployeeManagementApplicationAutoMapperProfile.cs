using AutoMapper;
using EmployeeManagement.Employees;
using System.Collections.Generic;
using Volo.Abp.Application.Dtos;

namespace EmployeeManagement;

public class EmployeeManagementApplicationAutoMapperProfile : Profile
{
    public EmployeeManagementApplicationAutoMapperProfile()
    {
        CreateMap<Employee, EmployeeDto>();
        //CreateMap<List<Employee>, ListResultDto<EmployeeDto>>().ConvertUsing<ListToDtoConverter>();
        CreateMap<CreateUpdateEmployeeDto, Employee>();
    }
    //public class ListToDtoConverter : ITypeConverter<List<Employee>, ListResultDto<EmployeeDto>>
    //{
    //    public ListResultDto<EmployeeDto> Convert(List<Employee> source, ListResultDto<EmployeeDto> destination, ResolutionContext context)
    //    {
    //        return context.Mapper.Map<ListResultDto<EmployeeDto>>(source);
    //    }
    //}
}
