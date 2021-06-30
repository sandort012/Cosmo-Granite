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

        field(2; "No."; Code[20])
        {
            Caption = 'No.';

        }

        field(3; "Sell-to Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            CaptionMl = HUN = 'TODO', ENG = 'Sell-to Customer No.';

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

        field(10; Status; Enum "Sales Document Status")
        {
            Caption = 'Status';
            Editable = false;
        }

        field(11; DocumentDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(12; CompletelyShipped; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(13; AmountShippedNotInvoiced; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(14; AmtShippedNotInvoicedInclVAT; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(15; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(16; AmountInclVAT; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.")
        {
            Clustered = true;
        }
    }

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