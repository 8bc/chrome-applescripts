tell application "Google Chrome"
	tell window 1
		set theURL to URL of active tab
		make new tab with properties {URL:theURL}
	end tell
end tell
