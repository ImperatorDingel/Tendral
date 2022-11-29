Leiste:
    type: world
    debug: true
    events:
        on player clicks MenuStern in inventory:
        - if <context.slot> == 9:
            - determine passively cancelled
            - inventory open d:Menu
            - determine cancelled
        on player clicks RucksackItem in inventory:
        - if <context.slot> == 8:
            - determine passively cancelled
            - inventory open d:<player.flag[Profil.Rucksack]>
            - determine cancelled
        on player drags in player.inventory:
        - if <context.slot> == 8:
            - determine cancelled
        - if <context.slot> == 9:
            - determine cancelled
        on player drops MenuStern:
            - determine cancelled
        on player drops RucksackItem:
            - determine cancelled