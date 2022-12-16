profil_choose_gui:
    type: inventory
    inventory: chest
    gui: true
    definitions:
      name: item
      auswahl: green_stained_glass[display_name=<green><bold>Profil auswählen]
      loeschen: red_stained_glass[display_name=<red><bold>Profil löschen]
      zurueck: arrow[display_name=<red><bold>Zurück]
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [auswahl] [] [] [] [loeschen] [] []
    - [] [] [] [] [zurueck] [] [] [] []

profil_choose_gui_click_handler:
    type: world
    events:
        on player clicks item in profil_choose_gui:
        # 12 16 23
        - choose <context.slot>:
            - case 12:
                - flag <player> Profil:<player.flag[Profil_auswahl]>
                - teleport <player> <player.flag[<player.flag[Profil]>.last_location]>
                - define inventory <player.flag[<player.flag[Profil]>_inventory]>
                - foreach <[inventory]>:
                    - inventory set o:<[value]> slot:<[loop_index]>
                - inventory close
            - case 16:
                - flag <player> <player.flag[Profil_auswahl]>:!
                - inventory open d:Profil_creation_gui
            - case 23:
                - inventory open d:Profil_creation_gui
