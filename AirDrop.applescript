tell application "System Events"
	tell process "Finder"
		set myBtn to (first button whose description is "����") of toolbar 1 of window 1
		if enabled of myBtn is true then
			ignoring application responses
				click myBtn
			end ignoring
		else
			display notification "û���ļ���ѡ��" with title "Macro ����ʧ��"
		end if
	end tell
end tell

delay 0.1
do shell script "killall System\\ Events"

tell application "System Events"
	tell process "Finder"
		click menu item "����Ͷ��" of menu 1 of myBtn
	end tell
end tell
