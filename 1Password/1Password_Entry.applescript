set myKeyword to "Weibo"

tell application "System Events"
	tell process "1Password 7"
		open location "onepassword://extension/search/" & myKeyword
		repeat with idx from 1 to 200
			delay 0.1
			if (subrole of text field 1 of window "1Password mini") is "AXSearchField" then
				exit repeat
			end if
			if idx is 200 then
				display notification "Repeat ends with nothing happened." with title "Exit Repeat"
				return
			end if
		end repeat
	end tell
end tell
