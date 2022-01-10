page 51607 "Posted Line List"
{

    ApplicationArea = All;
    Caption = 'Posted Line List';
    PageType = List;
    SourceTable = "Posted Header";
    UsageCategory = Lists;
    CardPageId = "Posted Order";

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
