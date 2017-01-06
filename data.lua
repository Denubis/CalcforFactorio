data:extend(
{
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
    font = "font-m"
}

data.raw["gui-style"].default["terminal_button_main_icon"] =
{
    type = "button_style",
    parent = "button_style",
    width = 32,
    height = 32,
    cell_spacing =5 ,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    font = "font-m",
    default_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
			filename = "__CalcforFactorio__/graphics/icons.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
            x = 0,
            y = 0
        }
    },
    hovered_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
			filename = "__CalcforFactorio__/graphics/icons.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
            x = 32,
            y = 0
        }
    },
    clicked_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
			filename = "__CalcforFactorio__/graphics/icons.png",
            width = 32,
            height = 32,
            x = 32,
            y = 0
        }
    }
}