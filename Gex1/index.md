# Gex 1 PC

- [Back](../index.md)
-----
## Notes

Boot `Gex.exe` without `Loader.exe`
```
gex.exe XAchWieGutDasKeinerWeis
```

#### RAM MAP

| Address      | Name                                  | Notes                                                                                                                                  |
| ------------ | ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| `0x004A23C4` | Score                                 |                                                                                                                                        |
| `0x00456B00` | Lives                                 |                                                                                                                                        |
| `0x004A281C` | Health                                |                                                                                                                                        |
| `0x004A2808` | Flies                                 |                                                                                                                                        |
| `0x00456AFC` | MaxHealth                             |                                                                                                                                        |
| `0x004A294C` | Paused                                | `Set to 2 for Paused, 0 for Unpaused (useful for debugging) (if you press F3 is jumps to 2, if you click out of window it jumps to 1)` |
| `0x0047EF30` | TextSecretEnteredLetters - `char[64]` | `Used for holding pressed keys checked against the secret words`                                                                       |
| `0x004A2808` | Current Level                         | `check later in guide for level map`                                                                                                   |
| `0x00455C3C` | CurrentGameType                       | `1 is in map screen or level, 2 is text/transition screens`                                                                            |

Textures in .LEV files are `ABGR (1555)` format.

#### Secret Codes

| Address  | String                   | Flipped                  | Notes                            | Entry Location             | `0x455B38` wordvalue |
| -------- | ------------------------ | ------------------------ | -------------------------------- | -------------------------- | -------------------- |
| 00455A7C | `llewsortaytrap`         | `partyatroswell`         | `Planet X Level Select`          | `Title Screen`             |                      |
| 00455A8C | `ybabresolami`           | `imaloserbaby`           | `Secret Credits`                 | `Title Screen`             |                      |
| 00455A9C | `retsamneknurd`          | `drunkenmaster`          | `Invincibility`                  | `In Level (PAUSED)`        |                      |
| 00455AAC | `sagsagsagasti`          | `itsagasgasgas`          | `Super Jump`                     | `In Level (PAUSED)`        |                      |
| 00455ABC | `retlawnonednarg`        | `grandenonwalter`        | `Super Speed`                    | `In Level (PAUSED)`        |                      |
| 00455ACC | `thgilsawerehtneht`      | `thentherewaslight`      | `Electric Breath`                | `In Level (PAUSED)`        |                      |
| 00455AE0 | `egaknirhsevahi`         | `ihaveshrinkage`         | `Ice Breath`                     | `In Level (PAUSED)`        |                      |
| 00455AF0 | `ekomsdnahdnoces`        | `secondhandsmoke`        | `Fire Breath`                    | `In Level (PAUSED)`        |                      |
| 00455B00 | `oilohgnubeidrevenlliwi` | `iwillneverdiebungholio` | `99 Lives`                       | `In Level (PAUSED)`        | 2                    |
| 00455B18 | `yddubreisooh`           | `hoosierbuddy`           | `Level Select`                   | `Map Screen - Remote Menu` |                      |
| 00455B28 | `modgnikafos`            | `sofakingdom`            | `Turn on all TVs in current map` | `Map Screen- Remote Menu`  |                      |

#### Passwords

World Password
1. Cemetery
Grave Danger SVZFKHGP 
Tomato Soup BXRFYHGP
Disco Inferno ZVTCYHGP
2. New Toonland
Pow! KXVKRHKP
Twin Towers CVHCSHKP
Rock it! SVKLPHKP
Knock! Knock! CVBLPHKP
3. Jungle Isle
Feeding Frenzy RVTCSHGP
Congo Chaos XVVBRHKP
4. Kung Fuville
Sumo City YTCHPHKP
Fish Bait ZTDHPHKP
Chop Chop DXVGRHKP
5. Rezopolis
Knight Fever GYVYRHKP
6. Bonus: Planet X
Saucer Section PZYPRXYL

#### Level Map
| Level                                  | Number | Codename(Level Select Menu) |
| -------------------------------------- | ------ | --------------------------- |
| `THE DOME`                             | `50`   | ``                          |
| `CEMETARY`                             | `49`   | ``                          |
| `GRAVE DANGER`                         | `0`    | `GRAVE1`                    |
| `TOMATO SOUP`                          | `1`    | `GRAVE2`                    |
| `DISCO INFERNO`                        | `2`    | `GRAVE3`                    |
| `Frankie & Heli`                       | `3`    | `GRAVE4`                    |
| `(TEST) CEMETARY (CRUSH SCROLLING)`    | `4`    | ``                          |
| `(TEST) CEMETARY`                      | `5`    | ``                          |
| `SPIN -N- PUKE`                        | `6`    | `GRAVE7(BOSS)`              |
| `P O W !`                              | `7`    | `CARTOON1`                  |
| `KNOCK! KNOCK!`                        | `8`    | `CARTOON2`                  |
| `ROCK IT!`                             | `9`    | `CARTOON3`                  |
| `TWIN TOWERS`                          | `10`   | `CARTOON4`                  |
| `P O W ! (SECRET PART OF TWIN TOWERS)` | `11`   | `CARTOON5`                  |
| `(TEST) THE FLATULATOR`                | `12`   | ``                          |
| `THE FLATULATOR`                       | `13`   | `CARTOON7(BOSS)`            |
| `(TEST) JUNGLE`                        | `14`   | ``                          |
| `FEEDING FRENZY`                       | `15`   | `JUNGLE2`                   |
| `CONGO CHAOS`                          | `16`   | `JUNGLE3`                   |
| `(TEST) JUNGLE 2`                      | `17`   | ``                          |
| `(TEST) JUNGLE 3`                      | `18`   | ``                          |
| `(TEST) JUNGLE 4`                      | `19`   | ``                          |
| `JUNGLE GYM`                           | `20`   | `JUNGLE7`                   |
| `END LEVEL`                            | `68`   | ``                          |

GEX???.LEV = 0x4A29C4

##### References
https://tcrf.net/Gex_(3DO)
https://tcrf.net/Gex_(Windows)

https://stackoverflow.com/questions/15549893/modify-printfs-via-macro-to-include-file-and-line-number-information override function in c++

https://www.michaelfcollins3.me/blog/2013/06/01/understanding-outputdebugstring.html
For hooking outputdebugstring

hook debug print into outputdebugstring

File loading function @ 0x41F2D0

SND Table

| SND                    | Num |
|------------------------|-----|
| World Map Sound        | 9   |
| Goooooodbyyyyyyee      | 90  |
| Entering TV            | 89  |
| Tail Whip              | 38  |
| Tail Whip Hit          | 40  |
| Cemetary Music         | 14  |
| (TV) Back to World Map | 98  |
| (TV) Cemetary          | 94  |


4214C0 - function controlling left and right movement




# GEX 1 PSX

CAMERA X 
80097A40

CURRENT LEVEL
80097D10

Patch To Enable First Debug Mode
add ------ value
80025E88 1460003B
to
80025E88 00000000

Patch To Enable Second Debug Mode
add ------ value
80063AD4 ????????
to
80063AD4 00000000

Patch To Enable Third Debug Mode
add ------ value
8004769C 14400090
to
8004769C 00000000

## Order of strings printed
(RENDER GAME FUNCTION)
Intro Objects\n
ProcessBlockAnims\n

Gex 1 Gamesharks

cheat0_desc = "Joker Command"
cheat0_code = "D009823C+????"
cheat0_enable = false 

cheat1_desc = "Infinite Lives"
cheat1_code = "8009732C+0063"
cheat1_enable = false 

cheat2_desc = "Invincible"
cheat2_code = "80097BD8+0001"
cheat2_enable = false 

cheat3_desc = "Infinite Gold Flies"
cheat3_code = "80097AF8+0063"
cheat3_enable = false 

cheat4_desc = "Blurr Mode"
cheat4_code = "80097CCC+0001"
cheat4_enable = false 

cheat5_desc = "Fireball Mode"
cheat5_code = "80097BD6+0001"
cheat5_enable = false 

cheat6_desc = "Moon Jump"
cheat6_code = "D009823C+0400+800D752A+FFFB"
cheat6_enable = false 