codeunit 51604 "Nutrition Order Event Handler"
{
    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    local procedure Release(var Rec: Record "GCT Nutrition Header")
    var
        NutritionOrderManager: Codeunit "Nutrition Order Manager";
    begin
        NutritionOrderManager.Release(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReopenStatus', false, false)]
    local procedure Reopen(var Rec: Record "GCT Nutrition Header")
    var
        NutritionOrderManager: Codeunit "Nutrition Order Manager";
    begin
        NutritionOrderManager.Reopen(Rec);
    end;
}
