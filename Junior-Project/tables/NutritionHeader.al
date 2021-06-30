table 50101 NutritionHeader
{
    DataClassification = ToBeClassified;
    CaptionML = HUN = 'táplálkozási törzstábla', ENG = 'Nutrition Header';

    fields
    {

        field(1; "Document Type"; Enum "Sales Document Type")
        {
            Caption = 'Document Type';
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            CaptionMl = HUN = 'TODO', ENG = 'Sell-to Customer No.';

        }

        field(3; "No."; Code[20])
        {
            Caption = 'No.';

        }

        field(4; "No"; Code[20])
        {
            Caption = 'No.';
            TableRelation = "No. Series";

        }

        field(5; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer.Name;
            CaptionMl = HUN = 'Vevo neve', ENG = 'Customer Name';

        }

        field(6; PostingDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(7; OrderDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(8; DueDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; RequestedDeliveryDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(120; Status; Enum "Sales Document Status")
        {
            Caption = 'Status';
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "Document Type", "No.")
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