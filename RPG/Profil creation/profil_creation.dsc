profil_creation:
    type: world
    events:
        after player joins:
        - teleport <player> d:Profil_creation
        - flag <player> Profil:!
        - flag <player> Profil_auswahl:!
        - flag <player> difficulty_auswahl:!
        - flag <player> Race_auswahl:!
        - inventory open d:Profil_creation_gui
        on player quits:
        - flag <player> <player.flag[Profil]>_inventory:<player.inventory.list_contents>
        - flag <player> <player.flag[Profil]>.last_location:<player.location>
        - inventory clear
        - flag <player> Profil:!
        - flag <player> Profil_auswahl:!
        - flag <player> difficulty_auswahl:!
        - flag <player> Race_auswahl:!

Profil:
    type: command
    name: Profil
    description: Does something
    usage: /Profil <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - flag <player> <player.flag[Profil]>_inventory:<player.inventory.list_contents>
    - flag <player> <player.flag[Profil]>.last_location:<player.location>
    - teleport <player> d:Profil_creation
    - inventory clear
    - flag <player> Profil:!
    - flag <player> Profil_auswahl:!
    - flag <player> difficulty_auswahl:!
    - flag <player> Race_auswahl:!
    - inventory open d:Profil_creation_gui

Stats:
    type: command
    name: Stats
    description: Does something
    usage: /stats <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - narrate <player.flag[Profil]>
    - narrate "Leben <player.flag[<player.flag[Profil]>.Level]>"
    - narrate Hello!


Profil_creation_gui:
    type: inventory
    inventory: chest
    gui: true
    definitions:
      name: item
    procedural items:
    - define result <list>
    - define list <list[Profil1|Profil2|Profil3]>
    - foreach <[list]>:
        - if <player.has_flag[<[value]>]>:
            - if <[value]> == Profil1:
                - define name "Profil 1"
                - define money <player.flag[<[value]>.Economy.Money]>
                - define bank <player.flag[<[value]>.Economy.Bank]>
                - define totalmoney <[money].add[<[bank]>]>
                - if <player.flag[<[value]>.Difficulty]> == normal:
                    - define difficulty <green><bold>Normal
                - if <player.flag[<[value]>.Difficulty]> == hardcore:
                    - define difficulty <red><bold>Hardcore
            - if <[value]> == Profil2:
                - define name "Profil 2"
                - define money <player.flag[<[value]>.Economy.Money]>
                - define bank <player.flag[<[value]>.Economy.Bank]>
                - define totalmoney <[money].add[bank]>
                - if <player.flag[<[value]>.Difficulty]> == normal:
                    - define difficulty <green><bold>Normal
                - if <player.flag[<[value]>.Difficulty]> == hardcore:
                    - define difficulty <red><bold>Hardcore
            - if <[value]> == Profil3:
                - define name "Profil 3"
                - define money <player.flag[<[value]>.Economy.Money]>
                - define bank <player.flag[<[value]>.Economy.Bank]>
                - define totalmoney <[money].add[bank]>
                - if <player.flag[<[value]>.Difficulty]> == normal:
                    - define difficulty <green><bold>Normal
                - if <player.flag[<[value]>.Difficulty]> == hardcore:
                    - define difficulty <red><bold>Hardcore
            - definemap Info:
                display_name: "<gold><bold>۞ <yellow><bold><[name]> <gold><bold>۞"
                lore:
                - "<gold><bold>۞ Name: <yellow><bold><player.name> "
                - "<gold><bold>۞ Difficulty: <[difficulty]>"
                - "<gold><bold>۞ Level: <yellow><bold><player.flag[<[value]>.Level]> "
                - "<gold><bold>۞ Race: <yellow><bold><player.flag[<[value]>.Race]> "
                - "<gold><bold>۞ Location: <yellow><bold><player.flag[<[value]>.last_location].simple> "
                - "<gold><bold>۞ Money:"
                - "<gold><bold>۞ <server.economy.format[<[money].add[<[bank]>]>]>"
                skull_skin: <player.uuid>
            - define item <item[player_head].with_map[<[Info]>]>
        - else:
            - define name "Freies Profil"
            - definemap Info:
                display_name: "<gold><bold>۞ <green><bold><[name]> <gold><bold>۞"
                lore:
                - "<gold><bold>۞=============۞"
                - "<gold><bold>۞ <green><bold>Klick mich"
                - "<gold><bold>۞ <green><bold>zum erstellen."
            - define item <item[green_stained_glass].with_map[<[Info]>]>
        - define result <[result].include[<[item]>]>
    # Add some logic!
    - determine <[result]>
    slots:
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [air] [air] [] [air] [] [air] [] [air] [air]
    - [] [] [] [] [] [] [] [] []

Profil_creation_gui_click_handler:
    type: world
    events:
        on player clicks item in Profil_creation_gui:
        - narrate "Nice <context.slot>"
        - choose <context.slot>:
            - case 12:
                - narrate "Nice Profil1"
                - flag <player> Profil_auswahl:Profil1
                - if <player.has_flag[Profil1]>:
                    - narrate "Hello Dingel"
                    - inventory open d:profil_choose_gui
                - else:
                    - narrate "Dingel doof"
                    - flag <player> difficulty_auswahl:!
                    - inventory open d:difficulty_gui
            - case 14:
                - narrate "Nice Profil2"
                - flag <player> Profil_auswahl:Profil2
                - if <player.has_flag[Profil2]>:
                    - narrate "Hello Dingel"
                    - inventory open d:profil_choose_gui
                - else:
                    - narrate "Dingel doof"
                    - flag <player> difficulty_auswahl:!
                    - inventory open d:difficulty_gui
            - case 16:
                - narrate "Nice Profil3"
                - flag <player> Profil_auswahl:Profil3
                - if <player.has_flag[Profil3]>:
                    - narrate "Hello Dingel"
                    - inventory open d:profil_choose_gui
                - else:
                    - narrate "Dingel doof"
                    - flag <player> difficulty_auswahl:!
                    - inventory open d:difficulty_gui
