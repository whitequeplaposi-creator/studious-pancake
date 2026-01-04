# Kravdokument

## Introduktion

Detta dokument beskriver kraven för en kraftfull e-handelsplattform inspirerad av Temu, som möjliggör för användare att bläddra bland tusentals produkter, dra nytta av erbjudanden och kampanjer, och genomföra köp med en modern och engagerande användarupplevelse.

## Ordlista

- **Systemet**: E-handelsplattformen och dess backend-tjänster
- **Användare**: En person som besöker och interagerar med plattformen
- **Produkt**: En vara som är tillgänglig för köp
- **Varukorg**: En tillfällig samling av produkter som användaren valt
- **Beställning**: En bekräftad transaktion av produkter från varukorgen
- **Administratör**: En person med behörighet att hantera produkter och beställningar
- **Flash-rea**: Tidsbegränsade erbjudanden med kraftiga rabatter
- **Kategori**: En gruppering av relaterade produkter
- **Önskelista**: En sparad lista över produkter som användaren är intresserad av
- **Produktrecension**: En användares bedömning och kommentar om en produkt
- **Kuponger**: Rabattkoder som kan appliceras vid köp

## Krav

### Krav 1

**Användarberättelse:** Som en användare vill jag se en dynamisk startsida med personliga rekommendationer och erbjudanden, så att jag snabbt kan upptäcka intressanta produkter.

#### Acceptanskriterier

1. NÄR en användare besöker startsidan SKA Systemet visa en karusell med aktuella kampanjer och flash-reor
2. NÄR en användare scrollar på startsidan SKA Systemet visa sektioner för olika kategorier med produktförslag
3. NÄR en användare är inloggad SKA Systemet visa personliga produktrekommendationer baserat på tidigare beteende
4. NÄR en användare ser produkter på startsidan SKA Systemet visa produktbild, pris, originalspris med genomstruken text och rabatt i procent
5. NÄR startsidan laddas SKA Systemet visa en räknare för pågående flash-reor med tid kvar

### Krav 2

**Användarberättelse:** Som en användare vill jag kunna söka och filtrera bland tusentals produkter, så att jag snabbt kan hitta exakt vad jag letar efter.

#### Acceptanskriterier

1. NÄR en användare skriver i sökfältet SKA Systemet visa sökförslag i realtid
2. NÄR en användare söker efter en term SKA Systemet visa matchande produkter sorterade efter relevans
3. NÄR en användare är på en sökresultatsida SKA Systemet visa filtreringsalternativ för pris, kategori, betyg och leveranstid
4. NÄR en användare applicerar filter SKA Systemet uppdatera produktlistan utan att ladda om sidan
5. NÄR en användare väljer sortering SKA Systemet ordna produkter enligt valt kriterium (pris låg-hög, pris hög-låg, popularitet, nyast)

### Krav 2

**Användarberättelse:** Som en användare vill jag kunna söka och filtrera bland tusentals produkter, så att jag snabbt kan hitta exakt vad jag letar efter.

#### Acceptanskriterier

1. NÄR en användare skriver i sökfältet SKA Systemet visa sökförslag i realtid
2. NÄR en användare söker efter en term SKA Systemet visa matchande produkter sorterade efter relevans
3. NÄR en användare är på en sökresultatsida SKA Systemet visa filtreringsalternativ för pris, kategori, betyg och leveranstid
4. NÄR en användare applicerar filter SKA Systemet uppdatera produktlistan utan att ladda om sidan
5. NÄR en användare väljer sortering SKA Systemet ordna produkter enligt valt kriterium (pris låg-hög, pris hög-låg, popularitet, nyast)

### Krav 3

**Användarberättelse:** Som en användare vill jag se detaljerad produktinformation med bilder och recensioner, så att jag kan fatta ett välgrundat köpbeslut.

#### Acceptanskriterier

1. NÄR en användare klickar på en produkt SKA Systemet visa en produktsida med flera produktbilder i en bildgalleri
2. NÄR en användare är på en produktsida SKA Systemet visa produktnamn, aktuellt pris, originalspris, rabatt, beskrivning och specifikationer
3. NÄR en användare scrollar på produktsidan SKA Systemet visa användarrecensioner med betyg, kommentarer och bilder
4. NÄR en användare är på en produktsida SKA Systemet visa liknande produkter och "Köptes ofta tillsammans"-förslag
5. NÄR en användare klickar på en produktbild SKA Systemet visa bilden i fullskärmsläge med zoomfunktion

### Krav 4

**Användarberättelse:** Som en användare vill jag kunna lägga till produkter i varukorgen och se totalkostnaden, så att jag kan samla mina köp innan betalning.

#### Acceptanskriterier

1. NÄR en användare klickar på "Lägg till i varukorg" SKA Systemet lägga till produkten och visa en bekräftelse
2. NÄR en produkt läggs till SKA Systemet uppdatera varukorgsikonen med antal produkter
3. NÄR en användare öppnar varukorgen SKA Systemet visa alla produkter med bild, namn, pris, antal och delsumma
4. NÄR en användare ändrar antal SKA Systemet uppdatera delsumman och totalsumman omedelbart
5. NÄR varukorgen visas SKA Systemet visa totalsumma, eventuella rabatter och beräknad leveranskostnad

### Krav 5

**Användarberättelse:** Som en användare vill jag kunna använda kuponger och se rabatter, så att jag kan spara pengar på mina köp.

#### Acceptanskriterier

1. NÄR en användare är i varukorgen SKA Systemet visa ett fält för att ange kupongkod
2. NÄR en användare anger en giltig kupongkod SKA Systemet applicera rabatten och uppdatera totalsumman
3. OM en användare anger en ogiltig kupongkod SKA Systemet visa ett felmeddelande
4. NÄR en rabatt appliceras SKA Systemet visa rabattbeloppet tydligt i varukorgen
5. NÄR en användare är inloggad SKA Systemet visa tillgängliga kuponger för användaren

### Krav 6

**Användarberättelse:** Som en användare vill jag kunna genomföra en snabb och säker betalning, så att jag kan slutföra mitt köp enkelt.

#### Acceptanskriterier

1. NÄR en användare klickar på "Gå till kassan" SKA Systemet visa ett formulär för leveransadress
2. NÄR en användare fyller i leveransadress SKA Systemet visa tillgängliga leveransalternativ med pris och beräknad leveranstid
3. NÄR en användare väljer betalningsmetod SKA Systemet visa alternativ för kreditkort, PayPal och andra populära betalningslösningar
4. NÄR en användare slutför betalningen SKA Systemet skapa beställningen och visa en bekräftelsesida med beställningsnummer
5. OM betalningen misslyckas SKA Systemet visa ett felmeddelande och behålla varukorgen intakt

### Krav 7

**Användarberättelse:** Som en användare vill jag kunna spara produkter i en önskelista, så att jag kan komma tillbaka till dem senare.

#### Acceptanskriterier

1. NÄR en användare klickar på hjärtikonen på en produkt SKA Systemet lägga till produkten i önskelistan
2. NÄR en produkt läggs till i önskelistan SKA Systemet visa en visuell bekräftelse
3. NÄR en användare öppnar sin önskelista SKA Systemet visa alla sparade produkter med aktuellt pris
4. NÄR en användare tar bort en produkt från önskelistan SKA Systemet ta bort produkten omedelbart
5. NÄR priset på en produkt i önskelistan ändras SKA Systemet visa det nya priset

### Krav 8

**Användarberättelse:** Som en användare vill jag kunna skriva och läsa produktrecensioner, så att jag kan dela mina erfarenheter och lära av andra.

#### Acceptanskriterier

1. NÄR en användare har köpt en produkt SKA Systemet tillåta användaren att skriva en recension
2. NÄR en användare skriver en recension SKA Systemet kräva ett betyg från ett till fem stjärnor och en kommentar
3. NÄR en recension skickas in SKA Systemet spara recensionen och visa den på produktsidan
4. NÄR en användare läser recensioner SKA Systemet visa dem sorterade efter mest hjälpsamma eller nyaste
5. NÄR en användare ser en recension SKA Systemet visa recensentens namn, betyg, kommentar, datum och eventuella bilder

### Krav 9

**Användarberättelse:** Som en användare vill jag kunna skapa ett konto och hantera min profil, så att jag kan spara mina uppgifter och följa mina beställningar.

#### Acceptanskriterier

1. NÄR en användare registrerar sig SKA Systemet kräva e-postadress och lösenord
2. NÄR en användare loggar in med giltiga uppgifter SKA Systemet autentisera användaren och ge åtkomst till kontofunktioner
3. OM en användare loggar in med ogiltiga uppgifter SKA Systemet visa ett felmeddelande
4. NÄR en inloggad användare öppnar sin profil SKA Systemet visa beställningshistorik, sparade adresser och betalningsmetoder
5. NÄR en användare uppdaterar profiluppgifter SKA Systemet spara ändringarna omedelbart

### Krav 10

**Användarberättelse:** Som en användare vill jag kunna följa mina beställningar, så att jag vet när mina produkter kommer att levereras.

#### Acceptanskriterier

1. NÄR en användare öppnar beställningshistoriken SKA Systemet visa alla beställningar med datum, beställningsnummer och status
2. NÄR en användare klickar på en beställning SKA Systemet visa detaljerad information om produkter, leveransadress och spårningsinformation
3. NÄR en beställningsstatus uppdateras SKA Systemet visa den nya statusen i realtid
4. NÄR en beställning har skickats SKA Systemet visa ett spårningsnummer och länk till fraktbolaget
5. NÄR en användare vill returnera en produkt SKA Systemet visa returalternativ och instruktioner

### Krav 11

**Användarberättelse:** Som en administratör vill jag kunna hantera produktkatalogen, så att jag kan hålla plattformen uppdaterad med nya produkter och priser.

#### Acceptanskriterier

1. NÄR en administratör är inloggad SKA Systemet visa en administratörspanel
2. NÄR en administratör lägger till en produkt SKA Systemet kräva namn, beskrivning, pris, kategori och minst en bild
3. NÄR en administratör redigerar en produkt SKA Systemet uppdatera produktinformationen omedelbart
4. NÄR en administratör tar bort en produkt SKA Systemet dölja produkten från katalogen
5. NÄR en administratör skapar en flash-rea SKA Systemet kräva produkter, rabatt och tidsperiod

### Krav 12

**Användarberättelse:** Som en administratör vill jag kunna hantera beställningar och kunder, så att jag kan ge god kundservice.

#### Acceptanskriterier

1. NÄR en administratör öppnar beställningshanteringen SKA Systemet visa alla beställningar med filter för status och datum
2. NÄR en administratör klickar på en beställning SKA Systemet visa fullständig information inklusive kundinformation och produkter
3. NÄR en administratör uppdaterar beställningsstatus SKA Systemet spara ändringen och logga tidsstämpel
4. NÄR en administratör söker efter en kund SKA Systemet visa kundens profil och beställningshistorik
5. NÄR en administratör skapar en kupong SKA Systemet kräva kupongkod, rabatt och giltighetstid

### Krav 13

**Användarberättelse:** Som en användare vill jag ha en responsiv design som fungerar på alla enheter, så att jag kan handla från mobil, surfplatta eller dator.

#### Acceptanskriterier

1. NÄR en användare besöker plattformen från en mobil enhet SKA Systemet visa en mobiloptimerad layout
2. NÄR en användare roterar sin enhet SKA Systemet anpassa layouten till den nya orienteringen
3. NÄR en användare använder touch-gester SKA Systemet svara på swipe, pinch-to-zoom och andra touch-interaktioner
4. NÄR en användare besöker från en surfplatta SKA Systemet visa en layout optimerad för surfplattans skärmstorlek
5. NÄR en användare besöker från en dator SKA Systemet visa full desktop-layout med alla funktioner

### Krav 14

**Användarberättelse:** Som en användare vill jag ha snabba laddningstider och smidig navigation, så att jag kan handla effektivt utan väntetid.

#### Acceptanskriterier

1. NÄR en användare laddar en sida SKA Systemet visa innehållet inom två sekunder
2. NÄR en användare navigerar mellan sidor SKA Systemet ladda innehåll utan att ladda om hela sidan
3. NÄR en användare scrollar SKA Systemet ladda bilder progressivt när de kommer in i synfältet
4. NÄR en användare interagerar med element SKA Systemet ge omedelbar visuell feedback
5. NÄR nätverksanslutningen är långsam SKA Systemet visa laddningsindikatorer
