smithing:
    type: world
    events:
        on player right clicks anvil:
        - determine passively cancelled
        - inventory open d:smithing_inventory

smithing_inventory:
    type: inventory
    inventory: chest
    gui: true
    definitions:
      ingots: iron_ingot
      weapons: iron_sword
      tools: iron_pickaxe
      armor: iron_chestplate
    procedural items:
    - define list <list>
    - define page <script[Smithing_data].parsed_key[Page1]>
    - foreach <[page]>:
        - if <[value]> == iron_sword:
                - define item iron_sword
        - define list <[list].include[<[item]>]>
    - determine <[list]>
    slots:
    - [air] [air] [air] [air] [air] [air] [air] [air] [air]
    - [ingots] [air] [] [] [] [] [] [] [air]
    - [weapons] [air] [] [] [] [] [] [] [air]
    - [tools] [air] [] [] [] [] [] [] [air]
    - [armor] [air] [] [] [] [] [] [] [air]
    - [] [] [] [] [] [] [] [] []