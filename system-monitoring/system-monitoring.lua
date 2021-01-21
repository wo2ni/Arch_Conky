-------------------------------------------------------------------------------------------------
--						http://www.runoob.com/lua/		lua教程网站;							-
--    如果你看见了这些美丽的配置文件，请将它分享给更多的，热爱Linux的人，这是属于每一个人的，	-
--       所有人都有对其修改的权利,这将不收取任何费用，你不必考虑太多事，你只需要做的是，     	-
--				                          ！Enjoy！				                             	-
-------------------------------------------------------------------------------------------------
require 'cairo'
--Cpu最外边的环配置;由最外到内;
gauge = {
{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=70,                          y=130,
    graph_radius=54,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xFFFFFF,      graph_bg_alpha=0.5,	--前景颜色;&透明度;
    graph_fg_colour=0x00FF00,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xFF0000,       hand_fg_alpha=1.0, 	--'最外边活动点的颜色;'
    txt_radius=61,			--字体位置角度;
    txt_weight=0,                  txt_size=9.0,		--最外边数字的字体大小;
    txt_fg_colour=0x00FF00,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
   caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,tt	--用于显示其他环的颜色，字幕;
},
--Cpu内2的环;
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=70,                          y=130,
    graph_radius=48,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;
    graph_fg_colour=0x0000FF,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0x00FF00,       hand_fg_alpha=1,	--'最外边活动点的颜色;
    txt_radius=40,
    txt_weight=0,                  txt_size=8.0,		--最外边数字的字体大小;
    txt_fg_colour=0x0000FF,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
--Cpu内1的环;
{
    name='cpu',                    arg='cpu2',                  max_value=100,
    x=70,                          y=130,
    graph_radius=20,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;
    graph_fg_colour=0xFFFF00,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0x0000FF,       hand_fg_alpha=1,	--'最外边活动点的颜色;
    txt_radius=30,
    txt_weight=0,                  txt_size=8.0,		--最外边数字的字体大小;
    txt_fg_colour=0xFFFF00,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
--Cpu内0的环;
{
    name='cpu',                    arg='cpu3',                  max_value=100,
    x=70,                          y=130,
    graph_radius=14,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;
    graph_fg_colour=0xFF0000,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xFFFF00,       hand_fg_alpha=1.0,	--'最外边活动点的颜色;
    txt_radius=4,
    txt_weight=0,                  txt_size=10,		--最外边数字的字体大小;
    txt_fg_colour=0xFF0000,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
--内存检测;
{
    name='memperc',                arg='',                      max_value=100,
    x=70,                          y=300,
    graph_radius=54,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x40E0D0,      graph_bg_alpha=0.2,	--前景颜色;&透明度;
    graph_fg_colour=0x000CD,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0x00EE00,       hand_fg_alpha=1,		--'最外边活动点的颜色;
    txt_radius=5,		--字体角度位置;
    txt_weight=0,                  txt_size=20,		--最外边数字的字体大小;
    txt_fg_colour=0xEE0000,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=10.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
--检测根目录使用情况，位于外2;
{
    name='fs_used_perc',           arg='/',                     max_value=100,
    x=70,                          y=470,   --定义圈圈的坐标;
    graph_radius=54,	--定义圈圈的半径;
    graph_thickness=7,	--定义圈圈的厚度;
    graph_start_angle=180,		--图形起始角度;
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,	--定义圈圈的厚度;
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;	
    graph_fg_colour=0xFF0000,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xFFFF00,       hand_fg_alpha=1.0,	--'最外边活动点的颜色;
    txt_radius=66,			--字体角度位置;
    txt_weight=0,                  txt_size=9.0,		--最外边数字的字体大小;
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1,	--最外边数字显示的颜色&&透明度;
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='/',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
--检测/Opt目录使用情况,位于内1;
{
    name='fs_used_perc',           arg='/opt/',                     max_value=100,
    x=70,                          y=470,
    graph_radius=42,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;
    graph_fg_colour=0xFF0000,      graph_fg_alpha=1, 	--后景颜色;&透明度;
    hand_fg_colour=0xFFFF00,       hand_fg_alpha=1.0,	--'最外边活动点的颜色;
    txt_radius=22,		--字体角度位置;
    txt_weight=0,                  txt_size=0,		--最外边数字的字体大小;
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='Opt',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
--检查/boot目录使用情况，位于内0;
{
    name='fs_used_perc',           arg='/boot',                     max_value=100,
    x=70,                          y=470,
    graph_radius=30,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.5,	--前景颜色;&透明度;	
    graph_fg_colour=0xFF0000,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xFFFF00,       hand_fg_alpha=1.0,	--'最外边活动点的颜色;
    txt_radius=18,
    txt_weight=0,                  txt_size=9.0,		--最外边数字的字体大小;
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='Boot',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
--检测网络流量"eth0&wlan0";
--eth0下传流量;外1;
{
    name='downspeedf',           arg='eth0',                     max_value=100,
    x=70,                          y=660,
    graph_radius=54,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.25,	--前景颜色;&透明度;
    graph_fg_colour=0x66CD00,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xCD0000,       hand_fg_alpha=0,		--'最外边活动点的颜色;
    txt_radius=64,
    txt_weight=0,                  txt_size=9.0,		--最外边数字的字体大小;
    txt_fg_colour=0x66CD00,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='ED',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1,
},
--wlan0下传流量;外2;;
{
    name='downspeedf',           arg='wlan0',                     max_value=100,
    x=70,                          y=660,				--位置坐标;
    graph_radius=42,									--圈圈的直径;
    graph_thickness=7,									--圈圈的厚度;
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,	--前景颜色;&透明度;
    graph_fg_colour=0xEF5A29,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0xFFFF00,       hand_fg_alpha=0,		--'最外边活动点的颜色;
    txt_radius=30,
    txt_weight=0,                  txt_size=9.0,		--最外边数字的字体大小;
    txt_fg_colour=0,        txt_fg_alpha=0,	--最外边数字显示的颜色&&透明度;
    --txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,	--最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='WD',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1,
},
--eth0上传流量;内1;
{
    name='upspeedf',           arg='eth0',                     max_value=100,
    x=70,                          y=660,
    graph_radius=30,										--圈圈的直径;
    graph_thickness=5,										--圈圈的厚度;
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.25,  --前景颜色;&透明度;
    graph_fg_colour=0xEF5A29,      graph_fg_alpha=1,	--后景颜色;&透明度;
    hand_fg_colour=0x66CD00,       hand_fg_alpha=0,		--'最外边活动点的颜色;
    txt_radius=30,
    txt_weight=0,                  txt_size=8.0,                --最外边数字的字体大小;
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,    --最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='EU',										--网卡eth0上传流量;字体指示;
    caption_weight=1,              caption_size=9.0,	--EU字体的大小;
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1, --EU字体的透明度;
},
--wlan0上传流量;内0;
{
    name='upspeedf',           arg='wlan0',                     max_value=100,
    x=70,                          y=660,
    graph_radius=18,									--圈圈的直经;
    graph_thickness=5,									--圈圈的厚度;
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,  --前景颜色;&透明度;
    graph_fg_colour=0x66CD00,      graph_fg_alpha=1,    --后景颜色;&透明度;
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0,		--'最外边活动点的颜色;
    txt_radius=4,
    txt_weight=0,                  txt_size=9.0,                --最外边数字的字体大小;
    txt_fg_colour=0,        txt_fg_alpha=0,    --最外边数字显示的颜色&&透明度;
    --txt_fg_colour=0xEF5A29,        txt_fg_alpha=10,    --最外边数字显示的颜色&&透明度;
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='WU',
    caption_weight=1,              caption_size=9.0,		--WU字体的大小;
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1,	--WU字体的透明度;
},
}
-------------------------------------------------------------------------------
--                                           
--将十六进制颜色转换为十进制; 
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end


-------------------------------------------------------------------------------
--显示量规; 
--背景环;
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    --背景环; 
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, 0), angle_to_position(graph_start_angle, graph_end_angle))
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    --角值环;
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    --刻度线;
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    --文本; 
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    --字幕;
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end


-------------------------------------------------------------------------------
--                                                              
--加载日期并显示仪表;
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end
    
    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
function conky_main()
    if conky_window == nil then 
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    
    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)
    
    if update_num > 5 then
        go_gauge_rings(display)
    end

    cairo_surface_destroy(cs)
    cairo_destroy(display)

end

