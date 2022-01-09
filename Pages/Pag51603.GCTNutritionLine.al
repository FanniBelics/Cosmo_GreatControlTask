page 51603 "GCT Nutrition Line"
{

    ApplicationArea = All;
    Caption = 'GCT Nutrition';
    PageType = List;
    SourceTable = "GCT Nutrition Header";
    UsageCategory = Lists;
    CardPageId = "Nutrition Order";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(" Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the  Nutrition number field.';
                    ApplicationArea = All;
                }
                field(Customer; Rec.Customer)
                {
                    ToolTip = 'Specifies the value of the Customer field.';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                }
            }
        }

    }

}
