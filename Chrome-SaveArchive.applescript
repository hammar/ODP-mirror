
tell application "Google Chrome"
	set window_list to every window # get the windows
	
	repeat with the_window in window_list # for every window
		set tab_list to every tab in the_window # get the tabs
		
		repeat with the_tab in tab_list # for every tab
			set the_url to the URL of the_tab
			set url_array to my theSplit(the_url, "/")
			set last_url_component to get item (the count of items of the url_array) of the url_array
			set the last_url_component to my replace_chars(last_url_component, ":", "-")
			set target_path to "/Users/karl/Downloads/" & last_url_component & ".html"
			save the_tab in target_path #as "complete html"
		end repeat
	end repeat
end tell

on theSplit(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result
	return theArray
end theSplit

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars