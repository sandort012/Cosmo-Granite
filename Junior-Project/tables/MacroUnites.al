table 50100 Macronutrients
{
    DataClassification = ToBeClassified;
    CaptionML = HUN = 'Makro tápanyag', ENG = 'Macro Units';


    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; MyField)
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