print("EcliFTP ^-^ /\n\n1. Install\n2. Uninstall\n3. Cancel")
write("Option: ")
local input0 = read()
local input = input0.sub(1, 1)

if input == "1" then
	print("Choose type to install:\n\n1. FTP Client\n2. Server FTP\n3. Cancel")
	write("Option: ")
	input2 = read()
	if input2 == "1" then
		print("Installing FTP Client...")
		shell.run("wget ")
		print("Done!")
	elseif input2 == "2" then
		print("Installing Server FTP...")
		print("Done!")
	else
		print("Unknown command, quitting program")
	end
elseif input == "2" then

elseif input == "3" then
	print("Quitting installer, thank you for using EcliFTP!")
else
	print("Unknown command, quitting program")
end
print(input)
print("^-^ /")