local Nskin = {}

Nskin.ButtonRedir = {
	Up = "Up",
	Down = "Down",
	Left = "Left",
	Right = "Right"
}

Nskin.Rotate = {
	Up = 0,
	Down = 0,
	Left = 0,
	Right = 0
}

Nskin.ElementRedir = {
	["Tap Explosion Dim"] = "hit note",
	["Tap Explosion Bright"] = "hit note"
}

Nskin.PartsToRotate = {
	["Receptor"] = true,
	["Tap Explosion Bright"] = true,
	["Tap Explosion Dim"] = true,
	["Hold Explosion"] = true,
	["Roll Explosion"] = true,
	["Tap Note"] = true,
	["Tap Fake"] = true,
	["Tap Lift"] = true,
	["Tap Addition"] = true,
	["Hold Head Active"] = true,
	["Hold Head Inactive"] = true,
	["Roll Head Active"] = true,
	["Roll Head Inactive"] = true
}

Nskin.Blank = {
	["Hold Explosion"] = true,
	["Roll Explosion"] = true,
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true
}

function Nskin.Load()
	local sButton = Var "Button"
	local sElement = Var "Element"

	local Button = Nskin.ButtonRedir[sButton] or "Down"

	local Element = Nskin.ElementRedir[sElement] or sElement

	if string.find(Element, "Tap Note") or string.find(Element, "Explosion") or string.find(Element, "Lift") or string.find(Element, "Receptor") then
		Button = Nskin.ButtonRedir[sButton] or "Center"
	end

	if (string.find(Element, "Hold") or string.find(Element, "Roll")) and not string.find(Element, "Explosion") then
		Button = Nskin.ButtonRedir[sButton]
	end

	local t = LoadActor(NOTESKIN:GetPath(Button,Element))

	if Nskin.Blank[sElement] then
		t = Def.Actor {}
		if Var "SpriteOnly" then
			t = LoadActor(NOTESKIN:GetPath("","_blank"))
		end
	end
	
	if Nskin.PartsToRotate[sElement] then
		t.BaseRotationZ = Nskin.Rotate[sButton] or nil
	end
	
	return t
end

return Nskin