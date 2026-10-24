# gtVR – Airfix Dogfighter in VR

A fan-made VR mod for **Airfix Dogfighter** (2000): the whole game in stereo 3D with head tracking, played with
VR controllers, plus an optional **Czech translation**. Not affiliated with Airfix, Humbrol or the original
developers. No game files are included – you need your own copy of the game.

*Česky níže.*

## Requirements

- Airfix Dogfighter with **patch 1.2** (the setup window shows v1.20)
- Windows 10 or 11, a Direct3D 11 graphics card that can run VR
- **SteamVR** and a headset. Tested with Meta Quest 3 (Steam Link / Quest Link).

## Install

1. Make a **copy** of your Airfix Dogfighter folder and use the copy (the mod adds files to it).
2. Download [`update.bat`](https://raw.githubusercontent.com/krtecany/airfix-dogfighter-vr-release/main/update.bat)
   (right click → *Save link as…*) into that folder, next to `Dogfighter.exe`.
3. Double-click `update.bat`. It downloads the mod and builds the Czech translation from your game files.
   Run it again later to update.
4. Start SteamVR, then `Dogfighter.exe`. In the setup window choose the driver **Direct3D VR**
   (and the language **Czech** if you want the translation), press OK.

## Controls (Quest Touch)

| Controller | Action |
|---|---|
| Right stick | bank / pitch |
| Left stick up / down | throttle (stays where you leave it) |
| Right trigger | primary weapon / click in menus |
| Right grip | secondary weapon |
| A | next weapon |
| B | change camera (behind / further / top view for bombing) |
| Left grip | rear view |
| Y | game menu (Esc) |
| X | mission status (Tab) |
| Left trigger | recentre the view |
| Menus | point with the right controller (laser), right trigger = click |
| Menus: hold right grip + right stick up/down | adjust the laser so it hits the cursor (saved) |

Keyboard: NumPad 5 recentre, NumPad +/- world scale, NumPad 7 camera smoothing on/off, NumPad 9/3 smoother/harder.

## Settings – `gtVR.ini`

`WorldScale` (size of the world), `CameraSmoothing` (how softly the camera follows the plane),
`HudWidth` / `HudHeight` (HUD panel size and position), `SightScale` (size of the gun sights),
`ScreenDistance` / `ScreenWidth` (menu screen), `PointerTilt` (laser). `update.bat` never overwrites your `gtVR.ini`.

## Problems

Every start writes `gtVR.log` into the game folder. For a bug report set `Verbose=1` in the `[debug]` section of
`gtVR.ini`, reproduce the problem and send the log with a short description.

---

# gtVR – Airfix Dogfighter ve VR

Neoficiální VR mod pro **Airfix Dogfighter** (2000): celá hra ve stereo 3D se sledováním hlavy, ovládání VR
ovladači, a k tomu volitelně **čeština**. Mod neobsahuje žádné soubory hry – potřebuješ vlastní kopii.

## Požadavky

- Airfix Dogfighter s **patchem 1.2** (v okně nastavení je v1.20)
- Windows 10 nebo 11, grafická karta s Direct3D 11, která zvládne VR
- **SteamVR** a brýle. Vyzkoušeno s Meta Quest 3 (Steam Link / Quest Link).

## Instalace

1. Udělej si **kopii** složky s hrou a používej ji (mod do ní přidává soubory).
2. Stáhni [`update.bat`](https://raw.githubusercontent.com/krtecany/airfix-dogfighter-vr-release/main/update.bat)
   (pravé tlačítko → *Uložit odkaz jako…*) do té složky vedle `Dogfighter.exe`.
3. Spusť `update.bat`. Stáhne mod a z tvých souborů hry sestaví češtinu. Pro aktualizaci ho spusť znovu.
4. Zapni SteamVR a spusť `Dogfighter.exe`. V okně nastavení vyber ovladač **Direct3D VR**
   (a jazyk **Czech**, pokud chceš češtinu) a dej OK.

## Ovládání (Quest Touch)

| Ovladač | Akce |
|---|---|
| Pravá páčka | náklon / nos nahoru a dolů |
| Levá páčka nahoru / dolů | plyn (zůstane, kde ho necháš) |
| Pravá spoušť | hlavní zbraň / klik v menu |
| Pravý grip | vedlejší zbraň |
| A | další zbraň |
| B | přepnout kameru (za letadlem / dál / shora na bombardování) |
| Levý grip | pohled dozadu |
| Y | menu hry (Esc) |
| X | stav mise (Tab) |
| Levá spoušť | vycentrovat pohled |
| Menu | míříš pravým ovladačem (laser), pravá spoušť = klik |
| Menu: drž pravý grip + pravá páčka nahoru/dolů | doladění laseru na kurzor (uloží se) |

Klávesnice: NumPad 5 vycentrovat, NumPad +/- velikost světa, NumPad 7 vyhlazení kamery, NumPad 9/3 měkčí/tvrdší.

## Nastavení – `gtVR.ini`

`WorldScale` (velikost světa), `CameraSmoothing` (jak měkce kamera sleduje letadlo), `HudWidth` / `HudHeight`
(velikost a výška HUD), `SightScale` (velikost zaměřovačů), `ScreenDistance` / `ScreenWidth` (plátno menu),
`PointerTilt` (laser). `update.bat` tvůj `gtVR.ini` nikdy nepřepíše.

## Potíže

Každé spuštění zapíše do složky hry `gtVR.log`. Pro nahlášení chyby nastav v `gtVR.ini` v sekci `[debug]`
`Verbose=1`, zopakuj problém a pošli log s krátkým popisem.

---

Includes OpenVR (`openvr_api.dll`, Valve, BSD license – see `OpenVR-LICENSE.txt`).
