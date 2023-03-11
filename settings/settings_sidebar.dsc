sidebar_world_script:
    type: world
    debug: false
    events:
        on delta time secondly every:1:
        - run sidebar_task

sidebar_task:
    type: task
    debug: false
    data:
        TopBar: ۞=====Profil=====۞
        SideBarNormal:
        - <empty>
        - <gold>۞ <bold><player.name>
        - <gold>۞ <bold>Level : <yellow><bold><player.flag[<player.flag[Profil]>.Level]>
        - <gold>۞ <green><bold>Leben: <player.health.round>/<player.health_max.round>
        - <gold>۞ <aqua><bold>Mana: <player.flag[<player.flag[Profil]>.Stats.Mana]>/<player.flag[<player.flag[Profil]>.Stats.ManaMax]>
        - <gold>۞ <blue><bold>Verteidigung: <bold><player.flag[<player.flag[Profil]>.Stats.Def]>
        - <empty>
        - <gold>۞ <yellow><bold>Gold
        - <gold>۞ <server.economy.format[<player.flag[<player.flag[Profil]>.Economy.Money]>]>
        SideBarHardcore:
        - <empty>
        - <gold>۞ <bold><player.name>
        - <gold>۞ <bold>Level : <yellow><bold><player.flag[<player.flag[Profil]>.Level]>
        - <gold>۞ <green><bold>Leben: <player.health.round>/<player.health_max.round>
        - <gold>۞ <aqua><bold>Mana: <player.flag[<player.flag[Profil]>.Stats.Mana]>/<player.flag[<player.flag[Profil]>.Stats.ManaMax]>
        - <gold>۞ <white><bold>Stamina: <player.flag[<player.flag[Profil]>.Stats.Stamina]>/<player.flag[<player.flag[Profil]>.Stats.StaminaMax]>
        - <gold>۞ <blue><bold>Verteidigung: <bold><player.flag[<player.flag[Profil]>.Stats.Def]>
        - <empty>
        - <gold>۞ <yellow><bold>Gold
        - <gold>۞ <server.economy.format[<player.flag[<player.flag[Profil]>.Economy.Money]>]>
    script:
    - foreach <server.online_players_flagged[Profil]> as:p:
        - if <[p].flag[<[p].flag[Profil]>.Difficulty]> == normal:
            - if <[p].has_flag[<[p].flag[Profil]>.settings.sidebar]>:
                - sidebar set title:<gold><bold><script[sidebar_task].data_key[data.TopBar]> "values:<script[sidebar_task].parsed_key[data.SideBarNormal]>" players:<[p]> per_player
            - else:
                - sidebar remove
        - if <[p].flag[<[p].flag[Profil]>.Difficulty]> == hardcore:
            - if <[p].has_flag[<[p].flag[Profil]>.settings.sidebar]>:
                - sidebar set title:<gold><bold><script[sidebar_task].data_key[data.TopBar]> "values:<script[sidebar_task].parsed_key[data.SideBarHardcore]>" players:<[p]> per_player
            - else:
                - sidebar remove

sidebar_command:
    type: command
    name: sidebar
    description: Does something
    usage: /sidebar <&lt>arg<&gt>
    permission: dscript.mycmd
    debug: false
    script:
    - if <player.has_flag[<player.flag[Profil]>.settings.sidebar]>:
        - flag <player> <player.flag[Profil]>.settings.sidebar:!
        - sidebar remove
        - narrate "Sidebar deaktiviert."
    - else:
        - flag <player> <player.flag[Profil]>.settings.sidebar
        - narrate "Sidebar aktiviert."