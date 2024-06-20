return Def.ActorFrame {
	InitCommand = function(self)
		self:heartbeat():effectclock("beat"):effectmagnitude(0.6, 1, 0)
	end,
	Def.Sprite{
		Texture="left lift"
	}
}