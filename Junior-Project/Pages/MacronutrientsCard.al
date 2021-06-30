page 50101 MacronutrientsCard
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Macronutrients;
    DelayedInsert = true;
    CaptionML = HUN = 'Makro tápanyag Kártya', ENG = 'Macro Units Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Kód', ENG = 'Code';

                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Leírás', ENG = 'Description';

                }

                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Fehérje', ENG = 'Protein';

                }

                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Zsír', ENG = 'Fat';

                }

                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Szénhidrát', ENG = 'Carbohydrate';

                }

                field("Base Unit of Measure"; Rec."Base Unit of Measure")
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Mértékegység', ENG = 'Unit of Measure';

                }

                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'KJ', ENG = 'KJ';

                }

                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;
                    CaptionML = HUN = 'Kcal', ENG = 'Kcal';

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