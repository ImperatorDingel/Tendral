sidebar_world_script:
    type: world
    events:
        on delta time secondly every:1:
        - run sidebar_task

sidebar_task:
    type: task
    data:
        TopBar: ۞=====Profil=====۞
        SideBar:
        - <empty>
        - <player.name>
        - <gold>۞ <bold>Level : <yellow><bold><player.flag[<player.flag[Profil]>.Level]>
        - <gold>۞ <green><bold>Leben: <player.health>/<player.health_max>
        - <gold>۞ <aqua><bold>Mana: <player.flag[<player.flag[Profil]>.Stats.Mana]>/<player.flag[<player.flag[Profil]>.Stats.ManaMax]>
        - <gold>۞ <blue><bold>Verteidigung: <bold><player.flag[<player.flag[Profil]>.Stats.Def]>
    script:
    - foreach <server.online_players> as:p:
        - if <[p].has_flag[<[p].flag[Profil]>.settings.sidebar]>:
            - sidebar set title:<gold><bold><script[sidebar_task].data_key[data.TopBar]> "values:<script[sidebar_task].parsed_key[data.Sidebar]>" players:<[p]> per_player
        - else:
            - determine passively cancelled
            - sidebar remove

sidebar_command:
    type: command
    name: sidebar
    description: Does something
    usage: /sidebar <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - if <player.has_flag[<player.flag[Profil]>.settings.sidebar]>:
        - flag <player> <player.flag[Profil]>.settings.sidebar:!
        - sidebar remove
        - narrate "Sidebar deaktiviert."
    - else:
        - flag <player> <player.flag[Profil]>.settings.sidebar
        - narrate "Sidebar aktiviert."