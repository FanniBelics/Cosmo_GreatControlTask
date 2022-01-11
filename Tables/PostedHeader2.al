table 51604 "Posted Header"
{
    Caption = 'Könyvelt Fejléc';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; Customer; Code[20])
        {
            Caption = 'Vendég';
            DataClassification = CustomerContent;
            TableRelation = Customer;

        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Vendég neve';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Státusz';
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
}
