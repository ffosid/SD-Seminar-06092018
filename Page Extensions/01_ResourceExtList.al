pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
//CSD1.00 - 2018-09-06 - D. E. Veloper
//Chapter 5 - Lab 1-3
{
    layout
    {
        modify(Type)
        {
            Visible=ShowType;
        }
        addafter("Type")
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible=ShowMaxField;
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type) =
                format(Type::Machine));
        FilterGroup(0);
    end;
    var
    [InDataSet]
    ShowMaxField: Boolean;
    [InDataSet]
    ShowType: Boolean;
}