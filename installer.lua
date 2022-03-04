print("EcliFTP ^-^ /\n\n1. Install\n2. Uninstall\n3. Cancel")
write("Option: ")
local input0 = read()
local input = input0.sub(1, 1)

local client = "https://raw.githubusercontent.com/Just-a-Unity-Dev/EcliFTP/master/client/ftpclient.lua"
local server = "https://raw.githubusercontent.com/Just-a-Unity-Dev/EcliFTP/master/server/ftpserver.lua"

local function clear()
	shell.run("clear")
end

clear()
if input == "1" then
	clear()
	print("Choose type to install:\n\n1. FTP Client\n2. Server FTP\n3. Cancel")
	write("Option: ")
	input2 = read()
	clear()
	if input2 == "1" then
		print("Installing FTP Client...")
		shell.run("wget ".. client .." ftpclient")
		clear()
		print("Installed as ftpclient")
		print("Done!")
	elseif input2 == "2" then
		print("Installing Server FTP...")
		shell.run("wget ".. server .." ftpclient")
		clear()
		print("Installed as ftpserver")
		print("Done!")
	else
		print("Unknown command, quitting program")
	end
elseif input == "2" then
	clear()

elseif input == "3" then
	print("Quitting installer, thank you for using EcliFTP!")
else
	print("Unknown command, quitting program")
end
print(input)
print("\nBye! ^-^ /")
sleep(1)
clear()