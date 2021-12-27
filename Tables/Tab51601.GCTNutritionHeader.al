table 51601 "GCT Nutrition Header"
{
    Caption = 'GCT Nutrition Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; " Nutrition number"; Code[20])
        {
            Caption = ' Nutrition number';
            DataClassification = CustomerContent;
        }
        field(2; Customer; Code[20])
        {
            Caption = 'Customer';
            DataClassification = CustomerContent;
            TableRelation = Customer;
            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                if Customer.Get(Rec."Customer") then
                    Rec."Customer Name" := Customer.Name
                else
                    Rec."Customer Name" := '';

            end;
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
        }
    }
    keys
    {
        key(PK; " Nutrition number")
        {
            Clustered = true;
        }
    }

}
