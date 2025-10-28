# Build Runner Commandlari – To'liq Qo'llanma (MD format)

## 1. `flutter pub run build_runner build --delete-conflicting-outputs`
**Purpose:**
- Generates the code **one time**.
- If there are any previously generated files that cause conflicts, it **automatically deletes them** and regenerates new ones.

**When to use:**
- Whenever new annotations like `@injectable`, `@module`, `@lazySingleton`, `@singleton`, or `@JsonSerializable` are added.
- Before building the project when generated code must be up-to-date.

**Advantages:**
- Automatically cleans outdated or conflicting generated files.

---

## 2. `flutter pub run build_runner watch --delete-conflicting-outputs`
**Vazifasi:**
- Kodni **doimiy kuzatadi**, yani fayllarda o‘zgarish bo‘lsa avtomatik qayta generatsiya qiladi.

**Qachon ishlatiladi:**
- Development davomida tez-tez DI (dependency injection), model yoki generator o‘zgarayotgan bo‘lsa.

**Afzalligi:**
- Har safar build commandini qo‘lda kiritishga hojat qolmaydi.
- Real-time generatsiya.

---

## 3. `flutter pub run build_runner build`
**Vazifasi:**
- Kodni generatsiya qiladi, lekin `--delete-conflicting-outputs` ishlatilmagani sababli eski fayllar bilan to‘qnashuv bo‘lsa **xato beradi**.

**Qachon ishlatiladi:**
- Toza workspace yoki yangi loyiha bosqichida.

**Minus tomoni:**
- Conflict bo‘lsa to‘xtaydi va error chiqaradi.

---

## 4. `flutter pub run build_runner clean`
**Vazifasi:**
- Build runner tomonidan yaratilgan barcha vaqtinchalik fayllarni o‘chiradi.
- `.dart_tool` dagi cache va eski generatsiya qilingan fayllar ham tozalanadi.

**Qachon ishlatiladi:**
- Konfliktlar ko‘payib ketganida.
- Generatsiya notog‘ri ishlayotganida.
- `injection.config.dart` noto‘g‘ri bo‘lsa.

**Odatiy qo‘llanish:**
```
flutter pub run build_runner clean \
&& flutter pub run build_runner build --delete-conflicting-outputs
```
Bu dastlab o‘chiradi, keyin qayta generatsiya qiladi.

---

## Qaysi holatda qaysi biri?
| Vaziyat | To‘g‘ri Command |
|--------|------------------|
| Yangi dependency qo‘shding | `build --delete-conflicting-outputs` |
| DI yoki model tez-tez o‘zgarayotganda | `watch --delete-conflicting-outputs` |
| Generatsiyada g‘alati xatolar chiqsa | `clean` + `build --delete-conflicting-outputs` |
| Toza fayllar bilan bir martalik build | `build` |

---

## Qisqa misol bilan tushuncha
| Command | Hayotiy misol |
|--------|----------------|
| `build` | "Qurilish qil" |
| `build --delete-conflicting-outputs` | "Qurilishdan oldin eski binoni buz" |
| `watch` | "Quruvchini yoningda turg‘iz, har safar avtomatik qursin" |
| `clean` | "Yer uchastkasini tozalab, noldan boshlash" |

---

Bu qo‘llanma Clean Architecture, Injectable va Build Runner bilan ishlashda asosiy referens sifatida ishlatiladi.

