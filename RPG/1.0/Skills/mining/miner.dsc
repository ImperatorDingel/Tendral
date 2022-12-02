MinerFarm:
    type: world
    events:
        after player breaks block:
        # TODO: Drop System auf neues Profil System umlegen
        - choose <context.material.name>:
            - case stone:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[cobblestone]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case andesite:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[andesite]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case diorite:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[diorite]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case granite:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[granite]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[cobbled_deepslate]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case calcite:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[calcite]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case tuff:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[tuff]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:1
                - actionbar "Miner: +1 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case coal_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[coal]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_coal_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[coal]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case iron_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_iron]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_iron_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_iron]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case copper_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_copper]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_copper_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_copper]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case gold_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_gold]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_gold_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[raw_gold]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case redstone_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[redstone]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_redstone_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[redstone]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case emerald_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[emerald]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_emerald_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[emerald]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case lapis_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[lapis_lazuli]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_lapis_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[lapis_lazuli]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case diamond_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[diamond]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:10
                - actionbar "Miner: +10 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
            - case deepslate_diamond_ore:
                - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Mining.MaxDrop]>]>
                - drop <item[diamond]> <context.location> quantity:<[drop]>
                - flag <player> Profil.Skills.Mining.Exp:+:12
                - actionbar "Miner: +12 Exp <player.flag[Profil.Skills.Mining.Exp]>/<player.flag[Profil.Skills.Mining.Target]>"
