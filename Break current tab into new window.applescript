tell application "Google Chrome"
	set theURL to URL of active tab of window 1
	close active tab of window 1
	set newWin to make new window
	set newTab to active tab of window 1
	tell newTab
		set URL to theURL
	end tell
end tell