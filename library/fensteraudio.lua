---@meta
--[[

Type definitions for lua-fenster-audio
https://github.com/jonasgeiler/lua-fenster-audio
https://luarocks.org/modules/jonasgeiler/fensteraudio

--]]

---@class audiodevice*
local audiodevice = {}

function audiodevice:close() end

---@return integer
---@nodiscard
function audiodevice:available() end

---@param samples number[]
---@param samplesend integer?
function audiodevice:write(samples, samplesend) end

---@param key string
---@return any
---@nodiscard
function audiodevice:__index(key) end

function audiodevice:__gc() end

---@version >5.4
function audiodevice:__close() end

---@return string
---@nodiscard
function audiodevice:__tostring() end

---@class fensteraudio
---@field samplerate integer
---@field buffersize integer
local fensteraudio = {}

---@return audiodevice*
---@nodiscard
function fensteraudio.open() end

---@param audiodevice audiodevice*
function fensteraudio.close(audiodevice) end

---@param audiodevice audiodevice*
---@return integer
---@nodiscard
function fensteraudio.available(audiodevice) end

---@param audiodevice audiodevice*
---@param samples number[]
---@param samplesend integer?
function fensteraudio.write(audiodevice, samples, samplesend) end

return fensteraudio
