table 51602 "GCT Nutrition Line"
{
    Caption = 'GCT Nutrition Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Nutrition number';
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
            TableRelation = "GCT Macronutrients Header" where(Code = field("Nutrition Code"));
        }
        field(4; Amount; Integer)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(5; Protein; Decimal)
        {
            Caption = 'Protein';
            FieldClass = FlowField;
            trigger OnValidate()
            var
                MacronutrientsHeader: Record "GCT Macronutrients Header";
                Amount: Integer;
                Protein: Decimal;

            begin
                Amount := Rec.Amount;
                Protein := MacronutrientsHeader.Protein;
                Rec.Protein := Amount * Protein;
            end;
        }
        field(6; Fat; Decimal)
        {
            Caption = 'Fat';
            FieldClass = FlowField;
        }
        field(7; Carbohydrate; Decimal)
        {
            Caption = 'Carbohydrate';
            FieldClass = FlowField;
        }
        field(8; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
        }
        field(9; KJ; Decimal)
        {
            Caption = 'KJ';
            FieldClass = FlowField;
        }
        field(10; Kcal; Decimal)
        {
            Caption = 'Kcal';
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(PK; "Nutrition number")
        {
            Clustered = true;
        }
    }

}
