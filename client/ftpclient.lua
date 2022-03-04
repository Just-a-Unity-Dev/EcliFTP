-- This is where the fun begins!
local function clear()
	shell.run("clear")
end
clear()

local modem = peripheral.find("modem") or error("No modem attached", 0)
local port = 21
modem.open(port)

print("FTP Client v1.0")
print("\nWelcome to EcliFTP!\nType in the ID of the server you want to connect to.\n\n")
write("Server ID: ")
server = read()
rednet.send(server, "ping")

local id,message = rednet.receive(nil, 5)
clear()

if not id then
	error("Server timeout, have you turned on the server?")
else
	print("Connected to server %d":format(id))
end
clear()