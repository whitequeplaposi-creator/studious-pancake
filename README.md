# E-Handel Backend API

Backend API för e-handelsplattformen byggd med Node.js, Express, PostgreSQL och Redis.

## Teknisk Stack

- **Runtime**: Node.js med TypeScript
- **Framework**: Express.js
- **Databas**: PostgreSQL
- **Cache**: Redis
- **Autentisering**: JWT (JSON Web Tokens)
- **Säkerhet**: Helmet, CORS, Rate Limiting

## Installation

### Förutsättningar

1. Node.js (v18 eller senare)
2. PostgreSQL (v14 eller senare)
3. Redis (v6 eller senare)

### Steg

1. Installera beroenden:
```bash
npm install
```

2. Kopiera `.env.example` till `.env` och konfigurera:
```bash
cp .env.example .env
```

3. Skapa databas:
```bash
createdb e_handel_db
```

4. Kör migrationer:
```bash
npm run migrate
```

5. (Valfritt) Seed testdata:
```bash
npm run seed
```

## Utveckling

Starta development server:
```bash
npm run dev
```

Servern körs på `http://localhost:3000`

## API Endpoints

### Autentisering
- `POST /api/auth/register` - Registrera ny användare
- `POST /api/auth/login` - Logga in
- `POST /api/auth/refresh` - Förnya access token

### Produkter
- `GET /api/products` - Hämta alla produkter
- `GET /api/products/:id` - Hämta produkt
- `POST /api/products/search` - Sök produkter
- `GET /api/products/categories` - Hämta kategorier
- `GET /api/products/flash-sales` - Hämta flash-reor

### Varukorg
- `GET /api/cart` - Hämta varukorg
- `POST /api/cart/items` - Lägg till i varukorg
- `PUT /api/cart/items/:id` - Uppdatera antal
- `DELETE /api/cart/items/:id` - Ta bort från varukorg
- `POST /api/cart/coupon` - Applicera kupong

### Beställningar
- `POST /api/orders` - Skapa beställning
- `GET /api/orders` - Hämta beställningar
- `GET /api/orders/:id` - Hämta beställning
- `PUT /api/orders/:id/status` - Uppdatera status

### Recensioner
- `POST /api/reviews` - Skapa recension
- `GET /api/reviews/product/:id` - Hämta recensioner
- `PUT /api/reviews/:id` - Uppdatera recension

### Användare
- `GET /api/users/profile` - Hämta profil
- `PUT /api/users/profile` - Uppdatera profil
- `GET /api/users/wishlist` - Hämta önskelista
- `POST /api/users/wishlist` - Lägg till i önskelista

## Databasstruktur

### Tabeller
- `users` - Användare
- `addresses` - Leveransadresser
- `products` - Produkter
- `carts` - Varukorgar
- `cart_items` - Varukorgsobjekt
- `orders` - Beställningar
- `order_items` - Beställningsobjekt
- `reviews` - Recensioner
- `flash_sales` - Flash-reor
- `coupons` - Rabattkuponger

## Säkerhet

- Lösenord hashas med bcrypt
- JWT för autentisering
- Rate limiting för API-anrop
- CORS konfigurerat
- Helmet för HTTP headers
- Input validering

## Produktion

Bygg projektet:
```bash
npm run build
```

Starta production server:
```bash
npm start
```

## Licens

MIT
