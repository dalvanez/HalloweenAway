/// @description Wait to appear
/*I don't intend for title cards to really queue up (if you want that then you can literally copy/paste the
dialogue manager and just copy some scripts over and change them to account for titlecards instead of dialogs)
so I'm having this alarm to be in the case that two title cards have appeared on separate frames, so the later
one will wait its turn.*/

if instance_number(obj_titlecard)<2 {
	alarm[0] = 2;
} else {
	if (wait_count < 10) wait_count++;
	else				 instance_destroy();
	alarm[1] = 60;	//Wait about another second before checking again.
}

//This does mean that if you spam titlecards, some may get lost in this alarm and then destroy themselves.