page 50103 NutritionOrderDocument
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = NutritionHeader;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'Customer No.';
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                }

                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                    ApplicationArea = All;
                    Caption = 'Contact No.';
                }

                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ApplicationArea = All;
                    Caption = 'Contact Name';
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