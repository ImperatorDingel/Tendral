Menu:
  type: inventory
  inventory: chest
  gui: true
  title: <gold><bold>۞ Menü ۞
  definitions:
    p: black_stained_glass_pane[display_name=<gold><bold>۞ Profil ۞;lore=<script[Menu_Data].parsed_key[Profil].separated_by[<&nl>]>]
    f: green_stained_glass_pane[display_name=<gold><bold>۞ Freunde ۞]
    g: lime_stained_glass_pane[display_name=<gold><bold>۞ Gilde ۞]
    s: gray_stained_glass_pane[display_name=<gold><bold>۞ Einstellungen ۞]
    Pro: purple_stained_glass_pane[display_name=<gold><bold>۞ Handwerk ۞;lore=<script[Menu_Data].parsed_key[Professions].separated_by[<&nl>]>]
    Ski: magenta_stained_glass_pane[display_name=<gold><bold>۞ Skills ۞;lore=<script[Menu_Data].parsed_key[Skills].separated_by[<&nl>]>]
    w: brown_stained_glass_pane[display_name=<gold><bold>۞ Home ۞]
  slots:
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [p] [] [] [] []
  - [] [] [Ski] [] [] [] [f] [] []
  - [] [] [] [] [w] [] [] [] []
  - [] [] [Pro] [] [] [] [g] [] []
  - [] [] [] [] [s] [] [] [] []