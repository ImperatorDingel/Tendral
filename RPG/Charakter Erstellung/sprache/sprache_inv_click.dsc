language_click:
    type: world
    events:
        on player clicks item in Language:
        - choose <context.slot>:
            - case 12:
                - flag <player> Profil.Language:german
                - narrate "Sprache: Deutsch"
            - case 16:
                - flag <player> Profil.Language:english
                - narrate "Language: English"