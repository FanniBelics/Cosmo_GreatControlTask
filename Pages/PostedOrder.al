page 51606 "Posted Order"
{

    Caption = 'Posted Order';
    PageType = Document;
    SourceTable = "Posted Header";
    Editable = false;

    layout
    {
        area(content)
        {
            group(General)
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

            part(Lines; "PostedSubform")
            {
                ApplicationArea = All;
                SubPageLink = "Nutrition Number" = field("Nutrition number");
                Editable = false;
                UpdatePropagation = Both;
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

            action(ExportDocument)
            {
                Caption = 'Export Document';
                Image = Export;
                ApplicationArea = All;
            }

            action(PostDocument)
            {
                Caption = 'Post Document';
                Image = Post;
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
