-- This code liberally copied from what-is-it-used-for 1.1.5


script.on_event(defines.events.on_player_created, function(event)
	add_top_button(game.players[event.player_index])
end)


function add_top_button(player)
	local flow = player.gui.top.wiiuf_flow
	if not flow then
		flow = player.gui.top.add{type = "flow", name = "wiiuf_flow"}
	end
	
	if flow["sql_flow"] then flow["sql_flow"].destroy() end

	local sql_flow = flow.add{type = "flow", name = "sql_flow", direction = "horizontal", style = "search_flow_style"}
	sql_flow.add{type = "flow", name = "sql_bar_placeholder", direction = "vertical"}
	sql_flow.add{type = "sprite-button", name = "sql-icon", sprite = "sql-icon", style = "search_button_style", tooltip = {"top_button_tooltip"}}

end