NewRaceInventory:
    type: inventory
    inventory: CHEST
    title: <dark_red><bold><script[<player.flag[Profil.Language]>].parsed_key[Rasse]>
    gui: true
    debug: true
    definitions:
      w: arrow[display_name=<green><bold>Fertig]
    procedural items:
    - define list <list>
    - define Race <script[Race_Data].parsed_key[Rassenliste].as_list>
    - foreach <[Race]>:
        - if <[value]> == Mensch:
            - if <player.flag[RaceAuswahl.Rasse]> == Mensch:
                - define item green_dye[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]><n><green><bold><script[<player.flag[Profil.Language]>].parsed_key[Auswahl]>]
                - define list <[list].include[<[item]>]>
            - else:
                - define item paper[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]>]
                - define list <[list].include[<[item]>]>
        - if <[value]> == Elf:
            - if <player.flag[RaceAuswahl.Rasse]> == Elf:
                - define item green_dye[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]><n><green><bold><script[<player.flag[Profil.Language]>].parsed_key[Auswahl]>]
                - define list <[list].include[<[item]>]>
            - else:
                - define item paper[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]>]
                - define list <[list].include[<[item]>]>
        - if <[value]> == Zwerg:
            - if <player.flag[RaceAuswahl.Rasse]> == Zwerg:
                - define item green_dye[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]><n><green><bold><script[<player.flag[Profil.Language]>].parsed_key[Auswahl]>]
                - define list <[list].include[<[item]>]>
            - else:
                - define item paper[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>_lore].separated_by[<&nl>]>]
                - define list <[list].include[<[item]>]>
        - if <[value]> == PlayerHead:
            - define item player_head[display_name=<script[<player.flag[Profil.Language]>].parsed_key[Player]>;lore=<script[<player.flag[Profil.Language]>].parsed_key[Player_lore].separated_by[<&nl>]>;skull_skin=<player.uuid>]
            - define list <[list].include[<[item]>]>
        - if <[value]> == Platzhalter:
            - define item paper[display_name=<script[<player.flag[Profil.Language]>].parsed_key[<[value]>]>]
            - define list <[list].include[<[item]>]>
    - determine <[list]>
    slots:
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [] [air] [] [air] [] [air] [] [air] []
    - [air] [air] [air] [air] [air] [w] [air] [air] [air]
