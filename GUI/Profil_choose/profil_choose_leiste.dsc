Profil_choose_Leiste:
    type: world
    debug: true
    events:
        on player clicks Profil_choose_item in inventory:
        - if <context.slot> == 5:
            - determine passively cancelled
            - inventory open d:Menu
            - determine cancelled
        on player drags in player.inventory:
        - if <context.slot> == 5:
            - determine cancelled
        on player drops Profil_choose_item:
        - determine cancelled
        on player swaps items offhand:Profil_choose_item:
        - determine cancelled
        on player right clicks block with:Profil_choose_item:
        - ratelimit <player> 2
        - determine passively cancelled
        - inventory open d:Profil_creation_gui
        on player left clicks block with:Profil_choose_item:
        - determine passively cancelled
        - ratelimit <player> 1
        - determine passively cancelled
        - inventory open d:Profil_creation_gui
