Bugreport:
    type: command
    name: Bugreport
    description: Does something
    usage: /Bugreport <&lt>arg<&gt>
    permission: dscript.mycmd
    tab completions:
        default: Erkläre deinen Bug
    script:
    - flag server Bugreport.Anzahl:++
    - define ID <server.flag[Bugreport.Anzahl]>
    - flag server Bugreport.Liste:->:<[ID]>
    - definemap Bugreport:
            ID: <[ID]>
            Begründung: <context.args.get[1].to[last]>
            Absender: <player.uuid.as_player>
    - flag server Bugreport.Bugreports.<[ID]>:<[Bugreport]>
    - narrate "Bugreport wurde abgesendet für <context.args.get[1].to[last].space_separated>"
    - ~log "#<[ID]>: <player.name>: Bug: <context.args.get[1].to[last].space_separated>" type:warning file:/tendrallogs/bugs/bugs.log

BugreportGui:
    type: command
    name: BugreportGui
    description: Does something
    usage: /BugreportGui <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - inventory open d:Bugreport_Gui

Bugreport_Gui:
  type: inventory
  inventory: chest
  gui: true
  title: <gold>۞ Bugreport
  definitions:
    name: item
  procedural items:
    - define result <list>
    - foreach <server.flag[Bugreport.Liste]>:
        - define ID <server.flag[Bugreport.Bugreports.<[value]>.ID]>
        - define absender <server.flag[Bugreport.Bugreports.<[value]>.Absender]>
        - define Grund <server.flag[Bugreport.Bugreports.<[value]>.Begründung].space_separated>
        - define name <server.flag[Bugreport.Bugreports.<[value]>.Person]>
        - define item grass_block[display_name=<gold>۞<&sp>Bugreport<&sp>#<[ID]>;lore=<script[Bugreport_Data].parsed_key[Bugreport].separated_by[<&nl>]>]
        - define result <[result].include[<[item]>]>
    - determine <[result]>
  slots:
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []

Bugreport_Data:
  type: data
  Bugreport:
    - "<white><bold><&m>======================"
    - "<gold>۞ Bug: <[Grund]>"
    - "<gold>۞"
    - "<gold>۞ Absender: <[absender].name>"
    - "<gold>۞ ID: <[ID]>"
    - "<white><bold><&m>======================"