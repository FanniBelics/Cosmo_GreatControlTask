codeunit 51602 "Nutrition Header Manager"
{
    procedure findCustomer(GCTNutritionHeader: Record "GCT Nutrition Header")
    var
        Customer: Record Customer;
    begin
        if Customer.get(GCTNutritionHeader.Customer) then
            GCTNutritionHeader."Customer Name" := Customer.Name
        else
            GCTNutritionHeader."Customer Name" := '';

    end;
}