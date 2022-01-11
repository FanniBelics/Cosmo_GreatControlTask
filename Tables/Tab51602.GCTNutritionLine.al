table 51602 "GCT Nutrition Line"
{
    Caption = 'GCT Táplálék lista';
    DataClassification = CustomerContent;
    LookupPageId = "GCT Macronutrients List Page";
    DrillDownPageId = "GCT Macronutrients List Page";

    fields
    {
        field(1; "Nutrition Number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Serial number"; Integer)
        {
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition Code"; Code[20])
        {
            Caption = 'Tápanyagkód';
            DataClassification = CustomerContent;
            TableRelation = "GCT Macronutrients Header" where(MacroCode = field("Nutrition Code"));
        }

        field(4; "Nutrition Name"; Text[2048])
        {
            Caption = 'Tápanyag neve';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("GCT Macronutrients Header".Description where(MacroCode = field("Nutrition Code")));

        }

        field(5; Amount; Integer)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                NutritionLineManager: Codeunit "Nutrition Line Manager";
            begin
                NutritionLineManager.calcProtein(Rec);
                NutritionLineManager.calcFat(Rec);
                NutritionLineManager.calcCarbo(Rec);
                NutritionLineManager.calcKJ(Rec);
                NutritionLineManager.calcKcal(Rec);
            end;
        }
        field(6; Protein; Integer)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(7; Fat; Integer)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(8; Carbohydrate; Integer)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(9; "Unit of Measure"; Code[10])
        {
            Caption = 'Mértékegység';
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
