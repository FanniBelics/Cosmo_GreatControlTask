report 51600 "Posted Reports"
{
    ApplicationArea = All;
    Caption = 'Posted Reports';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports\PostedRep.rdlc';
    dataset
    {
        dataitem(PostedHeader; "Posted Header")
        {
            column(Date; "Date")
            {
                IncludeCaption = true;
            }
            column(Nutritionnumber; "Nutrition number")
            {
                IncludeCaption = true;
            }
            column(Customer; Customer)
            {
                IncludeCaption = true;
            }
            column(CustomerName; "Customer Name")
            {
                IncludeCaption = true;
            }
            column(Status; Status)
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
