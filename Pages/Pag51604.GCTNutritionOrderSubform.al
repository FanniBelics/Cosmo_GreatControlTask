page 51604 "GCT Nutrition Order Subform"
{

    Caption = 'GCT Nutrition Order Subform';
    PageType = ListPart;
    SourceTable = "GCT Nutrition Line";


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
                    Editable = false;
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
                    Editable = false;

                }
                field(Fat; Rec.Fat)
                {
                    ToolTip = 'Specifies the value of the Fat field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ToolTip = 'Specifies the value of the Carbohydrate field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(KJ; Rec.KJ)
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Kcal; Rec.Kcal)
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

}
