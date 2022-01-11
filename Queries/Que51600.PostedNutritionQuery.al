query 51600 "Posted Nutrition Query"
{
    Caption = 'Posted Nutrition Query';
    QueryType = Normal;

    elements
    {
        dataitem(PostedHeader; "Posted Header")
        {
            column(Customer; Customer)
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column("Date"; "Date")
            {
            }
            column(Nutritionnumber; "Nutrition number")
            {
            }
            column(Status; Status)
            {
            }

            dataitem(PostedLine1; PostedLine1)
            {
                DataItemLink = "Nutrition Number" = PostedHeader."Nutrition number";
            }
        }
    }


    trigger OnBeforeOpen()
    begin

    end;
}
