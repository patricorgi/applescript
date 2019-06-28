tell application "Safari"
	set theURL to URL of front document
	if theURL contains "space.bilibili.com" then
		do shell script "echo " & theURL & "|egrep -o '[0-9]{6,9}'"
		set rssURL to "https://api.prprpr.me/bilibili2rss/user/" & result as string
	else if theURL contains "bangumi.bilibili.com" then
		do shell script "echo " & theURL & "|egrep -o '[0-9]{4}'"
		set rssURL to "https://api.prprpr.me/bilibili2rss/bangumi/" & result as string
	else if theURL contains "zhuanlan.zhihu.com" then
		do shell script "echo " & theURL & "|egrep -o '[a-z0-9]+$'"
		set rssURL to "https://rss.lilydjwg.me/zhihuzhuanlan/" & result as string
	else if theURL contains "weibo.com/u/" then
		do shell script "echo " & theURL & "|egrep -o '[0-9]+'"
		set rssURL to "https://api.prprpr.me/weibo/rss/" & result as string
	end if
	set the clipboard to rssURL
end tell
