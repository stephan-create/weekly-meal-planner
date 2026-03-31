# Weekly Meal Planner — Claude Cowork Skill

Een skill voor Claude (Cowork mode) die wekelijks meal planning automatiseert: van agenda scannen tot boodschappen in je Picnic-mandje.

## Wat zit er in deze repo?

```
weekly-meal-planner/
├── weekly-meal-planner.skill   ← De skill (installeer in Claude)
├── mcp-picnic/                 ← Picnic supermarkt-koppeling (optioneel)
│   └── (GitHub repo van ivo-toby/mcp-picnic)
└── README.md                   ← Dit bestand
```

## Wat doet het?

1. **Onboarding (~15 min, eenmalig)** — Stel je huishouden in: wie eet er mee, allergieën, budget, kookvoorkeur. Upload optioneel oude boodschappenbonnen om je profiel sneller op te bouwen.
2. **Weekmenu (~5 min, wekelijks)** — Claude scant je agenda, stelt 7 maaltijden voor op basis van je voorkeuren, en toont een interactief overzicht waar je kunt wisselen en goedkeuren.
3. **Recepten exporteren** — Na goedkeuring worden recepten opgeslagen in Notion, Apple Notes, Craft, of als Markdown.
4. **Boodschappenlijst** — Ingrediënten worden samengevoegd, voorraad afgetrokken, en (met Picnic) automatisch in je winkelmandje gezet.

## Installatie

### Stap 1: Installeer de skill

1. Open Claude Desktop (Cowork mode)
2. Sleep het bestand `weekly-meal-planner.skill` in een gesprek
3. Claude installeert de skill automatisch

### Stap 2: Koppel Picnic (optioneel, maar aanbevolen)

Met de Picnic-koppeling zet Claude je boodschappen automatisch in je Picnic-mandje. Scheelt ~10 minuten per week.

1. Zorg dat je een Picnic-account hebt (gratis aanmelden op [picnic.app](https://picnic.app))
2. Sleep de map `mcp-picnic` vanuit Finder in je Claude-gesprek
3. Claude herkent de MCP-server en vraagt om installatie — klik op **Install**
4. Vul je Picnic-inloggegevens in (email + wachtwoord)
5. Herstart Claude volledig (**Cmd+Q**, opnieuw openen)

> **Let op:** Log je bij Picnic in via Google of Apple? Dan heb je mogelijk geen wachtwoord. Stel er eerst een in via de Picnic app (Instellingen → Account → Wachtwoord wijzigen).

### Stap 3: Start de meal planner

Zeg in een nieuw gesprek:

> "Weekmenu" of "Wat eten we deze week?"

Bij de eerste keer start de onboarding. Daarna duurt het wekelijks ~5 minuten.

## Vereisten

- **Claude Desktop** met Cowork mode
- **Google Calendar** gekoppeld (voor automatische agenda-scan — werkt ook zonder, dan vul je handmatig in)
- **Picnic account** (optioneel — zonder Picnic krijg je een gewone boodschappenlijst)
- **Node.js v18+** (vereist voor de Picnic MCP-server)

## Credits

- Picnic MCP server: [ivo-toby/mcp-picnic](https://github.com/ivo-toby/mcp-picnic) (unofficial)
- Skill gebouwd door Stephan Lems
