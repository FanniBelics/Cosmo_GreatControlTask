table 51603 "PostedLine1"
{
    Caption = 'Posted List Line';
    DataClassification = CustomerContent;
    LookupPageId = "GCT Macronutrients List Page";
    DrillDownPageId = "GCT Macronutrients List Page";

    fields
    {
        field(1; "Nutrition Number"; Code[20])
        {
            Caption = 'Nutrition Number';
            DataClassification = CustomerContent;
        }
        field(2; "Serial number"; Integer)
        {
            Caption = 'Serial number';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition Code"; Code[20])
        {
            Caption = 'Nutrition Code';
            DataClassification = CustomerContent;
            TableRelation = "GCT Macronutrients Header" where(MacroCode = field("Nutrition Code"));
        }

        field(4; "Nutrition Name"; Text[2048])
        {
            Caption = 'Nutrition Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("GCT Macronutrients Header".Description where(MacroCode = field("Nutrition Code")));

        }

        field(5; Amount; Integer)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;

        }

        field(6; Protein; Integer)
        {
            Caption = 'Protein';
            DataClassification = CustomerContent;
        }
        field(7; Fat; Integer)
        {
            Caption = 'Fat';
            DataClassification = CustomerContent;
        }
        field(8; Carbohydrate; Integer)
        {
            Caption = 'Carbohydrate';
            DataClassification = CustomerContent;
        }
        field(9; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
        }
        field(10; KJ; Integer)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(11; Kcal; Integer)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Nutrition number")
        {
            Clustered = true;
        }
    }

    var
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
}
