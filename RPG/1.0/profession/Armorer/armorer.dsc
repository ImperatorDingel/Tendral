English_Armorer:
  type: data
  Armorer_0: Armorer 0
  Armorer_1: Armorer I
  Armorer_2: Armorer II
  Armorer_3: Armorer III
  Armorer_4: Armorer IV
  Armorer_5: Armorer V
  Armorer_6: Armorer VI
  Armorer_7: Armorer VII
  Armorer_8: Armorer VIII
  Armorer_9: Armorer IX
  Armorer_10: Armorer X
  Armorer_11: Armorer XI
  Armorer_12: Armorer XII
  Armorer_13: Armorer XIII
  Armorer_14: Armorer XIV
  Armorer_15: Armorer XV
  Armorer_16: Armorer XVI
  Armorer_17: Armorer XVII
  Armorer_18: Armorer XVIII
  Armorer_19: Armorer XIX
  Armorer_20: Armorer XX
  Armorer_max: 20
  Armorer_red: Erreiche für die nächsten Stufen erst
  Armorer_stats: ❈ VER +1

German_Armorer:
  type: data
  Armorer_0: Rüstungschmied 0
  Armorer_1: Rüstungschmied I
  Armorer_2: Rüstungschmied II
  Armorer_3: Rüstungschmied III
  Armorer_4: Rüstungschmied IV
  Armorer_5: Rüstungschmied V
  Armorer_6: Rüstungschmied VI
  Armorer_7: Rüstungschmied VII
  Armorer_8: Rüstungschmied VIII
  Armorer_9: Rüstungschmied IX
  Armorer_10: Rüstungschmied X
  Armorer_11: Rüstungschmied XI
  Armorer_12: Rüstungschmied XII
  Armorer_13: Rüstungschmied XIII
  Armorer_14: Rüstungschmied XIV
  Armorer_15: Rüstungschmied XV
  Armorer_16: Rüstungschmied XVI
  Armorer_17: Rüstungschmied XVII
  Armorer_18: Rüstungschmied XVIII
  Armorer_19: Rüstungschmied XIX
  Armorer_20: Rüstungschmied XX
  Armorer_max: 20
  Armorer_red: Erreiche für die nächsten Stufen erst
  Armorer_stats: ❈ VER +1

ArmorerLevel_world:
  type: world
  debug: false
  events:
    after player joins:
    - inject ArmorerLevel
    - run ArmorerXPBar
    after player quits:
    - inject ArmorerLevel
    after delta time secondly every:1:
    - inject ArmorerLevel
    after delta time minutely every:1:
    - run ArmorerXPBar

ArmorerLevel:
    type: task
    debug: false
    script:
      - stop if:<server.online_players.is_empty>
      - foreach <server.online_players> as:p:
        - define exp <[p].flag[Profil.Professions.Armorer.Exp]>
        - define exptarget <[p].flag[Profil.Professions.Armorer.Target]>
        - if <[Exp]> >= <[exptarget]>:
          - flag <[p]> Profil.Professions.Armorer.Level:++
          - flag <[p]> Profil.Professions.Armorer.Exp:-:<[p].flag[Profil.Professions.Armorer.Target]>
          - flag <[p]> Profil.Professions.Armorer.Target:*:2
          - narrate targets:<[p]> "<green><bold><script[Armorer].data_key[Armorer_<[p].flag[Profil.Professions.Armorer.Level].sub[1]>]> erhöhte sich auf <green><bold><script[Armorer].data_key[Armorer_<[p].flag[Profil.Professions.Armorer.Level]>]>" per_player
          - playsound <[p]> sound:ENTITY_PLAYER_LEVELUP volume:1.0 pitch:0.6

ArmorerXPBar:
    type: task
    debug: false
    script:
    - foreach <server.online_players> as:p:
        - define list <list>
        - define zahl 0
        - define exp <[p].flag[Profil.Professions.Armorer.Exp]>
        - define exptarget <[p].flag[Profil.Professions.Armorer.Target]>
        - define raw <[exp].div[<[exptarget]>]>
        - define Prozent <[raw].mul[100].format_number[##.##]>
        - flag <[p]> ArmorerProzent:<[Prozent]>
        - repeat 20:
          - define zahl <[zahl].add[5]>
          - if <[zahl]> == 100:
            - if <[p].flag[ArmorerProzent]> >= 99:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - else:
            - if <[p].flag[ArmorerProzent]> >= <[zahl]>:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - flag <[p]> Profil.ExpBar.Armorer:<[list].unseparated>