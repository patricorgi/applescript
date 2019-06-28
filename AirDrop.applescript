tell application "System Events"
	tell process "Finder"
		set myBtn to (first button whose description is "共享") of toolbar 1 of window 1
		if enabled of myBtn is true then
			ignoring application responses
				click myBtn
			end ignoring
		else
			display notification "没有文件被选中" with title "Macro 运行失败"
		end if
	end tell
end tell

delay 0.1
do shell script "killall System\\ Events"

tell application "System Events"
	tell process "Finder"
		click menu item "隔空投送" of menu 1 of myBtn
	end tell
end tell
