-- This code liberally copied from what-is-it-used-for 1.1.5 and advanced logistics system
-- GPL v3 Brian Ballsun-Stanton

--require("os")
function add_top_buttons(player)

	local flow = player.gui.top.terminal_flow
	if not flow then
		flow = player.gui.top.add{type = "flow", name = "terminal_flow"}
	end
	if not flow["terminal-button"] then

		flow.add({type = "button", name = "terminal-button", style="terminal_button_main_icon", tooltip = "Click to open the math textarea."})
	end

end


function toggleBox(player)
	local flow = player.gui.top.terminal_flow
	
	if not flow["terminal_text_field"] then
		flow.add({type = "textfield", name = "terminal_text_field", style = "terminal_text_field_style", tooltip="Enter an expression '1+(2/1);' terminated by a semicolon (to replace) or = (to close).", text=""})
		flow.add({type = "button", caption=";", name = "terminal_semicolon_button", style = "terminal_button_style", tooltip = "Click instead of typing ; to cause the expression to be evaluated and replaced. "})			
		flow.add({type = "button", caption="=", name = "terminal_equals_button", style = "terminal_button_style", tooltip = "Click instead of typing = to cause the expression to be evaluated and close the box. "})			
	else

		flow.terminal_text_field.destroy()
		flow.terminal_equals_button.destroy()
		flow.terminal_semicolon_button.destroy()
	end
end


function matheval(flow, player)
	if flow["terminal_text_field"] then
		if flow.terminal_text_field.text ~= "" then
			expression = "return "..flow.terminal_text_field.text:gsub(";", ""):gsub("=", "")
			
			local f = ploadstring(expression)
			
			player.print(flow.terminal_text_field.text:gsub(";", ""):gsub("=", "").." = "..f)
			if f:sub(1,5) ~= "error" then
				flow.terminal_text_field.text = f
			else
				flow.terminal_text_field.text = ""
			end
		end
	end
end			


function ploadstring(expression)
	error, result = pcall(loadstring(expression))
	
	--local player = game.players[1]
	--player.print(expression)
	--player.print(error)	
	if error then 
		return result
	else		
		return "error: "..result
	end

	
	
end

script.on_event(defines.events.on_player_created, function(event)
	add_top_buttons(game.players[event.player_index])
end)

script.on_event("open_terminal", function(event)
	local player = game.players[event.player_index]
	toggleBox(player)
end)



script.on_event(defines.events.on_gui_click, function(event)
	local player = game.players[event.player_index]
	--player.print(event.element.name)
	if event.element.name == "terminal-button" then	
		toggleBox(player)

	elseif event.element.name == "terminal_equals_button" then
		local flow = player.gui.top.terminal_flow

		matheval(flow, player)
		toggleBox(player)
	elseif event.element.name == "terminal_semicolon_button" then
		local flow = player.gui.top.terminal_flow

		matheval(flow, player)
		
	end

end)

script.on_event(defines.events.on_gui_text_changed, function(event)
	local player = game.players[event.player_index]

	if event.element.name == "terminal_text_field" then
		local flow = player.gui.top.terminal_flow
		
		if flow.terminal_text_field.text:sub(-1,-1)== ";" then
			matheval(flow, player)
		elseif flow.terminal_text_field.text:sub(-1,-1)== "=" then
			matheval(flow, player)
			toggleBox(player)
		end

	end

end)