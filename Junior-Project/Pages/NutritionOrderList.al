page 50102 NutritionOrderList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = NutritionHeader;
    RefreshOnActivate = true;
    Caption = 'Nutrition Order List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }

                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }

                field("Sell-to Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }

                // Location Code

                field("Document Date"; Rec.DocumentDate)
                {
                    ApplicationArea = All;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }

                field("Completely Shipped"; Rec.CompletelyShipped)
                {
                    ApplicationArea = All;
                }

                field(AmountShippedNotInvoiced; Rec.AmountShippedNotInvoiced)
                {
                    ApplicationArea = All;
                }

                field(AmtShippedNotInvoicedInclVAT; Rec.AmtShippedNotInvoicedInclVAT)
                {
                    ApplicationArea = All;
                }

                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }

                field(AmountInclVAT; Rec.AmountInclVAT)
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {
            // TODO
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}