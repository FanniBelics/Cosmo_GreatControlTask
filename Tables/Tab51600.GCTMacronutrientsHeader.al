table 51600 "GCT Macronutrients Header"
{
    Caption = 'GCT Macronutrients';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "MacroCode"; Code[20])
        {
            Caption = 'Kód';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[2048])
        {
            Caption = 'Leírás';
            DataClassification = CustomerContent;
        }
        field(3; Protein; Integer)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(4; Fat; Integer)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(5; Carbohydrate; Integer)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(6; "Unit of Measure"; Code[10])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = "Item Unit of Measure" where("Item No." = field(MacroCode));
        }
        field(7; KJ; Integer)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(8; Kcal; Integer)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "MacroCode")
        {
            Clustered = true;
        }
    }

}
