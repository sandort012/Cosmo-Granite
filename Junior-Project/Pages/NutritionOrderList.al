page 50102 NutritionOrderList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = NutritionHeader;
    RefreshOnActivate = true;
    Caption = 'Nutrition Order List';
    CardPageId = NutritionOrderDocument;
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
        area(Navigation)
        {
            action("Macronutrient List")
            {
                ApplicationArea = All;
                RunObject = page MacronutrientsList;

            }
        }
    }
}