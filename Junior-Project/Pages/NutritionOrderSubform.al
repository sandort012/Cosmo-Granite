page 50104 NutritionOrderSubForm
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = NutritionLine;
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    LinksAllowed = false;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }

                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                }

                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                }

                field(CarboHydrate; Rec.CarboHydrate)
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
            action("Macronutrient List")
            {
                ApplicationArea = All;
                RunObject = page MacronutrientsList;
            }
        }

    }
}