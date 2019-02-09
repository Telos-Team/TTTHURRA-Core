pageextension 50003 "TTTHURRA RoleCenter" extends "Team Member Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(Creation)
        {
            action("TTTHURRA NewEntry")
            {
                Caption = 'Hurra';
                ApplicationArea = All;
                Image = Action;
                RunObject = Page "TTTHURRA Entry";
                RunPageMode = Create;
            }
        }
    }
}