page 50102 NutritionOrder
{
    PageType = List;
    SourceTable = NutritionHeader;
    RefreshOnActivate = true;
    Caption = 'Nutrition Order';


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; Rec."No")
                {
                    ApplicationArea = All;

                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                }

                field(PostingDate; Rec.PostingDate)
                {
                    ApplicationArea = All;

                }

                field(OrderDate; Rec.OrderDate)
                {
                    ApplicationArea = All;

                }

                field(DueDate; Rec.DueDate)
                {
                    ApplicationArea = All;

                }

                field(RequestedDeliveryDate; Rec.RequestedDeliveryDate)
                {
                    ApplicationArea = All;

                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

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