ForagesFarm:
    type: world
    events:
        after player breaks block:
        - choose <context.material.name>:
            - case oak_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[oak_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case spruce_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[spruce_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case birch_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[birch_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case jungle_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[jungle_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case acacia_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[acacia_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case dark_oak_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[dark_oak_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mangrove_log:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[mangrove_log]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case bamboo:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[bamboo]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mangrove_roots:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[mangrove_roots]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case brown_mushroom:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[brown_mushroom]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case red_mushroom:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[red_mushroom]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case brown_mushroom_block:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[brown_mushroom_block]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case red_mushroom_block:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[red_mushroom_block]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mushroom_stem:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[mushroom_stem]> <context.location> quantity:<[drop]>
                - run EXPForages
            - case mangrove_propagule:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Foraging.MaxDrop]>]>
                - drop <item[mangrove_propagule]> <context.location> quantity:<[drop]>
                - run EXPForages

EXPForages:
    type: task
    script:
    - flag <player> Profil.Skills.Foraging.Exp:+:10
    - actionbar "Foraging: +10 Exp <player.flag[Profil.Skills.Foraging.Exp]>/<player.flag[Profil.Skills.Foraging.Target]>"