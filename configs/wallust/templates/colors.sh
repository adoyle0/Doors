wallpaper="{{wallpaper}}"

# Special
background='{{background}}'
foreground='{{foreground}}'
cursor='{{cursor}}'

# Colors
color0='{{background}}'
color1='{{color1}}'
color2='{{color2}}'
color3='{{color3}}'
color4='{{color4}}'
color5='{{color5}}'
color6='{{color6}}'
color7='{{foreground}}'
color8='{{background}}'
color9='{{color9}}'
color10='{{color10}}'
color11='{{color11}}'
color12='{{color12}}'
color13='{{color13}}'
color14='{{color14}}'
color15='{{foreground}}'
         
# FZF col{ors
export FZF_DEFAULT_OPTS="
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

# Fix LS_COLORS being unreadable.
export LS_COLORS="${{LS_COLORS}}:su=30;41:ow=30;42:st=30;44:"
