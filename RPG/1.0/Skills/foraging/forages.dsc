ForagesFarm:
    type: world
    events:
        on player breaks block:
        # TODO: Drop System auf neues Profil System umlegen
        - choose <context.material.name>:
            - case oak_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Oak Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[oak_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case spruce_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Spruce Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[spruce_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case birch_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Birch Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[birch_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case jungle_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Jungle Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[jungle_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case acacia_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Acacia Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[acacia_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case dark_oak_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Dark Oak Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[dark_oak_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case mangrove_log:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Mangrove Log"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[mangrove_log].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case bamboo:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - define Preis 50
                - define chance <util.random.int[1].to[100]>
                - define name "Bamboo"
                - define xp 10
                - if <[chance]> < 50:
                    - define rare <empty>
                - if <[chance]> >= 50:
                    - define rare <gold><bold>[<gold>★<bold>]<&sp>
                    - define Preis <[Preis].add[2]>
                - if <[chance]> >= 75:
                    - define rare <gold><bold>[<gray>★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[4]>
                - if <[chance]> >= 95:
                    - define rare <gold><bold>[<yellow>★★★<gold><bold>]<&sp>
                    - define Preis <[Preis].add[15]>
                - definemap Info:
                    display_name: "<gold><bold>۞ <[name]> <[rare]><gold><bold>۞"
                    lore:
                    - "<gold><bold>۞"
                    - "<gold><bold>۞ Preis:"
                    - "<gold><bold>۞ <[Preis].proc[Economy_Tendral_proc2]>"
                - define item <item[bamboo].with_map[<[Info]>].with_flag[Preis:<[Preis]>]>
                - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:<[xp]>
                - actionbar "Foraging +<[xp]> Exp " targets:<player>
                - toast "Foraging +<[xp]> Exp" icon:iron_axe targets:<player>
                - determine <[item]>
            - case mangrove_roots:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[mangrove_roots]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case brown_mushroom:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[brown_mushroom]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case red_mushroom:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[red_mushroom]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case brown_mushroom_block:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[brown_mushroom_block]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case red_mushroom_block:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[red_mushroom_block]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mushroom_stem:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[mushroom_stem]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mangrove_propagule:
                - define drop <util.random.int[1].to[<player.flag[<player.flag[Profil]>.Skills.Foraging.MaxDrop]>]>
                - drop <item[mangrove_propagule]> <context.location> quantity:<[drop]>
                - run EXPForages

EXPForages:
    type: task
    script:
    - flag <player> <player.flag[Profil]>.Skills.Foraging.Exp:+:10
    - actionbar "Foraging: +10 Exp <player.flag[<player.flag[Profil]>.Skills.Foraging.Exp]>/<player.flag[<player.flag[Profil]>.Skills.Foraging.Target]>"