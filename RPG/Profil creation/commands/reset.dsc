resetall:
    type: command
    name: resetall
    description: Does something
    usage: /resetall <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
                - narrate Hello!
                - definemap Profil_Flag_set2:
                    last_location:
                    Level: 1
                    Difficulty: <player.flag[<player.flag[Profil]>.Difficulty]>
                    Rucksack: <player.flag[<player.flag[Profil]>.Rucksack]>
                    Race: <player.flag[<player.flag[Profil]>.Race]>
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
                - flag <player> <player.flag[Profil]>:<[Profil_Flag_set2]>

setlevel:
    type: command
    name: set-level
    description: Does something
    usage: /set-level <&lt>arg<&gt>
    permission: dscript.mycmd
    tab completions:
        1: 1-50
    script:
    - define level 1
    - define exp 100
    - define gesamt 0
    - if <context.args.get[1]> == 1:
        - define level 1
        - define exp 100
    - else:
        - repeat <context.args.get[1].sub[1]>:
            - define level:++
            - define exp:*:1.25
            - define gesamt:+:<[exp]>
            - narrate <green><[level]><&sp><red><[exp].round>
            - flag <player> <player.flag[Profil]>.EXP.Exp:+:<[exp]>
        - narrate <proc[metric_number].context[<[gesamt]>]>