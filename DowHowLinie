instrument { name = "20 DowHowLine", short_name = "DHL 20" , overlay = true }

periodMax20 = input (20, "front.period", input.integer, 1, 200)
periodMin20 = input (20, "front.period", input.integer, 1, 200)

periodMax10 = input (10, "front.period", input.integer, 1, 200)
periodMin10 = input (10, "front.period", input.integer, 1, 200)



input_group {
    "front.DHLMax20 line",
    DHLMax20_line_visible = input { default = true, type = input.plot_visibility },
    DHLMax20_line_color   = input { default = "#BDB76B", type = input.color },
    DHLMax20_line_width   = input { default = 1, type = input.line_width }
}



input_group {
    "front.DHLMin20 line",
    DHLMin20_line_visible = input { default = true, type = input.plot_visibility },
    DHLMin20_line_color   = input { default = "#00FFFF", type = input.color },
    DHLMin20_line_width   = input { default = 1, type = input.line_width }
}

input_group {
    "front.DHLMax10 line",
    DHLMax10_line_visible = input { default = true, type = input.plot_visibility },
    DHLMax10_line_color   = input { default = "#00CED1", type = input.color },
    DHLMax10_line_width   = input { default = 1, type = input.line_width }
}



input_group {
    "front.DHLMin10 line",
    DHLMin10_line_visible = input { default = true, type = input.plot_visibility },
    DHLMin10_line_color   = input { default = "#BA55D3", type = input.color },
    DHLMin10_line_width   = input { default = 1, type = input.line_width }
}


input_group {
    "front.newind.adx.fill",
    fill_visible = input { default = true, type = input.plot_visibility },
    fill_color   = input { default = rgba(35,132,194,0.08), type = input.color },
}

DHLMax20 = highest (close, periodMax20)
DHLMin20 = lowest  (close, periodMax20)
DHLMax10 = highest (close, periodMax10)
DHLMin10 = lowest  (close, periodMin10)

if fill_visible then
    fill { first = upper, second = lower, color = fill_color }
end

if DHLMax20_line_visible then
    plot (DHLMax20, "front.DHLMax20 line", DHLMax20_line_color, DHLMax20_line_width)
end

if DHLMin20_line_visible then
    plot (DHLMin20, "front.DHLMin20 line", DHLMin20_line_color, DHLMin20_line_width)
end

if DHLMax10_line_visible then
    plot (DHLMax10, "front.DHLMax20 line", DHLMax10_line_color, DHLMax10_line_width)
end

if DHLMin10_line_visible then
    plot (DHLMin10, "front.DHLMin20 line", DHLMin10_line_color, DHLMin10_line_width)
end

