SupportGui:
    type: command
    name: support
    description: Does something
    usage: /support <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - inventory open d:SupportMenue

SupportMenue:
    type: inventory
    inventory: chest
    gui: true
    title: <dark_green><bold><&sp><&sp><&sp><&sp><&sp>Aktive<&sp>Supporter
    definitions:
        #p: player_head[display_name=<green><bold><player.name>;skull_skin=<player.uuid>]
        c:  black_stained_glass_pane[display_name=<&sp>]
    procedural items:
        - define result <list>
        - foreach <server.players> as:p:
            - if <[p].is_online>:
                    - define color <green>
            - else:
                    - define color <red>
            - define name <[color]><[p].name>
            - define item player_head[display_name=<[name]>;skull_skin=<[p].uuid>]
            - define result <[result].include[<[item]>]>
        - determine <[result]>
    slots:
    - [c] [c] [c] [c] [c] [c] [c] [c] [c]
    - [c] [] [] [] [] [] [] [] [c]
    - [c] [] [] [] [] [] [] [] [c]
    - [c] [] [] [] [] [] [] [] [c]
    - [c] [] [] [] [] [] [] [] [c]
    - [c] [c] [c] [c] [c] [c] [c] [c] [c]