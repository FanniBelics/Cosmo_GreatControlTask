codeunit 51601 "Nutrition Line Manager"
{

    procedure calcProtein(var Document: Record "GCT Nutrition Line")
    var
        Amount: Integer;
        NCode: Code[20];
        Protein: Integer;
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
    begin
        Amount := Document.Amount;
        NCode := Document."Nutrition Code";
        GCTMacronutrientsHeader.SetRange(MacroCode, NCode);
        GCTMacronutrientsHeader.FindFirst();
        Protein := GCTMacronutrientsHeader.Protein;
        Document.Protein := Amount * Protein;
    end;

    procedure calcFat(var Document: Record "GCT Nutrition Line")
    var
        Amount: Integer;
        NCode: Code[20];
        Fat: Integer;
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
    begin
        Amount := Document.Amount;
        NCode := Document."Nutrition Code";
        GCTMacronutrientsHeader.SetRange(MacroCode, NCode);
        GCTMacronutrientsHeader.FindFirst();
        Fat := GCTMacronutrientsHeader.Fat;
        Document.Fat := Amount * Fat;
    end;

    procedure calcCarbo(var Document: Record "GCT Nutrition Line")
    var
        Amount: Integer;
        NCode: Code[20];
        Carbo: Integer;
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
    begin
        Amount := Document.Amount;
        NCode := Document."Nutrition Code";
        GCTMacronutrientsHeader.SetRange(MacroCode, NCode);
        GCTMacronutrientsHeader.FindFirst();
        Carbo := GCTMacronutrientsHeader.Carbohydrate;
        Document.Carbohydrate := Amount * Carbo;
    end;

    procedure calcKJ(var Document: Record "GCT Nutrition Line")
    var
        Amount: Integer;
        NCode: Code[20];
        KJ: Integer;
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
    begin
        Amount := Document.Amount;
        NCode := Document."Nutrition Code";
        GCTMacronutrientsHeader.SetRange(MacroCode, NCode);
        GCTMacronutrientsHeader.FindFirst();
        KJ := GCTMacronutrientsHeader.KJ;
        Document.KJ := Amount * KJ;
    end;

    procedure calcKcal(var Document: Record "GCT Nutrition Line")
    var
        Amount: Integer;
        NCode: Code[20];
        Kcal: Integer;
        GCTMacronutrientsHeader: Record "GCT Macronutrients Header";
    begin
        Amount := Document.Amount;
        NCode := Document."Nutrition Code";
        GCTMacronutrientsHeader.SetRange(MacroCode, NCode);
        GCTMacronutrientsHeader.FindFirst();
        Kcal := GCTMacronutrientsHeader.Carbohydrate;
        Document.Kcal := Amount * Kcal;
    end;


}
