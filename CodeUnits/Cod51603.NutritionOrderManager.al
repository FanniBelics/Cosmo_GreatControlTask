codeunit 51603 "Nutrition Order Manager"
{
    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    procedure Release(var Rec: Record "GCT Nutrition Header")
    begin
        Rec.Status := Rec.Status::Closed;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReopenStatus', false, false)]
    procedure Reopen(var Rec: Record "GCT Nutrition Header")
    begin
        Rec.Status := Rec.Status::Open;
    end;

}
