page 50001 "TTTHURRA Entry"
{
    Caption = 'Hurra';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "TTTHURRA HurraEntry";
    SourceTableTemporary = true;
    DataCaptionExpression = 'Hurra, hurra, hurra';

    layout
    {
        area(Content)
        {
            group("TTTHURRA Group")
            {
                Caption = '(Husk at trykke på GEM i menuen...)';

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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("TTTHURRA Save")
            {
                Caption = 'Gem';
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                Image = Save;

                trigger OnAction()
                var
                    locrecEntry: Record "TTTHURRA HurraEntry";
                begin
                    if ("TTTHURRA Name" = '') or
                      ("TTTHURRA CompanyName" = '') or
                      ("TTTHURRA Email" = '')
                    then
                        exit;
                    locrecEntry.Init();
                    locrecEntry."TTTHURRA Name" := "TTTHURRA Name";
                    locrecEntry."TTTHURRA CompanyName" := "TTTHURRA CompanyName";
                    locrecEntry."TTTHURRA Email" := "TTTHURRA Email";
                    locrecEntry."TTTHURRA CreatedDT" := CurrentDateTime();
                    locrecEntry.Insert(true);
                    Message('Tak for deltagelsen!\Du er registreret som:\%1\%2\%3', "TTTHURRA Name", "TTTHURRA CompanyName", "TTTHURRA Email");
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        CurrPage.LookupMode(false);
        CurrPage.Editable(true);
    end;

    trigger OnClosePage()
    var
        locrecEntry: Record "TTTHURRA HurraEntry";
    begin
        if "TTTHURRA Name" = '' then
            exit;
        locrecEntry.SetRange("TTTHURRA Name", "TTTHURRA Name");
        locrecEntry.SetRange("TTTHURRA CompanyName", "TTTHURRA CompanyName");
        locrecEntry.SetRange("TTTHURRA Email", "TTTHURRA Email");
        if locrecEntry.IsEmpty() then
            Message('Du har vist glemt at trykke på GEM i menuen - prøv igen!');
    end;
}