page 50100 MacronutrientsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Macronutrients;
    CardPageId = MacronutrientsCard;
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