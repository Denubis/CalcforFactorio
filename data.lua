data:extend(
{
    --{
    --    type="sprite",
    --    name="Calculator_menu_sprite",
    --    filename = "__CalcforFactorio__/graphics/sprite.png",
    --    priority = "extra-high-no-scale",
    --    width = 128,
    --    height = 128,
    --    font = "font-s"
    --},
  {
    type = "font",
    name = "font-s",
    from = "default",
    size = 12
  },
  {
    type = "font",
    name = "font-m",
    from = "default",
    size = 14
  },
  {
    type = "font",
    name = "font-l",
    from = "default",
    size = 16
  },
  {
    type = "font",
    name = "font-sb",
    from = "default-semibold",
    size = 12
  },
  {
    type = "font",
    name = "font-mb",
    from = "default-semibold",
    size = 14
  },
  {
    type = "font",
    name = "font-lb",
    from = "default-semibold",
    size = 16
  },
	{
	  type = "custom-input",
	  name = "open_terminal",
	  key_sequence = "CONTROL + D",
	  consuming = "script-only"
	}
})
data.raw["gui-style"].default["terminal_text_field_style"] =
{
	type = "textfield_style",
	parent = "textfield_style",
	cell_spacing =5 ,
	width = 256,
	height = 32
}

data.raw["gui-style"].default["terminal_button_style"] =
{
    type = "button_style",
    parent = "button_style",
    width = 32,
    height = 32,
    top_padding = 0,
    font = "font-s"
}

-- taken from factorio maps mod
data.raw["gui-style"].default["terminal_button_main_icon_style"] = {
    type = "button_style",
    parent = "button_style",
    top_padding = 1,
    right_padding = 5,
    bottom_padding = 1,
    left_padding = 5,
    left_margin = 5,
    right_margin = 5,    
    left_click_sound = {{
        filename = "__core__/sound/gui-click.ogg",
        volume = 1
    }}
}

data.raw["gui-style"].default["terminal_button_main_icon"] = {
    type = "button_style",
    parent = "terminal_button_main_icon_style",
    width = 32,
    height = 32,
    left_margin = 5,
    right_margin = 5,
    top_padding = 0,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    font = "font-s",
    left_click_sound = {{
        filename = "__core__/sound/gui-click.ogg",
        volume = 1
    }}
}

