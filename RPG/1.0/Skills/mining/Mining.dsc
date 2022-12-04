English_Mining:
  type: data
  Mining_0: Mining 0
  Mining_1: Mining I
  Mining_2: Mining II
  Mining_3: Mining III
  Mining_4: Mining IV
  Mining_5: Mining V
  Mining_6: Mining VI
  Mining_7: Mining VII
  Mining_8: Mining VIII
  Mining_9: Mining IX
  Mining_10: Mining X
  Mining_11: Mining XI
  Mining_12: Mining XII
  Mining_13: Mining XIII
  Mining_14: Mining XIV
  Mining_15: Mining XV
  Mining_16: Mining XVI
  Mining_17: Mining XVII
  Mining_18: Mining XVIII
  Mining_19: Mining XIX
  Mining_20: Mining XX
  Mining_max: 20
  Mining_red: Erreiche für die nächsten Stufen erst
  Mining_stats: ❈ VER +1

German_Mining:
  type: data
  Mining_0: Bergarbeiter 0
  Mining_1: Bergarbeiter I
  Mining_2: Bergarbeiter II
  Mining_3: Bergarbeiter III
  Mining_4: Bergarbeiter IV
  Mining_5: Bergarbeiter V
  Mining_6: Bergarbeiter VI
  Mining_7: Bergarbeiter VII
  Mining_8: Bergarbeiter VIII
  Mining_9: Bergarbeiter IX
  Mining_10: Bergarbeiter X
  Mining_11: Bergarbeiter XI
  Mining_12: Bergarbeiter XII
  Mining_13: Bergarbeiter XIII
  Mining_14: Bergarbeiter XIV
  Mining_15: Bergarbeiter XV
  Mining_16: Bergarbeiter XVI
  Mining_17: Bergarbeiter XVII
  Mining_18: Bergarbeiter XVIII
  Mining_19: Bergarbeiter XIX
  Mining_20: Bergarbeiter XX
  Mining_max: 20
  Mining_red: Erreiche für die nächsten Stufen erst
  Mining_stats: ❈ VER +1

MiningLevel_world:
  type: world
  debug: false
  events:
    after player joins:
    - inject MiningLevel
    - run MiningXPBar
    after player quits:
    - inject MiningLevel
    after delta time secondly every:1:
    - inject MiningLevel
    after delta time minutely every:1:
    - run MiningXPBar

MiningLevel:
    type: task
    debug: false
    script:
      - stop if:<server.online_players.is_empty>
      - foreach <server.online_players_flagged[Profil]> as:p:
        - define exp <[p].flag[<[p].flag[Profil]>.Skills.Mining.Exp]>
        - define exptarget <[p].flag[<[p].flag[Profil]>.Skills.Mining.Target]>
        - if <[Exp]> >= <[exptarget]>:
          - flag <[p]> <[p].flag[Profil]>.Skills.Mining.Level:++
          - flag <[p]> <[p].flag[Profil]>.Skills.Mining.Exp:-:<[p].flag[<[p].flag[Profil]>.Skills.Mining.Target]>
          - flag <[p]> <[p].flag[Profil]>.Skills.Mining.Target:*:1.25
          - flag <[p]> <[p].flag[Profil]>.Skills.Mining.MaxDrop:++
          - flag <[p]> <[p].flag[Profil]>.Stats.Def:++
          - narrate targets:<[p]> "<green><bold><script[Mining].data_key[Mining_<[p].flag[<[p].flag[Profil]>.Skills.Mining.Level].sub[1]>]> erhöhte sich auf <green><bold><script[Mining].data_key[Mining_<[p].flag[Profil.Skills.Mining.Level]>]>" per_player
          - playsound <[p]> sound:ENTITY_PLAYER_LEVELUP volume:1.0 pitch:0.6

MiningXPBar:
    type: task
    debug: false
    script:
    - foreach <server.online_players_flagged[Profil]> as:p:
        - define list <list>
        - define zahl 0
        - define exp <[p].flag[<[p].flag[Profil]>.Skills.Mining.Exp]>
        - define exptarget <[p].flag[<[p].flag[Profil]>.Skills.Mining.Target]>
        - define raw <[exp].div[<[exptarget]>]>
        - define Prozent <[raw].mul[100].format_number[##.##]>
        - flag <[p]> <[p].flag[Profil]>.ExpProzent.MiningProzent:<[Prozent]>
        - repeat 20:
          - define zahl <[zahl].add[5]>
          - if <[zahl]> == 100:
            - if <[p].flag[<[p].flag[Profil]>.ExpProzent.MiningProzent]> >= 99:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - else:
            - if <[p].flag[<[p].flag[Profil]>.ExpProzent.MiningProzent]> >= <[zahl]>:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - flag <[p]> <[p].flag[Profil]>.ExpBar.Mining:<[list].unseparated>