return Def.ActorFrame {
	Def.Quad {
		InitCommand = function(self)
			self:diffuse(color("1,1,1,0")):SetHeight(512):SetWidth(64):fadebottom(0.5):fadetop(0.5)
		end,
		PressCommand = function(self)
			self:finishtweening():diffusealpha(0.33):diffusetopedge(color("1,1,1,0.05")):decelerate(0.5):diffusealpha(0)
		end
	},
	Def.Sprite {
		Texture = NOTESKIN:GetPath("up play receptor", ""),
		Frame0000 = 0,
		Delay0000 = 0.95,
		InitCommand = NOTESKIN:GetMetricA("ReceptorArrow", "InitCommand"),
		PressCommand = NOTESKIN:GetMetricA("ReceptorArrow", "PressCommand"),
		NoneCommand = NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand")
	},
	Def.Sprite {
		Texture = NOTESKIN:GetPath("up play receptor", ""),
		Frame0000 = 0,
		Delay0000 = 0.95,
		InitCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "InitCommand"),
		PressCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "PressCommand"),
		LiftCommand = NOTESKIN:GetMetricA("ReceptorOverlay", "LiftCommand"),
		NoneCommand = NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand")
	}
}