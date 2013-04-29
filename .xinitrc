
setxkbmap fr bepo &

case $1 in
gnome|gnome-session)
	exec gnome-session 
	;;
dwm|*)
	exec dwm 2> ~/.log/dwm.log & wmpid=$!
		
	# slock &
	urxvtd &
	emacs --daemon &
	autorandr &

	wait $wmpid

	while true
    	do
        	dwm 2> ~/.log/dwm.log
    	done
	;;
esac



