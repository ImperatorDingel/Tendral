Command_Script_Name:
    type: command
    name: ticket
    description: Ticket und so
    usage: /ticket <&lt>myArg1<&gt>
    # Person
    # Report
    # Absender
    script:
    - narrate Käsekuchen
    - narrate "Käsekuchen²"

Report:
    type: command
    name: Report
    description: Does something
    usage: /report <&lt>arg<&gt>
    permission: dscript.mycmd
    tab completions:
        1: <server.online_players.parse[name]>
        2: Grund
    script:
    - flag server Report.Anzahl:++
    - define ID <server.flag[Report.Anzahl]>
    - flag server Report.Liste:->:<[ID]>
    - definemap Report:
            ID: <[ID]>
            Person: <server.match_player[<context.args.get[1]>]>
            Begründung: <context.args.get[2].to[last]>
            Absender: <player.uuid.as_player>
    - flag server Report.Reports.<[ID]>:<[Report]>
    - narrate "Report wurde abgesendet für <context.args.get[1]>"
    - narrate <server.match_player[<context.args.get[1]>]>
    - narrate <player.uuid.as_player>

ReportGui:
    type: command
    name: ReportGui
    description: Does something
    usage: /ReportGui <&lt>arg<&gt>
    permission: dscript.mycmd
    script:
    - inventory open d:Report_Gui

Report_Gui:
  type: inventory
  inventory: chest
  gui: true
  title: <gold>۞ Report
  definitions:
    name: item
  procedural items:
    - define result <list>
    - foreach <server.flag[Report.Liste]>:
        - define ID <server.flag[Report.Reports.<[value]>.ID]>
        - define absender <server.flag[Report.Reports.<[value]>.Absender]>
        - define Grund <server.flag[Report.Reports.<[value]>.Begründung].space_separated>
        - define name <server.flag[Report.Reports.<[value]>.Person]>
        - define item grass_block[display_name=<gold>۞<&sp>Report<&sp>#<[ID]>;lore=<script[Report_Data].parsed_key[Report].separated_by[<&nl>]>]
        - define result <[result].include[<[item]>]>
    - determine <[result]>
  slots:
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []
  - [] [] [] [] [] [] [] [] []

Report_Data:
  type: data
  Report:
    - "<white><bold><&m>======================"
    - "<gold>۞ Person: <[name].name>"
    - "<gold>۞ Grund: <[Grund]>"
    - "<gold>۞"
    - "<gold>۞ Absender: <[absender].name>"
    - "<gold>۞ ID: <[ID]>"
    - "<white><bold><&m>======================"