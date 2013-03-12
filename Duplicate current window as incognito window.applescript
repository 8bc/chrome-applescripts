tell application "Google Chrome"
	set tabUrls to {}
	set theTabs to every tab of window 1
	repeat with theTab in theTabs
		copy URL of theTab to the end of tabUrls
	end repeat
	
	set incogWin to make new window with properties {mode:"incognito"}
	tell incogWin
		repeat with tabUrl in tabUrls
			make new tab at end of tabs with properties {URL:tabUrl}
		end repeat
		-- todo: Better way to sort out the extra blank tab?
		delete tab 1
	end tell
end tell