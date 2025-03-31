hook.Add( "EntityTakeDamage", "ZIP_NO_FALL_DAMAGE", function( ply, dmgtype )
	if ( ply:IsPlayer() and dmgtype:IsFallDamage() ) then
		dmgtype:SetDamage(0)
	end
end )

hook.Add( "OnPlayerHitGround", "ZIP_NO_FALL_DAMAGE_SOUND", function()
	return true
end)