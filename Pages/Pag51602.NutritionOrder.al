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
                    Editable = editable;
                }
                field(Customer; Rec.Customer)
                {
                    ToolTip = 'Specifies the value of the Customer field.';
                    ApplicationArea = All;
                    Editable = editable;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                    ApplicationArea = All;
                    Editable = editable;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                    Editable = editable;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = editable;

                }
            }

            part(Lines; "GCT Nutrition Order Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Nutrition Number" = field(" Nutrition number");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ReleaseStatus)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                ApplicationArea = All;
            }

            action(ReopenStatus)
            {
                Caption = 'ReOpen';
                Image = ReOpen;
                ApplicationArea = All;
            }
        }
    }


    trigger OnAfterGetCurrRecord()
    begin
        if Rec.Status = Rec.Status::Open then
            editable := true
        else
            editable := false;
    end;

    var
        editable: Boolean;

}
