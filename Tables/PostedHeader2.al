table 51604 "Posted Header"
{
    Caption = 'Posted Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = ' Nutrition number';
            DataClassification = CustomerContent;
        }
        field(2; Customer; Code[20])
        {
            Caption = 'Customer';
            DataClassification = CustomerContent;
            TableRelation = Customer;

        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionMembers = Open,Closed;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Nutrition number")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Setup: Record "Nutrition Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "Nutrition number" = '' then begin
            Setup.Get();
            "Nutrition number" := NoSeriesManagement.GetNextNo(Setup."No. Series for Nutrients", Today, true);
        end;
    end;




}
