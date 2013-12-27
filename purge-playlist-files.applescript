(*
"Purge playlist files" for iTunes
based on "Delete Tracks Never Played"
written by Doug Adams
dougadams@mac.com (http://dougscripts.com/itunes/scripts/ss.php?sp=deleteneverplayed)

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.malcolmadams.com/itunes/

Instructions for use:
		1) Put script into iTunes Scripts folder: ~/Library/iTunes/Scripts
		2) Set theP to the playlist you want to delete files from, in my case its a smart playlist whose files are greater than 5 days old
		3) Designed to be run out of cron.  eg: 
			$ crontab -l
			30 3 * * * osascript ~/Library/iTunes/Scripts/purge-playlist-files.scpt
*)

on log_event(themessage)
	(* log_event function from http://hints.macworld.com/article.php?story=2004121710493371 *)
	set theLine to (do shell script Â
		"date  +'%Y-%m-%d %H:%M:%S'" as string) Â
		& " " & themessage
	do shell script "echo " & theLine & Â
		" >> ~/Library/Logs/purge-playlist-files.log"
end log_event

tell application "iTunes"
	try
		set theP to "TV Shows older than 5 days"
	on error
		display dialog "No playlist is selected." buttons {"Cancel"} default button 1 with icon 2
	end try
	
	(*display dialog "Caution!" & return & return & "This script will remove every video from the playlist '" & theP & "'. Each associated file will also be Trashed." buttons {"Cancel", "Procede..."} default button 1 with icon 2*)
	
	-- procede...
	with timeout of 3000 seconds
		set these_tracks to (every track of user playlist theP)
		repeat with aTrack in these_tracks
			try -- will skip a track if any errors occur
				set loc to quoted form of POSIX path of ((aTrack's location) as string)
				set dbid to aTrack's database ID
				set the_command to "rm " & loc
				my log_event("cmd is " & the_command)
				my log_event("delete track with DB ID of " & dbid)
				delete (some track of library playlist 1 whose database ID is dbid)
				do shell script the_command
			end try
		end repeat
	end timeout
end tell