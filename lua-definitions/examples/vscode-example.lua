-- Editor demonstration; run only inside MacroHandler after reviewing actions.
-- Do not require/dofile the IDE definitions.
local point = Point(100, 200)
if point then
    print(point:getX(), point:getY())
end
local region = Region(0, 0, 300, 200)
local scan = FindParam.timeout(1500):mScore(0.9)
local image = Asset.image("example-icon"):build()
local result = region:find(image, scan)
if result then
    print(result:getX(), result:getY(), result:getScore())
    -- click(result) -- optional device action; disabled in this example.
end
local parsed = JSON.parse('{"enabled":true}')
print(parsed)
local checks = Api.check({"Region.find", "Point"})
print(checks.ok)
local form = {
    title = "Example settings",
    fields = {{type = "checkbox", key = "enabled", value = true, label = "Enabled"}},
}
local valid, message = Form.validate(form)
print(valid, message)
---@type MacroHandler.ImageMode
local imageMode = "balanced_image"
print(imageMode)
wait(100) -- milliseconds
sleep(0.1) -- seconds
