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
           # Smithing recipes take one base item and one upgrade item.
           type: smithing
           base: <item[Tendral_copper_ingot]>
           # Optionally, choose what values to retain, as a simple pipe-separated list of parts to retain.
           # If unspecified, no values will be retained.
           # Parts can be: 'display', 'enchantments'
           upgrade: <item[tendral_tin_ingot]>