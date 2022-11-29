Level_world:
  type: world
  debug: false
  events:
    after player joins:
    - inject Level_task
    - run LevelXPBar
    after player quits:
    - inject Level_task
    after delta time secondly every:1:
    - inject Level_task
    after delta time secondly every:5:
    - run LevelXPBar

Level_task:
    type: task
    debug: false
    script:
      - stop if:<server.online_players.is_empty>
      - foreach <server.online_players> as:p:
        - define exp <[p].flag[Profil.EXP.Exp]>
        - define exptarget <[p].flag[Profil.EXP.Target]>
        - if <[Exp]> >= <[exptarget]>:
          - flag <[p]> Profil.Level:++
          - flag <[p]> Profil.EXP.Exp:-:<[p].flag[Profil.EXP.Target]>
          - flag <[p]> Profil.EXP.Target:*:1.15
          - flag <[p]> Profil.Stats.Leben:++
          - toast "<gold><bold>Level erhöht von <[p].flag[Profil.Level].sub[1]> zu <[p].flag[Profil.Level]>" icon:player_head[skull_skin=<[p].uuid>] targets:<[p]>
          - playsound <[p]> sound:ENTITY_PLAYER_LEVELUP volume:1.0 pitch:0.6

Level_data:
  type: data
  Level:
  - "<white><bold><&m>======================"
  - "<gold><bold>Level Up!"
  - "<gold><bold>Level erhöht von <player.flag[Profil.Level].sub[1]> zu <player.flag[Profil.Level]>"
  - "<white><bold><&m>======================"

LevelXPBar:
    type: task
    debug: false
    script:
    - foreach <server.online_players> as:p:
        - define list <list>
        - define zahl 0
        - define exp <[p].flag[Profil.EXP.Exp]>
        - define exptarget <[p].flag[Profil.EXP.Target]>
        - define raw <[exp].div[<[exptarget]>]>
        - define Prozent <[raw].mul[100].format_number[##.##]>
        - flag <[p]> LevelProzent:<[Prozent]>
        - repeat 20:
          - define zahl <[zahl].add[5]>
          - if <[zahl]> == 100:
            - if <[p].flag[LevelProzent]> >= 99:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - else:
            - if <[p].flag[LevelProzent]> >= <[zahl]>:
              - define finish <green>-
              - define list <[list].include[<[finish]>]>
            - else:
              - define finish <white>-
              - define list <[list].include[<[finish]>]>
          - flag <[p]> Profil.ExpBar.Level:<[list].unseparated>