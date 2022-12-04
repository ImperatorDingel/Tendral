tendral_tin_ingot:
    type: item
    material: copper_ingot
    display name: <gold><bold>۞ Tin Ingot <gold><bold>۞
    data:
        price: 25
    lore:
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[tendral_tin_ingot].data_key[data.price].proc[Economy_Tendral_proc2]>
    recipes:
        1:
           type: furnace
           cook_time: 3s
           experience: 0
           input: tin_raw_ore
           #output: 1
        2:
           type: furnace
           cook_time: 9s
           experience: 0
           input: little_tin_raw_ore
           #output: 3
        3:
           type: furnace
           cook_time: 15s
           experience: 0
           input: middle_tin_raw_ore
           #output: 5
        4:
           type: furnace
           cook_time: 21s
           experience: 0
           input: big_tin_raw_ore
           #output: 7