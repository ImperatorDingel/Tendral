Tendral_bronze_ingot:
    type: item
    material: copper_ingot
    display name: <gold><bold>۞ Bronze Ingot <gold><bold>۞
    data:
        price: 30
    lore:
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[Tendral_bronze_ingot].data_key[data.price].proc[Economy_Tendral_proc2]>
    recipes:
        1:
           type: smithing
           base: <item[Tendral_copper_ingot]>
           upgrade: <item[tendral_tin_ingot]>
        2:
            type: shapeless
            input: <item[Tendral_copper_ingot]>|<item[Tendral_copper_ingot]>|<item[tendral_tin_ingot]>