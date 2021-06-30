page 50100 MacronutrientsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Macronutrients;
    CardPageId = MacronutrientsCard;
    Editable = false;
    CaptionML = HUN = 'Makro tápanyag Lista', ENG = 'Macro Units List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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