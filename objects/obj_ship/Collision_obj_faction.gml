if (faction == other.faction) exit;
else if (invincible) {
	with (other) {
		event_perform(ev_other, ev_user1);
	}
}

event_perform(ev_other, ev_user1);