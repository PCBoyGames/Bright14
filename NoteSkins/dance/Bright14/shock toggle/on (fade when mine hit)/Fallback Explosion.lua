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
		HitMineCommand = NOTESKIN:GetMetricA("GhostArrowBright", "HitMineCommand"),
		JudgmentMessageCommand = function(self,params)
			if not params.Player then return end
			if params.TapNoteScore == "TapNoteScore_HitMine" then
				GAMESTATE:GetPlayerState(params.Player):GetPlayerOptions('ModsLevel_Song'):Stealth(1,999)
				self:playcommand("ResolveMines",params)
			end
		end,
		ResolveMinesCommand = function(self,params)
			self:sleep(0.01)
			if params.Player == "PlayerNumber_P1" then self:queuecommand("StealthP1")
			elseif params.Player == "PlayerNumber_P2" then self:queuecommand("StealthP2")
			else SCREENMAN:SystemMessage("ERROR: [SHOCK MINES] Player not found for queue.") end
		end,
		StealthP1Command = function(self)
			GAMESTATE:GetPlayerState(0):GetPlayerOptions('ModsLevel_Song'):Stealth(0,1.75)
		end,
		StealthP2Command = function(self)
			GAMESTATE:GetPlayerState(1):GetPlayerOptions('ModsLevel_Song'):Stealth(0,1.75)
		end
	}
}

