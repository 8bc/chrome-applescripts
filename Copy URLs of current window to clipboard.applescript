set theURLs to {}

tell application "Google Chrome"
	tell window 1
		set i to 1
		repeat until i > (count of tabs)
			set end of theURLs to URL of tab i
			set i to i + 1
		end repeat
	end tell
end tell

-- Copy the URLs to the clipboard, one per line.
set oldDelims to AppleScript's text item delimiters
set AppleScript's text item delimiters to (ASCII character 10)
set the clipboard to theURLs as text
set AppleScript's text item delimiters to oldDelims

