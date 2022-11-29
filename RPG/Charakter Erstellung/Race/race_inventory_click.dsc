race_inventory_click:
    type: world
    events:
        on player clicks item in NewRaceInventory:
        - choose <context.slot>:
            # Mensch
            - case 5:
                - flag <player> RaceAuswahl.Rasse:Mensch
                - inventory open d:NewRaceInventory
            # Elf
            - case 21:
                - flag <player> RaceAuswahl.Rasse:Elf
                - inventory open d:NewRaceInventory
            # Zwerg
            - case 25:
                - flag <player> RaceAuswahl.Rasse:Zwerg
                - inventory open d:NewRaceInventory
            # Weiter
            - case 51:
                - flag <player> Profil.Race:<player.flag[RaceAuswahl.Rasse]>
                - flag <player> freeze:!
                - inventory close
