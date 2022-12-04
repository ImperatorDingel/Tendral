difficulty_gui:
    type: inventory
    inventory: chest
    gui: true
    definitions:
      name: item
      weiter: <item[arrow]>
      zurueck: arrow[display_name=<red><bold>Zurück]
    procedural items:
    - define result <list>
    - define list <list[normal|hardcore|weiter]>
    - foreach <[list]>:
        - if <[value]> == normal:
            - if <[value]> == <player.flag[difficulty_auswahl]>:
                - define item green_dye[display_name=<green><bold>Normal;lore=<green><bold>Ausgewählt]
            - else:
                - define item green_stained_glass[display_name=<green><bold>Normal]
        - if <[value]> == hardcore:
            - if <[value]> == <player.flag[difficulty_auswahl]>:
                - define item red_dye[display_name=<red><bold>Hardcore;lore=<red><bold>Ausgewählt]
            - else:
                - define item red_stained_glass[display_name=<red><bold>Hardcore]
        - if <[value]> == weiter:
            - if <player.has_flag[difficulty_auswahl]>:
                - define item arrow[display_name=<green><bold>Weiter]
            - else:
                - define item air
        - define result <[result].include[<[item]>]>
    # Add some logic!
    - determine <[result]>
    slots:
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [air] [air] [] [air] [air] [air] [] [air] [air]
    - [air] [air] [air] [zurueck] [air] [] [air] [air] [air]

difficulty_gui_click_handler:
    type: world
    events:
        on player clicks item in difficulty_gui:
        - narrate "Nice <context.slot>"
        # 12 16 22 24
        - choose <context.slot>:
            - case 12:
                - flag <player> difficulty_auswahl:normal
                - inventory open d:difficulty_gui
            - case 16:
                - flag <player> difficulty_auswahl:hardcore
                - inventory open d:difficulty_gui
            - case 22:
                - inventory open d:Profil_creation_gui
            - case 24:
                - if <player.has_flag[difficulty_auswahl]>:
                    - flag <player> Race_auswahl:!
                    - inventory open d:race_gui
