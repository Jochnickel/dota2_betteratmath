if CAddonTemplateGameMode == nil then
	CAddonTemplateGameMode = class({})
end

function Activate()

	GameRules:GetGameModeEntity():SetUseDefaultDOTARuneSpawnLogic(true)
	GameRules:GetGameModeEntity():SetTowerBackdoorProtectionEnabled(true)
  
	GameRules.AddonTemplate = CAddonTemplateGameMode()
	GameRules.AddonTemplate:InitGameMode()
	
end


function CAddonTemplateGameMode:InitGameMode()
	if IsInToolsMode() then
		GameRules:SetCustomGameSetupAutoLaunchDelay(3)
		GameRules:SetStrategyTime(0)
		GameRules:SetShowcaseTime(0)
		GameRules:GetGameModeEntity():SetCustomGameForceHero("npc_dota_hero_furion")
		GameRules:SetStartingGold(9251)
	end
	
