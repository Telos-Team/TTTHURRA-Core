page 50002 "TTTHURRA Actions"
{
    PageType = Card;

    layout
    {
        area(Content)
        {
            group("TTTHURRA GroupName")
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("TTTHURRA RemoveModify")
            {
                ApplicationArea = All;
                Image = Action;

                trigger OnAction()
                var
                    r: Record Permission;
                begin
                    r.Get('D365 TEAM MEMBER', 0, 2000000073);
                    r."Modify Permission" := 0;
                    r.Modify(false);
                end;
            }
        }
    }

    var
        myInt: Integer;
}