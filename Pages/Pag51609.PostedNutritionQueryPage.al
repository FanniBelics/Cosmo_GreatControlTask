page 51609 "Posted Nutrition Query Page"
{
    Caption = 'Posted Nutrition Query Page';
    PageType = List;
    SourceTable = "Posted Header";
    UsageCategory = Administration;
    ApplicationArea = All;
    QueryCategory = 'Posted Nutrition Query';


    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field("Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the  Nutrition number field.';
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
