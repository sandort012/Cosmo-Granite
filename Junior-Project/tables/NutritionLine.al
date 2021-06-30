table 50102 NutritionLine
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }

        field(3; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }

        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = MacroNutrients;
        }

        field(7; Description; Text[150])
        {
            DataClassification = ToBeClassified;
        }

        field(8; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(9; Protein; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(10; Fat; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(11; CarboHydrate; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(12; "Unit of Measure"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "Unit of Measure";
        }

        field(13; KJ; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(14; Kcal; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}