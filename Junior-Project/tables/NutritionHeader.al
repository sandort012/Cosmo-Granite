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
            CaptionMl = HUN = 'Ügyfélszám', ENG = 'Customer No.';

            trigger OnValidate()
            var
                CustomerRecord: Record Customer;
            begin
                if CustomerRecord.Get(Rec."Sell-to Customer No.") then begin
                    "Customer Name" := CustomerRecord.Name;
                end;
            end;
        }

        field(5; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            CaptionMl = HUN = 'Vevő neve', ENG = 'Customer Name';
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
            DataClassification = ToBeClassified;
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

        field(17; "Sell-to Contact No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sell-to Contact No.';
            TableRelation = Contact;
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                Contactrecord: Record Contact;
            begin
                if Contactrecord.Get(Rec."Sell-to Contact No.") then begin
                    "Sell-to Contact" := Contactrecord.Name;
                end;
            end;
        }

        field(18; "Sell-to Contact"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sell-to Contact';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        Validate("Sell-to Contact No.");
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}