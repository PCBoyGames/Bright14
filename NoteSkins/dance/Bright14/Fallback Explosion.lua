return Def.ActorFrame {
	NOTESKIN:LoadActor(Var "Button", "hit note") .. {
		HoldingOnCommand = NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOnCommand"),
		HoldingOffCommand = NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOffCommand"),
		InitCommand = function(self)
			self:playcommand("HoldingOff"):finishtweening()
		end
	},
	NOTESKIN:LoadActor(Var "Button", "hit note") .. {
		RollOnCommand = NOTESKIN:GetMetricA("HoldGhostArrow", "RollOnCommand"),
		RollOffCommand = NOTESKIN:GetMetricA("HoldGhostArrow", "RollOffCommand"),
		InitCommand = function(self)
			self:playcommand("RollOff"):finishtweening()
		end
	},
	NOTESKIN:LoadActor(Var "Button", "hit note") .. {
		InitCommand = function(self)
			self:diffusealpha(0)
		end,
		W5Command = NOTESKIN:GetMetricA("GhostArrowDim", "W5Command"),
		W4Command = NOTESKIN:GetMetricA("GhostArrowDim", "W4Command"),
		W3Command = NOTESKIN:GetMetricA("GhostArrowDim", "W3Command"),
		W2Command = NOTESKIN:GetMetricA("GhostArrowDim", "W2Command"),
		W1Command = NOTESKIN:GetMetricA("GhostArrowDim", "W1Command"),
		HeldCommand = NOTESKIN:GetMetricA("GhostArrowDim", "HeldCommand"),
		MissCommand = NOTESKIN:GetMetricA("GhostArrowDim", "MissCommand"),
		LetGoCommand = NOTESKIN:GetMetricA("GhostArrowDim", "LetGoCommand"),
		JudgmentCommand = function(self)
			self:finishtweening()
		end,
		BrightCommand = function(self)
			self:visible(false)
		end,
		DimCommand = function(self)
			self:visible(true)
		end
	},
	NOTESKIN:LoadActor(Var "Button", "hit note") .. {
		InitCommand = function(self)
			self:diffusealpha(0)
		end,
		W5Command = NOTESKIN:GetMetricA("GhostArrowBright", "W5Command"),
		W4Command = NOTESKIN:GetMetricA("GhostArrowBright", "W4Command"),
		W3Command = NOTESKIN:GetMetricA("GhostArrowBright", "W3Command"),
		W2Command = NOTESKIN:GetMetricA("GhostArrowBright", "W2Command"),
		W1Command = NOTESKIN:GetMetricA("GhostArrowBright", "W1Command"),
		HeldCommand = NOTESKIN:GetMetricA("GhostArrowBright", "HeldCommand"),
		MissCommand = NOTESKIN:GetMetricA("GhostArrowBright", "MissCommand"),
		LetGoCommand = NOTESKIN:GetMetricA("GhostArrowBright", "LetGoCommand"),
		JudgmentCommand = function(self)
			self:finishtweening()
		end,
		BrightCommand = function(self)
			self:visible(true)
		end,
		DimCommand = function(self)
			self:visible(false)
		end
	},
	NOTESKIN:LoadActor(Var "Button", "hitmine") .. {
		InitCommand = function(self)
			self:diffusealpha(0)
		end,
		HitMineCommand = NOTESKIN:GetMetricA("GhostArrowBright", "HitMineCommand")
	}
}

