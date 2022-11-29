charakter_creation:
    type: world
    events:
        on player joins:
        - adjust <player> scale_health:true
        - if <player.has_flag[First_join]>:
            - inventory set o:menustern slot:9
            - inventory set o:RucksackItem slot:8
            - determine cancelled
        - else:
            - flag <player> First_join
            - flag <player> nolang
            - flag <player> norace
            - definemap Profil_Flag_set:
                    Level: 1
                    Rucksack: <player.uuid>_Backpack
                    Language: german
                    Race: N/A
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
                    Freundesliste:
                        Freunde: <list[]>
                        Anfragen: <list[]>
                        Ausgang: <list[]>
                    Stats:
                        Leben: 10
                        Dmg: 2
                        Def: 0
                        Mana: 0
                        ManaMax: 10
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
                    NPC:
            - flag <player> Profil:<[Profil_Flag_set]>
            - health <player> <player.flag[Profil.Stats.Leben]> heal
            - teleport <player> d:RaceAuswahl
            - definemap RaceAuswahl:
                Rasse: Keine_Rasse
            - flag <player> RaceAuswahl:<[RaceAuswahl]>
            - note <inventory[Backpack]> as:<player.uuid>_Backpack
            - inventory set o:menustern slot:9
            - inventory set o:RucksackItem slot:8

Backpack:
    type: inventory
    inventory: chest
    title: <green><bold>Rucksack
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []

Health_world:
    type: world
    debug: false
    events:
        after delta time secondly every:1:
        - run Health_actionbar
        - run Health_task
        after delta time secondly every:2:
        - run Mana_task

Health_task:
    type: task
    debug: false
    script:
    - foreach <server.online_players>:
        - health <[value]> <[value].flag[Profil.Stats.Leben]>

Health_actionbar:
    type: task
    debug: false
    script:
    - actionbar "<gold>۞ <green>❤ <bold><player.health.round>/<player.health_max.round> <aqua>☢ <bold><player.flag[Profil.Stats.Mana]>/<player.flag[Profil.Stats.ManaMax]> <blue>🛡 <bold><player.flag[Profil.Stats.Def]> <gold>۞" per_player targets:<server.online_players>

Mana_task:
  type: task
  debug: false
  script:
  - foreach <server.online_players>:
    - if <[value].flag[Profil.Stats.Mana]> < <[value].flag[Profil.Stats.ManaMax]>:
        - flag <[value]> Profil.Stats.Mana:++