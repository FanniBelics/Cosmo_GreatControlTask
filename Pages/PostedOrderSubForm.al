page 51605 "PostedSubform"
{

    Caption = 'Posted Subform';
    PageType = ListPart;
    SourceTable = "PostedLine1";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrition Number"; Rec."Nutrition Number")
                {
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                }
                field("Serial number"; Rec."Serial number")
                {
                    ToolTip = 'Specifies the value of the Serial number field.';
                    ApplicationArea = All;
                }
                field("Nutrition Code"; Rec."Nutrition Code")
                {
                    ToolTip = 'Specifies the value of the Nutrition Code field.';
                    ApplicationArea = All;
                }
                field("Nutrition Name"; Rec."Nutrition Name")
                {
                    ToolTip = 'Specifies the value of the Nutrition Code field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    ToolTip = 'Specifies the value of the Protein field.';
                    ApplicationArea = All;

                }
                field(Fat; Rec.Fat)
                {
                    ToolTip = 'Specifies the value of the Fat field.';
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ToolTip = 'Specifies the value of the Carbohydrate field.';
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
