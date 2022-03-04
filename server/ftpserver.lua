print("FTP Server v1.0")

local modem = peripheral.find("modem") or error("No modem attached", 0)
local port = 21
modem.open(port)

while true do
	id, message = rednet.receive()
	if message == "ping" then
		rednet.send(id, "pong")
	end
end