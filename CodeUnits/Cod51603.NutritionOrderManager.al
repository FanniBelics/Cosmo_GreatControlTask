codeunit 51603 "Nutrition Order Manager"
{
    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    procedure Release(var Rec: Record "GCT Nutrition Header")
    begin
        Rec.TestField(Date);
        Rec.Status := Rec.Status::Closed;
        Rec.Modify();
    end;

    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ReopenStatus', false, false)]
    procedure Reopen(var Rec: Record "GCT Nutrition Header")
    begin
        Rec.Status := Rec.Status::Open;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'ExportDocument', false, false)]
    procedure ExportDocument(var Rec: Record "GCT Nutrition Header")
    var
        sheetname: Label 'Nutritions';
        FileName: Label '.\Exported\%1s_Intake';
        CustomFile: File;
    //        xmlstream: OutStream;
    //        xmlprt: XmlPort ; 

    begin
        /*        CustomFile.Create(StrSubstNo(FileName, Rec."Customer Name"));
                CustomFile.CreateOutStream(xmlstream);
                xmlport.Export(50002, xmlstream);
                CustomFile.Close();
        */
        Message('This wont work On Prem :(');
    end;

}
