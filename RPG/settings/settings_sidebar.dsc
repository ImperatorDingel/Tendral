sidebar_world_script:
    type: world
    events:
        on delta time secondly every:1:
        - run sidebar_task

sidebar_task:
    type: task
    script:
    - foreach <server.online_players> as:p:
        - if <[p].has_flag[<[p].flag[Profil]>.settings.sidebar]>:
            - sidebar set title:Profil "values:Ping<&co> <player.ping>" players:<[p]> per_player
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
        - narrate "Sidebar deaktiviert."
    - else:
        - flag <player> <player.flag[Profil]>.settings.sidebar
        - narrate "Sidebar aktiviert."