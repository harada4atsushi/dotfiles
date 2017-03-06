-- 開いているwindowのアプリケーション名をログ出力して調べるためのコード
--[[ local log = hs.logger.new('debug', 'debug')
local filter = hs.window.filter.new(true)
filter:subscribe(
  hs.window.filter.windowCreated,
  (function(window, applicationName)
    log.wf('got a callback from %s', applicationName)
  end),
  true
)
]]

local function keyCode(key, modifiers)
   modifiers = modifiers or {}
   return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()      
   end
end

local function remapKey(modifiers, key, keyCode)
   hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

local function enableHotkeys(keySets)
   for k, v in pairs(keySets) do
      v:enable()
   end
end

local function disableHotkeys(keySets)
   for k, v in pairs(keySets) do
      v:disable()
   end
end

-- カーソル操作
remapKey({'ctrl'}, 'f', keyCode('right'))
remapKey({'ctrl'}, 'b', keyCode('left'))
remapKey({'ctrl'}, 'n', keyCode('down'))
remapKey({'ctrl'}, 'p', keyCode('up'))

-- excelのみ有効なキー設定
local excel = {
  hs.hotkey.new({}, 'f2', keyCode('u', 'ctrl'))
}
hs.window.filter.new('Microsoft Excel')
  :subscribe(hs.window.filter.windowFocused, function() enableHotkeys(excel) end)
  :subscribe(hs.window.filter.windowUnfocused, function() disableHotkeys(excel) end)