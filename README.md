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
3. Designed to be run out of cron.  eg:
	<pre><code>$ crontab -l
	30 3 * * * osascript ~/Library/iTunes/Scripts/purge-playlist-files.applescript</code></pre>
