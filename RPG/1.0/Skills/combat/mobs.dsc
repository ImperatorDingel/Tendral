Mobs:
    type: world
    debug: false
    events:
        #on entity spawns:
        #- define mob <context.entity>
        #- narrate "Nice <context.entity>"
        #on entity spawns because spawner_egg:
        #- determine passively cancelled
        #- define mob <context.entity>
        #- narrate "Nice <context.entity.name>"
        #- define level <util.random.int[1].to[50]>
        #- define basehealth 10
        #- define basexp 10
        #- define lvlhealth <element[2].mul[<[level]>]>
        #- define lvlxp <element[2].mul[<[level]>]>
        #- define health <[lvlhealth].add[<[basehealth]>]>
        #- define xp <[lvlxp].add[<[lvlxp]>].add[<[basexp]>]>
        #- define name "<gold>۞<bold> <context.entity.name>  [LVL: <[level]>] <gold>۞<bold>"
        #- narrate "Nice <context.entity.name> level:<[level]> leben:<[health]> xp:<[xp]>" targets:<server.online_ops>
        #- spawn <context.entity.name> <context.location> save:mob
        #- flag <entry[mob].spawned_entity> XP:<[xp]>
        #- adjust <entry[mob].spawned_entity> custom_name:<[name]>
        #- adjust <entry[mob].spawned_entity> custom_name_visible:true
        #- adjust <entry[mob].spawned_entity> max_health:<[health]>
        #- adjust <entry[mob].spawned_entity> health:<[health]>
        after entity spawns:
        - if <context.entity.advanced_matches[mob]>:
            - define level <util.random.int[1].to[50]>
            - define basehealth 10
            - define basexp 10
            - define lvlhealth <element[2].mul[<[level]>]>
            - define lvlxp <element[2].mul[<[level]>]>
            - define health <[lvlhealth].add[<[basehealth]>]>
            - define xp <[lvlxp].add[<[lvlxp]>].add[<[basexp]>]>
            - define basedmg 5
            - define lvldmg <element[2].mul[<[level]>]>
            - define dmg <[basedmg].add[<[lvldmg]>]>
            - define name "<gold>۞<bold> <green><bold><context.entity.name>  <gold><bold>[LVL: <green><bold><[level]><gold><bold>] <gold>۞<bold>"
            - if <[level]> >= 15:
                - define name "<gold>۞<bold> <yellow><bold><context.entity.name>  <gold><bold>[LVL: <yellow><bold><[level]><gold><bold>] <gold>۞<bold>"
            - if <[level]> >= 35:
                - define name "<gold>۞<bold> <red><bold><context.entity.name>  <gold><bold>[LVL: <red><bold><[level]><gold><bold>] <gold>۞<bold>"
            #- define name "<gold>۞<bold> <context.entity.name>  [LVL: <[level]>] <gold>۞<bold>"
            - flag <context.entity> XP:<[xp]>
            - flag <context.entity> dmg:<[dmg]>
            - adjust <context.entity> custom_name:<[name]>
            - adjust <context.entity> custom_name_visible:true
            - adjust <context.entity> max_health:<[health]>
            - adjust <context.entity> health:<[health]>
        on entity dies:
            - define entity <context.entity>
            - if <context.entity.has_flag[damager]>:
                - if <server.online_players.contains[<context.entity.flag[damager]>]>:
                    - flag <context.entity.flag[damager]> Profil.EXP.Exp:+:<[entity].flag[XP]>
                    - flag <context.entity.flag[damager]> Profil.Skills.Combat.Exp:+:<[entity].flag[XP]>
                    - actionbar " +<[entity].flag[XP]> Exp " targets:<context.entity.flag[damager]>
        on player damages entity:
        - determine passively cancelled
        - flag <context.entity> damager:<player>
        - hurt <player.flag[Profil.Stats.Dmg]> <context.entity>
        on entity damages entity:
        - determine passively cancelled
        - define entitydmg <context.damager.flag[dmg]>
        - define basedefplayer <context.entity.flag[Profil.Stats.Def]>
        - define dmg <[entitydmg].sub[<[basedefplayer]>]>
        - if <context.entity.is_blocking>:
            - define shielddmg <[dmg].div[100]>
            - define totaldmg <[shielddmg].mul[5]>
            - hurt <[totaldmg]> <context.entity>
            - announce to_console <[totaldmg]>
        - else:
            - hurt <context.damager.flag[dmg]> <context.entity>
            - announce to_console <context.damager.flag[dmg]>
