page 51608 "Nutrition Setup Page"
{
    Caption = 'Nutrition Setup Page';
    PageType = Card;
    SourceTable = "Nutrition Setup";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No. Series for Nutrients"; Rec."No. Series for Nutrients")
                {
                    ToolTip = 'Specifies the value of the No. Series for Nutrients field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        nCode: Code[20];
        No: Code[20];
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
        No := 'P_PL00000';
        nCode := IncStr(No)
    end;
}
