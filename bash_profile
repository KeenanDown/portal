alias welcome="say Hello $USER. I hope you are well. Lets get to work. shall we?"
#welcome is for the sake of nicety.

export PORTAL_SPEAK=on

mishima() {
	open https://www.youtube.com/watch?v=fjU43K0j6no
}

furloid() {
	open https://www.youtube.com/watch?v=Q8HKdqTutv4&list=PLD9aaSKTP1UgOJPDlSjj1-8t-tcte_Qy2
}

portalspeak() {
	if [ "$1" == "on" ]
	then
		export PORTAL_SPEAK=on
		echo Portal speak is now on.
		say Portal speak is now on.
	fi
	if [ "$1" == "off" ]
	then
		export PORTAL_SPEAK=off
        	echo Portal speak is now off.
	fi
}

openportal() {
	cd $USER/Documents/.portal
	clear
}

#takes the users to the portal directory

portal() {
	clear
	openportal
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say You are now editing the $1 portal.
	fi
	nano $1
	ls
}

portal.w() {
	clear
	openportal
	echo $1.>>$2
	ls
	cat -n $2
	if [ "$PORTAL_SPEAK" == "on" ]
        then
                say Writing a new task: $1, into the $2 portal.
        fi
}

portal.d() {
	clear
	openportal
	sed -i.r $1d $2
	rm $2.r
	cat -n $2
	if [ "$PORTAL_SPEAK" == "on" ]
        then
                say Deleting item $1 from the $2 portal.
        fi
	ls
}

portal.s() {
	clear
	openportal
	cat -n $1
	if [ "$PORTAL_SPEAK" == "on" ]
        then
                say In the $1 portal, you have the following items.
        	say -f $1
        fi
	ls
}

portal.r() {
	clear
	openportal
        cat -n $1
	if [ "$PORTAL_SPEAK" == "on" ]
	then
        	say In the $1 portal, you have the following items.
	fi
	ls
}

bashprofile() {
	cd $HOME
	nano .bash_profile
	source .bash_profile
}

portal.clear() {
	openportal
	touch =-=-=-=-
	mv =-=-=-=- $1
	echo Removing all items from the $1 portal.
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Removing all items from the $1 portal.
	fi
	ls
}

portals() {
	openportal
	ls
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Here are all of the current portals.
	fi
}

new.day() {
	openportal
	cp Daily Today
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Today is a new day.
	fi
}

new.tomorrow() {
        openportal
        cp Daily Tomorrow
        if [ "$PORTAL_SPEAK" == "on" ]
        then
                say Tomorrow is a new day.
        fi
}

tomorrowtoday() {
	openportal
	cp Tomorrow Today
	if [ "$PORTAL_SPEAK" == "on" ]
        then
                say Tomorrow is now today.
        fi
}

new.week() {
	openportal
	cp Weekly Week
	cp Daily Today
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Today is a new day, and the start of a new week.
	fi
}

new.month() {
	openportal
	cp Daily Today
	cp Monthly Month
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Today is a new day, and another month has passed.
	fi
	}

new.year() {
	openportal
	cp Daily Today
	cp Monthly Month
	cp Yearly Year
	if [ "$PORTAL_SPEAK" == "on" ]
	then
		say Today is a new day, tomorrow is the start of the future. Another month has passed, and a new academic year begins, full of all sorts of wonderful adventures. All the best, Keenan.
	fi
}

portal.complete() {
	echo Congratulations, $USER. You completed the $1 portal! Have a nice rest, and get ready to start again soon.
	say Congratulations $USER. You completed the $1 portal! Have a nice rest, and get ready to start again soon.
}

portal.all() {
	openportal
	echo You have the following items scheduled for today:
	cat -n Today
	say You have the following items scheduled for today:
	say -f Today
	echo And this week, you have these items:
	cat -n Week
	say And this week, you have these items:
	say -f Week
	echo In the whole of this month, you have the following items:
	cat -n Month
	say In the whole of this month, you have the following items:
	say -f Month
	echo And your long term goals for this academic year are:
	cat -n Year
	say And your long term goals for this academic year, are:
	say -f Year
}
