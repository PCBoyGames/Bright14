return Def.ActorFrame {
	Def.Sprite {
		Texture = NOTESKIN:GetPath("_down", ""),
		Frame0000 = 0,
		Delay0000 = 1,
		InitCommand = function(self)
			self:diffusealpha(0.125)
		end
	}
}
