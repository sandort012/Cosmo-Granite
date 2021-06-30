page 50103 NutritionOrderDocument
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = NutritionHeader;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                }

                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ApplicationArea = All;
                    Caption = 'Contact';
                }

                field(PostingDate; Rec.PostingDate)
                {
                    ApplicationArea = All;
                    Caption = 'Posting Date';
                }

                field(OrderDate; Rec.OrderDate)
                {
                    ApplicationArea = All;
                    Caption = 'Order Date';
                }

                field(DueDate; Rec.DueDate)
                {
                    ApplicationArea = All;
                    Caption = 'Due Date';
                }

                field(RequestedDeliveryDate; Rec.RequestedDeliveryDate)
                {
                    ApplicationArea = All;
                    Caption = 'Requested Delivery Date';
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }

            group("Nutrition Line")
            {
                part(NutritionOrderSubForm; NutritionOrderSubForm)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    Enabled = Rec."Sell-to Customer No." <> '';
                    SubPageLink = "Document No." = FIELD("No.");
                    UpdatePropagation = Both;
                }
            }
        }
    }
}