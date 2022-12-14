race_gui:
    type: inventory
    inventory: chest
    gui: true
    definitions:
      name: item
      zurueck: arrow[display_name=<red><bold>Zurück]
    procedural items:
    - define list <list>
    - define Race <script[Race_Data_Gui].parsed_key[Rassenliste]>
    - foreach <[race]>:
        - if <[value]> == weiter:
            - if <player.has_flag[Race_auswahl]>:
                - define item arrow[display_name=<green><bold>Profil<&sp>erstellen]
            - else:
                - define item air
        - if <[value]> == Mensch:
            - if <player.flag[Race_auswahl]> == Mensch:
                - define item green_dye[display_name=<green><bold><[value]>]
            - else:
                - define item paper[display_name=<green><bold><[value]>]
        - if <[value]> == Elf:
            - if <player.flag[Race_auswahl]> == Elf:
                - define item green_dye[display_name=<green><bold><[value]>]
            - else:
                - define item paper[display_name=<green><bold><[value]>]
        - if <[value]> == Zwerg:
            - if <player.flag[Race_auswahl]> == Zwerg:
                - define item green_dye[display_name=<green><bold><[value]>]
            - else:
                - define item paper[display_name=<green><bold><[value]>]
        - if <[value]> == Feen:
            - if <player.flag[Race_auswahl]> == Feen:
                - define item green_dye[display_name=<green><bold><[value]>]
            - else:
                - define item paper[display_name=<green><bold><[value]>]
        - if <[value]> == Engel:
            - if <player.flag[Race_auswahl]> == Engel:
                - define item green_dye[display_name=<green><bold><[value]>;lore=<green><bold>Prestige]
            - else:
                - define item paper[display_name=<green><bold><[value]>;lore=<green><bold>Prestige]
        - if <[value]> == Orc:
            - if <player.flag[Race_auswahl]> == Orc:
                - define item green_dye[display_name=<red><bold><[value]>]
            - else:
                - define item paper[display_name=<red><bold><[value]>]
        - if <[value]> == Undead:
            - if <player.flag[Race_auswahl]> == Undead:
                - define item green_dye[display_name=<red><bold><[value]>]
            - else:
                - define item paper[display_name=<red><bold><[value]>]
        - if <[value]> == Goblin:
            - if <player.flag[Race_auswahl]> == Goblin:
                - define item green_dye[display_name=<red><bold><[value]>]
            - else:
                - define item paper[display_name=<red><bold><[value]>]
        - if <[value]> == Vampire:
            - if <player.flag[Race_auswahl]> == Vampire:
                - define item green_dye[display_name=<red><bold><[value]>]
            - else:
                - define item paper[display_name=<red><bold><[value]>]
        - if <[value]> == Demon:
            - if <player.flag[Race_auswahl]> == Demon:
                - define item green_dye[display_name=<red><bold><[value]>;lore=<red><bold>Prestige]
            - else:
                - define item paper[display_name=<red><bold><[value]>;lore=<red><bold>Prestige]
        - if <[value]> == Platzhalter:
            - define item paper[display_name=<dark_red><bold>Coming<&sp>soon]
        - define list <[list].include[<[item]>]>
    - determine <[list]>
    slots:
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [zurueck] [air] [] [air] [air] [air]

race_gui_click_handler:
    type: world
    events:
        on player clicks item in race_gui:
        - narrate <context.slot>
        # 1 3 5 7 9 (19 21 23 25 27) 37 39 41 43 45
        - choose <context.slot>:
            - case 1:
                - flag player Race_auswahl:Mensch
                - inventory open d:race_gui
            - case 3:
                - flag player Race_auswahl:Elf
                - inventory open d:race_gui
            - case 5:
                - flag player Race_auswahl:Zwerg
                - inventory open d:race_gui
            - case 7:
                - flag player Race_auswahl:Feen
                - inventory open d:race_gui
            - case 9:
                - if <player.flag[difficulty_auswahl]> == hardcore:
                    - if <player.flag[Profil1.Level]>||<player.flag[Profil2.Level]>||<player.flag[Profil3.Level]> contains 50:
                        - flag player Race_auswahl:Engel
                        - inventory open d:race_gui
            - case 37:
                - flag player Race_auswahl:Orc
                - inventory open d:race_gui
            - case 39:
                - flag player Race_auswahl:Undead
                - inventory open d:race_gui
            - case 41:
                - flag player Race_auswahl:Goblin
                - inventory open d:race_gui
            - case 43:
                - flag player Race_auswahl:Vampire
                - inventory open d:race_gui
            - case 45:
                - if <player.flag[difficulty_auswahl]> == hardcore:
                    - if <player.flag[Profil1.Level]>||<player.flag[Profil2.Level]>||<player.flag[Profil3.Level]> contains 50:
                        - flag player Race_auswahl:Demon
                        - inventory open d:race_gui
            - case 49:
                - inventory open d:difficulty_gui
            - case 51:
                - definemap Profil_Flag_set2:
                    last_location:
                    Level: 1
                    Difficulty: <player.flag[difficulty_auswahl]>
                    Rucksack: <player.flag[Profil_auswahl]>_<player.uuid>_Backpack
                    Race: <player.flag[race_auswahl]>
                    EXP:
                        Exp: 0
                        Target: 100
                        Gesamt: 0
                    Economy:
                        Money: 0
                        Bank: 0
                    Gilde:
                        Gilde: NoGuild
                        Anfragen: <list[]>
                    Stats:
                        Leben: 10
                        Dmg: 2
                        Def: 0
                        Mana: 0
                        ManaMax: 10
                        Stamina: 0
                        StaminaMax: 100
                        Speed: 100
                    Skills:
                        Combat:
                            Level: 0
                            Exp: 0
                            Target: 100
                            Prozent: 0
                            MaxDrop: 1
                        Mining:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Foraging:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Farming:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Fishing:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                    Professions:
                        Blacksmith:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Weaponsmith:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Armorer:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                        Cook:
                            Level: 0
                            Exp: 0
                            Target: 100
                            MaxDrop: 1
                    ExpBar:
                        Level: <white>--------------------
                        Combat: <white>--------------------
                        Mining: <white>--------------------
                        Foraging: <white>--------------------
                        Farming: <white>--------------------
                        Fishing: <white>--------------------
                        Blacksmith: <white>--------------------
                        Weaponsmith: <white>--------------------
                        Armorer: <white>--------------------
                        Cook: <white>--------------------
                    ExpProzent:
                    NPC:
                - flag <player> <player.flag[Profil_auswahl]>:<[Profil_Flag_set2]>
                - flag <player> Profil:<player.flag[Profil_auswahl]>
                - note <inventory[Backpack]> as:<player.flag[Profil_auswahl]>_<player.uuid>_Backpack
                - inventory set o:menustern slot:9
                - inventory set o:RucksackItem slot:8
                - inventory close
                - teleport <player> d:Spawn

