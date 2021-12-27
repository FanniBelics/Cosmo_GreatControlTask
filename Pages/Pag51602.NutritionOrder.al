page 51602 "Nutrition Order"
{

    Caption = 'Nutrition Order';
    PageType = Document;
    SourceTable = "GCT Nutrition Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(" Nutrition number"; Rec." Nutrition number")
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

            part(Lines; "GCT Nutrition Order Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Nutrition Number" = field(" Nutrition number");
            }
        }
    }

}
