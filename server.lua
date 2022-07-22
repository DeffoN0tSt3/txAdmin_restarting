-- Add the following to a server file, edit as desired.
-- Dependency InteractSounds https://forum.cfx.re/t/release-play-custom-sounds-for-interactions/8282
--

--15Min message
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData) 
    if eventData.secondsRemaining == 900 then -- First restart messages will start on the "Server restarting in 15 mins"
       	--	Citizen.CreateThread(function()
            Citizen.Wait(5000) --  citizen.wait will pause for X MS before spitting next message
				TriggerClientEvent('chat:addMessage', -1, { -- Creates first message after tx alert
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️Los Santos Gov Emergency Weather Broadcast:⚠️</div>',
				})
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM HAS BEEN SPOTTED APPROACHING THE CITY⚠️⚠️</div>',
				})
				TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'cctv', '0.4') -- Plays temporary warning sounds
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1PREPARE TO TAKE SHELTER⚠️⚠️</div>',
				})
			Citizen.Wait(15000)
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM HAS BEEN SPOTTED APPROACHING THE CITY⚠️⚠️</div>',
			})
			TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'cctv', '0.4') 
			TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1PREPARE TO TAKE SHELTER⚠️⚠️</div>',
			}) 
		end
end)

--5Min message
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    		if eventData.secondsRemaining == 300 then
			--Citizen.CreateThread(function()
			local source = GetPlayers() 
		Citizen.Wait(5000)
		    -- TriggerClientEvent("st3rp:restarting:sTorm") --starts storm function with blackouts
          Citizen.Wait(1000)
					TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM IS APPROACHING⚠️⚠️TAKE SHELTER NOW!⚠️⚠️</div>',
				})
				TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'cctv', '0.4')
				Citizen.Wait(3000)
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM IS APPROACHING⚠️⚠️TAKE SHELTER NOW!⚠️⚠️</div>',
				})
				Citizen.Wait(3000)
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM IS APPROACHING⚠️⚠️TAKE SHELTER NOW!⚠️⚠️</div>',
				})
				TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'evac', '0.4') -- Plays periodic warning sounds
			  Citizen.Wait(3000)
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1A STORM IS APPROACHING⚠️⚠️TAKE SHELTER NOW!⚠️⚠️</div>',
				})
		end
end)

--1Min message
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
            Citizen.Wait(1000)
			TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'cctv', '0.4')
			Citizen.Wait(2500)
					TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><b>^4RP:</b>⚠️⚠️^1THE STORM HAS HIT LAND⚠️⚠️</div>',
				})
				TriggerClientEvent('InteractSound_CL:PlayOnOne', '-1', 'evac', '0.4') -- Plays periodic warning sounds
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1EVACUATE THE CITY NOW⚠️⚠️</div>',
				})
				Citizen.Wait(3000)
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1THE STORM HAS HIT LAND⚠️⚠️</div>',
				})
				TriggerClientEvent('chat:addMessage', -1, {
						template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1EVACUATE THE CITY NOW⚠️⚠️</div>',
				})
			Citizen.Wait(3000)
			Citizen.Wait(3000)
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1THE STORM HAS HIT LAND⚠️⚠️</div>',
			})
		
			TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message-server"><strong>^4RP:</strong>⚠️⚠️^1EVACUATE THE CITY NOW⚠️⚠️</div>',
			})
		end
end)
