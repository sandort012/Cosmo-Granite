page 50101 MacronutrientsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Macronutrients;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }

                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;

                }

                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;

                }

                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;

                }

                field("Base Unit of Measure"; Rec."Base Unit of Measure")
                {
                    ApplicationArea = All;

                }

                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;

                }

                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}