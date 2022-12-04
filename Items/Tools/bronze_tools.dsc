bronze_pickaxe:
    type: item
    material: iron_pickaxe
    display name: <gold><bold>۞ Bronze Pickaxe <gold><bold>۞
    data:
        price: 90
        Break_power: 2
        Damage: 2
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_pickaxe].data_key[data.damage]>
    - <gold><bold>۞ Break Power<&co><&sp><script[bronze_pickaxe].data_key[data.break_power]>
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_pickaxe].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot
            - <item[air]>|<item[stick]>|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>

bronze_axe:
    type: item
    material: iron_axe
    display name: <gold><bold>۞ Bronze Axe <gold><bold>۞
    data:
        price: 90
        Break_power: 2
        Damage: 3
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_axe].data_key[data.damage]>
    - <gold><bold>۞ Break Power<&co><&sp><script[bronze_axe].data_key[data.break_power]>
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_axe].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|Tendral_bronze_ingot|<item[air]>
            - Tendral_bronze_ingot|<item[stick]>|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>
        2:
          type: shaped
          input:
            - <item[air]>|Tendral_bronze_ingot|Tendral_bronze_ingot
            - <item[air]>|<item[stick]>|Tendral_bronze_ingot
            - <item[air]>|<item[stick]>|<item[air]>

bronze_shovel:
    type: item
    material: iron_shovel
    display name: <gold><bold>۞ Bronze Shovel <gold><bold>۞
    data:
        price: 30
        Break_power: 2
        Damage: 1
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_shovel].data_key[data.damage]>
    - <gold><bold>۞ Break Power<&co><&sp><script[bronze_shovel].data_key[data.break_power]>
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_shovel].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - <item[air]>|Tendral_bronze_ingot|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>

bronze_hoe:
    type: item
    material: iron_hoe
    display name: <gold><bold>۞ Bronze Hoe <gold><bold>۞
    data:
        price: 60
        Break_power: 2
        Damage: 1
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_hoe].data_key[data.damage]>
    - <gold><bold>۞ Break Power<&co><&sp><script[bronze_hoe].data_key[data.break_power]>
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_hoe].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|Tendral_bronze_ingot|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>
        2:
          type: shaped
          input:
            - <item[air]>|Tendral_bronze_ingot|Tendral_bronze_ingot
            - <item[air]>|<item[stick]>|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>

bronze_sword:
    type: item
    material: iron_sword
    display name: <gold><bold>۞ Bronze Sword <gold><bold>۞
    data:
        price: 60
        Break_power: 2
        Damage: 5
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_sword].data_key[data.damage]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_sword].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - <item[air]>|Tendral_bronze_ingot|<item[air]>
            - <item[air]>|Tendral_bronze_ingot|<item[air]>
            - <item[air]>|<item[stick]>|<item[air]>

bronze_big_sword:
    type: item
    material: iron_sword
    display name: <gold><bold>۞ Bronze Big Sword <gold><bold>۞
    data:
        price: 180
        Break_power: 2
        Damage: 10
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_big_sword].data_key[data.damage]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_big_sword].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - <item[air]>|Tendral_bronze_ingot|Tendral_bronze_ingot
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot
            - <item[stick]>|Tendral_bronze_ingot|<item[air]>

bronze_spear:
    type: item
    material: iron_sword
    display name: <gold><bold>۞ Bronze Spear <gold><bold>۞
    data:
        price: 30
        Break_power: 2
        Damage: 3
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Damage<&co><&sp><script[bronze_spear].data_key[data.damage]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_spear].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - <item[air]>|<item[air]>|Tendral_bronze_ingot
            - <item[air]>|<item[stick]>|<item[air]>
            - <item[stick]>|<item[air]>|<item[air]>

bronze_helmet:
    type: item
    material: iron_helmet
    display name: <gold><bold>۞ Bronze Helmet <gold><bold>۞
    data:
        price: 150
        Break_power: 2
        Defense: 3
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Defense<&co><&sp><script[bronze_helmet].data_key[data.defense]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_helmet].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot
            - <item[air]>|<item[air]>|<item[air]>

bronze_chestplate:
    type: item
    material: iron_chestplate
    display name: <gold><bold>۞ Bronze Chestplate <gold><bold>۞
    data:
        price: 240
        Break_power: 2
        Defense: 5
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Defense<&co><&sp><script[bronze_chestplate].data_key[data.defense]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_chestplate].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot

bronze_leggings:
    type: item
    material: iron_leggings
    display name: <gold><bold>۞ Bronze Leggings <gold><bold>۞
    data:
        price: 210
        Break_power: 2
        Defense: 4
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Defense<&co><&sp><script[bronze_leggings].data_key[data.defense]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_leggings].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - Tendral_bronze_ingot|Tendral_bronze_ingot|Tendral_bronze_ingot
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot

bronze_boots:
    type: item
    material: iron_boots
    display name: <gold><bold>۞ Bronze Boots <gold><bold>۞
    data:
        price: 210
        Break_power: 2
        Defense: 2
    mechanisms:
      hides: all
    lore:
    - <gold><bold>۞ Defense<&co><&sp><script[bronze_boots].data_key[data.defense]>
    - <gold><bold>۞
    - <gold><bold>۞
    - <gold><bold>۞ Preis<&co>
    - <gold><bold>۞ <script[bronze_boots].data_key[data.price].proc[Economy_Tendral_proc2]>
    flags:
      Break_power: 2
      Damage: 2
    recipes:
        1:
          type: shaped
          input:
            - <item[air]>|<item[air]>|<item[air]>
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot
            - Tendral_bronze_ingot|<item[air]>|Tendral_bronze_ingot