CropFarm:
    type: world
    events:
        #Farm Skill on level 5 right clicking crops
        after player right clicks block:
        - if <player.flag[Profil.Skills.Farming.Level]> >= 5:
            - if <context.location.material.age> == <context.location.material.maximum_age>:
                - choose <context.location.material.name>:
                    - case potatoes:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[potato]> <context.location> quantity:<[drop]>
                        - adjustblock <context.location> age:0
                        - run EXPCROP_Wheat
                    - case carrots:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[carrot]> <context.location> quantity:<[drop]>
                        - adjustblock <context.location> age:0
                        - run EXPCROP_Wheat
                    - case wheat:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[wheat]> <context.location> quantity:<[drop]>
                        - adjustblock <context.location> age:0
                        - run EXPCROP_Wheat
                    - case beetroots:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[beetroot]> <context.location> quantity:<[drop]>
                        - adjustblock <context.location> age:0
                        - run EXPCROP_Wheat
                    - case cocoa:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[cocoa_beans]> <context.location> quantity:<[drop]>
                        - adjustblock <context.location> age:0
                        - run EXPCROP_Wheat
        # Player zerstört Block
        on player breaks block:
        # Crop hat maximale größe
        - if <context.location.material.age> == <context.location.material.maximum_age>:
                - choose <context.location.material.name>:
                    - case potatoes:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[potato]> <context.location> quantity:<[drop]>
                        - run EXPCROP_Wheat
                    - case carrots:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[carrot]> <context.location> quantity:<[drop]>
                        - run EXPCROP_Wheat
                    - case wheat:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[wheat]> <context.location> quantity:<[drop]>
                        - run EXPCROP_Wheat
                    - case beetroots:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[beetroot]> <context.location> quantity:<[drop]>
                        - run EXPCROP_Wheat
                    - case cocoa:
                        - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                        - drop <item[cocoa_beans]> <context.location> quantity:<[drop]>
                        - run EXPCROP_Wheat
        # Crop hat nicht die maximale größe
        - else:
            - choose <context.location.material.name>:
                - case melon:
                    - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                    - drop <item[melon_slice]> <context.location> quantity:<[drop]>
                    - run EXPCROP_Wheat
                - case pumpkin:
                    - define drop <util.random.int[1].to[<player.flag[Profil.Skills.Farming.MaxDrop]>]>
                    - drop <item[pumpkin]> <context.location> quantity:<[drop]>
                    - run EXPCROP_Wheat
                - case potatoes:
                    - drop <item[potato]> <context.location> quantity:1
                - case carrots:
                    - drop <item[carrot]> <context.location> quantity:1
                - case wheat:
                    - drop <item[wheat_seeds]> <context.location> quantity:1
                - case beetroots:
                    - drop <item[beetroot_seeds]> <context.location> quantity:1
                - case cocoa:
                    - drop <item[cocoa_beans]> <context.location> quantity:1
EXPCROP_Wheat:
    type: task
    script:
    - flag <player> Profil.Skills.Farming.Exp:+:10
    - actionbar "Farming: +10 Exp <player.flag[Profil.Skills.Farming.Exp]>/<player.flag[Profil.Skills.Farming.Target]>"
