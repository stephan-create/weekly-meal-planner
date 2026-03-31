# Weekly Meal Planner — Claude Cowork Skill

Een skill voor Claude (Cowork mode) die wekelijks meal planning automatiseert: van agenda scannen tot boodschappen in je Picnic-mandje.

## Wat zit er in deze repo?

```
weekly-meal-planner/
├── weekly-meal-planner.skill   ← De skill (installeer in Claude)
├── meal-planner.mcpb           ← MCP server: data-opslag + Picnic-koppeling
└── README.md                   ← Dit bestand
```

## Wat doet het?

1. **Onboarding (~15 min, eenmalig)** — Stel je huishouden in: wie eet er mee, allergieën, budget, kookvoorkeur. Upload optioneel oude boodschappenbonnen om je profiel sneller op te bouwen.
2. **Weekmenu (~5 min, wekelijks)** — Claude scant je agenda, stelt 7 maaltijden voor op basis van je voorkeuren, en toont een interactief overzicht waar je kunt wisselen en goedkeuren.
3. **Recepten exporteren** — Na goedkeuring worden recepten opgeslagen in Notion, Apple Notes, Craft, of als Markdown.
4. **Boodschappenlijst** — Ingrediënten worden samengevoegd, voorraad afgetrokken, en (met Picnic) automatisch in je winkelmandje gezet.

## Installatie

### Stap 1: Installeer de MCP server

De MCP server slaat je profiel, recepten en weekplannen op in een lokale database. Optioneel koppelt hij ook je Picnic-account voor automatisch boodschappen doen.

1. Dubbelklik op `meal-planner.mcpb` — Claude Desktop opent het installatievenster
2. **Picnic-klant?** Vul je Picnic-inloggegevens in (email + wachtwoord). **Geen Picnic?** Laat de velden leeg — je krijgt dan een gewone boodschappenlijst.
3. Herstart Claude volledig (**Cmd+Q**, opnieuw openen)

> **Let op:** Log je bij Picnic in via Google of Apple? Dan heb je mogelijk geen wachtwoord. Stel er eerst een in via de Picnic app (Instellingen → Account → Wachtwoord wijzigen).

### Stap 2: Installeer de skill

1. Open Claude Desktop (Cowork mode)
2. Sleep het bestand `weekly-meal-planner.skill` in een gesprek
3. Claude installeert de skill automatisch

### Stap 3: Start de meal planner

Zeg in een nieuw gesprek:

> "Weekmenu" of "Wat eten we deze week?"

Bij de eerste keer start de onboarding. Daarna duurt het wekelijks ~5 minuten.

## Vereisten

- **Claude Desktop** met Cowork mode
- **Google Calendar** gekoppeld (voor automatische agenda-scan — werkt ook zonder, dan vul je handmatig in)
- **Picnic account** (optioneel — zonder Picnic krijg je een gewone boodschappenlijst)

## Credits

- Picnic MCP server: [ivo-toby/mcp-picnic](https://github.com/ivo-toby/mcp-picnic) (unofficial)
- Skill gebouwd door Stephan Lems
