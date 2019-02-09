page 50000 "TTTHURRA Entries"
{
    Caption = 'Hurraposter';
    PageType = List;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "TTTHURRA HurraEntry";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater("TTTHURRA Group")
            {
                field("TTTHURRA EntryNo"; "TTTHURRA EntryNo")
                {
                    ApplicationArea = All;
                }
                field("TTTHURRA Name"; "TTTHURRA Name")
                {
                    ApplicationArea = All;
                }
                field("TTTHURRA CompanyName"; "TTTHURRA CompanyName")
                {
                    ApplicationArea = All;
                }
                field("TTTHURRA Email"; "TTTHURRA Email")
                {
                    ApplicationArea = All;
                }
                field("TTTHURRA CreatedDT"; "TTTHURRA CreatedDT")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {
        }
    }
}