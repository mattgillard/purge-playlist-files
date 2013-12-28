purge-playlist-files
====================

Applescript for purging files out of a smart playlist in iTunes

"Purge playlist files" for iTunes
based on "Delete Tracks Never Played"
written by Doug Adams
dougadams@mac.com (http://dougscripts.com/itunes/scripts/ss.php?sp=deleteneverplayed)

Instructions for use:

1. Put script into iTunes Scripts folder: ~/Library/iTunes/Scripts
2. Set theP to the playlist you want to delete files from, in my case its a smart playlist whose files are greater than 5 days old
3. Update time in the plist you want it to run out of launchd (if mac is asleep it will run when it is next woken up)
4. Configure into launchd.  eg:
	<pre><code>$ cp biz.gillard.itunes-purge-playlist-files.plist ~/Library/LaunchAgents
	$ launchctl load ~/Library/LaunchAgents/biz.gillard.itunes-purge-playlist-files.plist</code></pre>
