codeunit 51600 "Nutrition Header Management"
{
    procedure fidnCustomerByNumber(var Document: Record "GCT Nutrition Header")
    var
        Customer: Record Customer;
    begin
        if Customer.Get(Document."Customer") then
            Document."Customer Name" := Customer.Name
        else
            Document."Customer Name" := '';
    end;
}
