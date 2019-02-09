table 50000 "TTTHURRA HurraEntry"
{
    Caption = 'Hurrapost';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "TTTHURRA EntryNo"; BigInteger)
        {
            Caption = 'Løbenr.';
            AutoIncrement = true;
            DataClassification = EndUserIdentifiableInformation;
        }
        field(10; "TTTHURRA Name"; Text[80])
        {
            Caption = 'Navn';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(11; "TTTHURRA CompanyName"; Text[80])
        {
            Caption = 'Firmanavn';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(12; "TTTHURRA Email"; Text[80])
        {
            Caption = 'E-mail';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(13; "TTTHURRA Created"; Integer)
        {
            Caption = 'Oprettet';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(14; "TTTHURRA CreatedDT"; DateTime)
        {
            Caption = 'Oprettet';
            DataClassification = EndUserIdentifiableInformation;
        }
    }

    keys
    {
        key(PK; "TTTHURRA EntryNo")
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