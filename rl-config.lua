--[[

By 

 __                                __              
/\ \                        __    /\ \__           
\ \ \       __  __   _ __  /\_\   \ \ ,_\    ___   
 \ \ \  __ /\ \/\ \ /\`'__\\/\ \   \ \ \/   / __`\ 
  \ \ \L\ \\ \ \_\ \\ \ \/  \ \ \   \ \ \_ /\ \L\ \
   \ \____/ \ \____/ \ \_\   \ \_\   \ \__\\ \____/
    \/___/   \/___/   \/_/    \/_/    \/__/ \/___/ 
                                                   
                   




Rank Life Script




]]

--[[
Stellen sie bei rank_life_enabled true oder false ein.
True = Aktivert das Script auf dem Server so dass die Leben gesetzt werden!
False = Deaktiviert das Script auf dem Server so dass die Leben NICHT gesetzt werden!

Default: true
]]
rank_life_enabled = "true"

--[[
Stellen sie die Nachricht ein die Spieler erhalten sobald ihre Leben angepasst wurden!

Default: Ihre HP wurde an ihrem Rang angepasst!
]]
rank_life_config_message = "Ihre HP wurde an ihrem Rang angepasst!"


--[[
Stellen sie die Nachricht ein die ein Spieler erhält wenn das Script deaktiviert ist.
Sie können die Nachricht auch leer lassen.

Default: Rank Life wurde deaktiviert, daher werden ihre HP nicht an ihrem Rang angepasst
]]
rank_life_config_error_message = "Rank Life wurde deaktiviert, daher werden ihre HP nicht an ihrem Rang angepasst"







--[[
Stellen sie hier ihre Ränge rein!

!!! WICHTIG !!!
Achten sie auf das Komma falls der Rank nicht der letzte sein sollte!

]]
ranks = {
		["Dein Rank"] = 222,
		["superadmin"] = 999,
		["user"] = 100,
		["premium"] = 500
}




function GM:PlayerSpawn( ply )
	if rank_life_enabled == "true" or "false" then
		if rank_life_enabled == "true" then
		ply:SetHealth(ranks[ply:GetUserGroup()])
		ply:ChatPrint(rank_life_config_message)
		end
		if rank_life_enabled == "false" then
		ply:ChatPrint(rank_life_config_error_message)
	    end
	else
		ply:ChatPrint("FEHLER IN DER CONFIG: Bitte untersuchen sie den Fehler")
	end
end
