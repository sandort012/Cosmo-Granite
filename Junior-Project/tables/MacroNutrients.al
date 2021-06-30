table 50100 MacroNutrients
{
    DataClassification = ToBeClassified;
    CaptionML = HUN = 'Makro tápanyag', ENG = 'Macro Units';


    fields
    {
        field(1; "No."; Code[20])
        {
            CaptionML = HUN = 'Kód', ENG = 'Code';
        }

        field(2; Description; Text[100])
        {
            CaptionML = HUN = 'Leírás', ENG = 'Description';

            trigger OnValidate()
            begin
                // TODO
            end;
        }

        field(3; Protein; Integer)
        {
            CaptionML = HUN = 'Fehérje', ENG = 'Protein';
        }

        field(4; Fat; Integer)
        {
            CaptionML = HUN = 'Zsír', ENG = 'Fat';
        }

        field(5; Carbohydrate; Integer)
        {
            CaptionML = HUN = 'Szénhidrát', ENG = 'Carbohydrate';
        }

        field(6; "Base Unit of Measure"; Code[10])
        {
            CaptionML = HUN = 'Mértékegység', ENG = 'Unit of Measure';
            TableRelation = "Unit of Measure";
        }

        field(7; KJ; Integer)
        {
            CaptionML = HUN = 'KJ', ENG = 'KJ';
        }

        field(8; Kcal; Integer)
        {
            CaptionML = HUN = 'Kcal', ENG = 'Kcal';
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}