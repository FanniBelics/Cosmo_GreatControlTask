codeunit 51605 "Cod Posted document Management"
{

    procedure PostDoc(var Document: Record "GCT Nutrition Header")
    var
        PostedDocHead: Record "Posted Header";
        number: Codeunit NoSeriesManagement;
        poestedLineDoc: Record "PostedLine1";
        DocLine: Record "GCT Nutrition Line";
        QLabel: Label 'Do you want to delete the open %1 document?';

    begin
        Document.TestField(Status, Document.Status::Closed);
        PostedDocHead.Init();
        PostedDocHead.TransferFields(Document);
        PostedDocHead.Insert();
        DocLine.Reset();
        DocLine.SetRange("Nutrition Number", Document."Nutrition number");
        if DocLine.FindSet() then
            repeat
                poestedLineDoc.Init();
                poestedLineDoc.TransferFields(DocLine);
                poestedLineDoc.Insert();


            until DocLine.Next() = 0;

        if Confirm(QLabel, true, Document."Nutrition number") then
            Document.Delete(true);
        Commit();
        page.RunModal(Page::"Posted Order", PostedDocHead);


    end;


}
