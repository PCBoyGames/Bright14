return Def.ActorFrame {
	Def.Sprite {
		Texture = NOTESKIN:GetPath("right play receptor", ""),
		Frame0000 = 0,
		Delay0000 = 0.95,
		InitCommand = NOTESKIN:GetMetricA("ReceptorArrow", "InitCommand"),
		PressCommand = NOTESKIN:GetMetricA("ReceptorArrow", "PressCommand"),
		NoneCommand = NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand")
	},
	Def.Sprite {
		Texture = NOTESKIN:GetPath("right play receptor", ""),
		Frame0000 = 0,
		Delay0000 = 0.95,
		InitCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "InitCommand"),
		PressCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "PressCommand"),
		LiftCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "LiftCommand"),
		NoneCommand = NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand")
	}
}