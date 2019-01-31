local GexXPosition;
local GexYPosition;
local GexZPosition;

local GexXOffset = 0x0A6750
local GexYOffset = 0x0A6752
local GexZOffset = 0x0A6754

local GuiX = 0
local GuiY = 36

local JoyPad;
local JoyPadUp;
local JoyPadDown;
local JoyPadLeft;
local JoyPadRight;

while true do
	GexXPosition = mainmemory.read_s16_be(GexXOffset)
	GexYPosition = mainmemory.read_s16_be(GexYOffset)
    GexZPosition = mainmemory.read_s16_be(GexZOffset)

    gui.text(GuiX, GuiY   , 'Gex X: ' .. GexXPosition)
	gui.text(GuiX, GuiY+16, 'Gex Y: ' .. GexYPosition)
    gui.text(GuiX, GuiY+32, 'Gex Z: ' .. GexZPosition)
    
    JoyPad = joypad.getimmediate()

    JoyPadUp    = JoyPad["P1 A Up"]
    JoyPadDown  = JoyPad["P1 A Down"]
    JoyPadLeft  = JoyPad["P1 A Left"]
    JoyPadRight = JoyPad["P1 A Right"]
    
    emu.frameadvance();
end