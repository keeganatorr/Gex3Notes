# Gex 3 Notes

# Use attached lua file for Bizhawk
➡️ [.lua file](./SLUS-00806.lua) ⬅️

## Playstation Version - SLUS-00806

## Little Endian (Bytes are Little Endian LSB<-MSB) (Values are stored 'backwards')

| Variable                       | Location   | Value      | Size    | Notes                                            |
| ------------------------------ | ---------- | ---------- | ------- | ------------------------------------------------ |
| GexVars Pointer                | 0x8009EFC4 | 0x800A2800 | ?       | This points to the variables the Gex player uses |
| Gex X                          | 0x800A2859 | X          | 2 Bytes | Gex X Location (written at 0x8006E4E0)           |
| Gex Y                          | 0x800A285B | Y          | 2 Bytes | Gex Y Location                                   |
| Gex Z                          | 0x800A285D | Z          | 2 Bytes | Gex Z Location                                   |
| Gex Z Velocity                 | 0x800A290C | Z Velocity | 2 Bytes | Gex Z Velocity                                   |
| Gex Z Camera?                  | 0x800A2497 | Z Camera   | ?       | Camera Z Location                                |
| Debug Mode                     | 0x800A3E9E | 0C/08      | 1 byte  | Toggle Debug Mode                                |
| Short Short Stats Toggle       | 0x800A3E9F | 00/?4      | 1 byte  | Toggle Short Short Stats                         |
| Sound Debug                    | 0x800A3E9F | ??/2?      | 1 byte  | Toggle Sound Debug                               |
| Short Stats Toggle             | 0x800A3E9C | 00/04      | 1 byte  | Toggle Short Stats                               |
| Controller Input (one of them) | 0x800A3E24 |            |         |                                                  |
| L/R Analog Left                | 0x800A3E30 |            |         |                                                  |
| U/D Analog Left                | 0x800A3E34 |            |         |                                                  |
| Toggle Room Animation (Enter)  | 0x800A3EA4 | 20         | 1 byte  | Both bytes get used for room change animation    |
| Toggle Room Animation (Exit)   | 0x800A3EA5 | FF         | 1 byte  | Both bytes get used for room change animation    |
| Unsure                         | 0x00000000 |            |         |                                                  |
| Unsure                         | 0x00000000 |            |         |                                                  |
| Gex Velocity                   | 0x800B3778 | Velocity!  | 1 byte  | Velocity Small                                   |
| Gex Velocity                   | 0x800B377A | Velocity!  | 1 byte  | Velocity Big                                     |
| Gex Velocity                   | 0x800B377C | Velocity!  | 1 byte  | Velocity Max                                     |

<!--
## Assembly (Decompiled Code from NO$PSX)

| Address    | Decompiled Code | Hex        | Comments       | Patch Code | Patch Hex  |
| ---------- | --------------- | ---------- | -------------- | ---------- | ---------- |
| 0x8007fb60 | add r2,r3       | 0x00431021 | Gex X Movement | add r2,??h | 0x244200?? |
|            |                 |            |                |            |            |
|            |                 |            |                |            |            |

sp 801FFE90+18

current add 8007FD84


800a05d0

Gex Movement notes

Code at 80086034 controls camera stuff

mov r8,[r4] // r8 = [r4] // r4 = 0x800A805C8

8007FAE0 nopping this makes you run fast as!
movhs r3,[r17+254h] // r3 = [0x800B3698+0x254] // r3 = [0x800B38EC] // r3 = 1000


800B377A

-->

### Gex Vault Passwords

| Effect                                      | Password                                           |
| ------------------------------------------- | -------------------------------------------------- |
| Eight Hit Paws                              | Square, Diamond, Triangle, Triangle, Star, Diamond |
| Extra Life                                  | Triangle, Circle, Star, Square, Square, X          |
| Invincibility                               | Square, Start, Triangle, Square, Triangle, Diamond |
| Level Select                                | Square, Square, Circle, Circle, Triangle, X, X     |
| Play as Alfred the turtle                   | Square, X, Triangle, Square,Star, Star             |
| Play as Cuz the dino                        | Square, Diamond, Square, Square, Triangle, Diamond |
| Play as Rex the dino                        | Square, Star, Star, Square, Triangle, Triangle     |
| Play as DracuGex                            | Star, X, X, Circle, Square, Triangle               |
| Talking Gex (press select during gameplay). | Square, Triangle, X, Star, Square, X               |
| Ten Extra Lives                             | Square, X, Circle, Circle, Triangle, Square        |
| Turn Off Timer (go to extras menu).         | Square, Square, Diamond, Circle, X, X              |
| View the Army video                         | X, Diamond, Star, Triangle, Triangle, Circle       |
| View the Gangster video                     | Circle, Triangle, Square, Star, Diamond, Star      |
| View the Western video                      | Diamond, Star, Square, X, Triangle, Circle         |
| Debug mode                                  | Square, Square, Diamond, Circle, X, X              |


### Button Cheats

| Cheat                                            | Button Combo                                                               |
| ------------------------------------------------ | -------------------------------------------------------------------------- |
| Blabbermouth Gex (press Select to hear comments) | While paused hold L2 and press Down, Right, Left, Circle, Up, Right        |
| Debug Menu (press Select during gameplay).       | While paused hold R2 and press Up, Circle, Right, Up, Left, Right, Down    |
| Invincibility                                    | While paused hold L2 and press Down, Up, Left, Left, Triangle, Right, Down |
| Level Select                                     | While paused hold R2 and press Left, Triangle, Up, Down, Right, Right      |

https://wescastro.com/codetwink/cheats.codetwink.com/psx/view/1293/default.htm

### Gameshark Codes

| Cheat                                             | Gameshark     | Values                |
| ------------------------------------------------- | ------------- | --------------------- |
| Moon Jump                                         | D00A3E24 0080 |                       |
|                                                   | 800A290C 006F |                       |
| Invincible                                        | 800B37B8 002E |                       |
| Infinite Health                                   | 800AA5D0 0005 |                       |
| Infinite Lives                                    | 800AA5CC 0064 |                       |
| 99 Coins                                          | 800AA5DC 0063 |                       |
| 99 Paws                                           | 800AA5D8 0063 |                       |
| 99 Flies                                          | 800AA5D4 0063 |                       |
| 99 Remotes                                        | 800AA5E0 0063 |                       |
| Have Debug Menu Open (Press Select While Playing) | 800A3E9E 0008 | Off = `0C`, On = `08` |
| Blabbermouth Gex (Press Select To Hear His Mouth) | 800AA6B4 2000 |                       |
| Have All Special Remotes                          | 800AA5EC FFFF |                       |
|                                                   | 800AA5EE FFFF |                       |
| Infinite Air                                      | 800B38EA 032A |                       |
| **Have All Remote Codes**                         |               |                       |
| Totally Scrooged                                  | 800AA5AC 00FF |                       |
| Clueless In Seattle                               | 800AA5AD 00FF |                       |
| Holy Moses!                                       | 800AA5AE 00FF |                       |
| War Is Heck                                       | 800AA5AF 00FF |                       |
| The Organ Trail                                   | 800AA5B0 00FF |                       |
| Cut Cheese Island                                 | 800AA5B1 00FF |                       |
| Unsolved Mythstories                              | 800AA5B2 00FF |                       |
| Red Riding In The Hood                            | 800AA5B3 00FF |                       |
| When Sushi Goes Bad                               | 800AA5B4 00FF |                       |
| My Three Goons                                    | 800AA5B5 00FF |                       |
| SuperZeroes                                       | 800AA5B6 00FF |                       |
| Mission Control                                   | 800AA5C3 0002 |                       |
| Lake Flaccid                                      | 800AA5C4 0002 |                       |
| Slappy Vally                                      | 800AA5C5 0002 |                       |
| Funky Town                                        | 800AA5C6 0002 |                       |
| **Have All Coin Codes**                           |               |                       |
| Totally Scrooged                                  | 800AA628 000E |                       |
| Clueless In Seattle                               | 800AA62A 000E |                       |
| Holy Moses!                                       | 800AA62C 000E |                       |
| War Is Heck                                       | 800AA62E 000E |                       |
| The Organ Trail                                   | 800AA630 000E |                       |
| Cut Cheese Island                                 | 800AA632 000E |                       |
| Unsolved Mythstories                              | 800AA634 000E |                       |
| Red Riding In The Hood                            | 800AA636 000E |                       |
| When Sushi Goes Bad                               | 800AA638 000E |                       |
| My Three Goons                                    | 800AA63A 000E |                       |
| SuperZeroes                                       | 800AA63C 000E |                       |
| Mission Control                                   | 800AA656 000E |                       |
| Lake Flaccid                                      | 800AA658 000E |                       |
| Slappy Vally                                      | 800AA65A 000E |                       |
| Funky Town                                        | 800AA65C 000E |                       |
| Clueless In Seattle                               | 300AA5D0 0004 |                       |

http://www.cheatcc.com/psx/codes/gex3.html

| Cheat                         | Gameshark     |
| ------------------------------| ------------- |
| Infinite Health               | 80072E7E 2400 |
| Infinite Air                  | 8007ADB6 2400 |
| Infinite Power-up Time        | 8008137E 2400 |
| 99 Lives                      | 800A8E10 0063 |
| 99 Flies                      | 800A8E18 0063 |
| 99 Green Palms                | 800A8E1C 0063 |
| 99 Gold Coins                 | 800A8E20 0063 |
| 99 Remotes                    | 800A8E24 0063 |
| **Have All Remotes**          |               |
| Totally Scrooged              | 300A8DF0 000F |
| Clueless In Seattle           | 300A8DF1 000F |
| Holy Moses!                   | 300A8DF2 000F |
| War Is Heck                   | 300A8DF3 000F |
| The Organ Trail               | 300A8DF4 000F |
| Cut Cheese Island             | 300A8DF5 000F |
| Unsolved Mythstories          | 300A8DF6 000F |
| Red Riding In The Hood        | 300A8DF7 000F |
| When Sushi Goes Bad           | 300A8DF8 000F |
| My Three Goons                | 300A8DF9 000F |
| SuperZeroes                   | 300A8DFA 000F |
| Mission Control               | 300A8E07 000A |
| Lake Flaccid                  | 300A8E08 0002 |
| Slappy Valley                 | 300A8E09 0002 |
| Funky Town                    | 300A8E0A 0002 |
| **Have All Gold Coins**       |               |
| Totally Scrooged              | 800A8E6C 000E |
| Clueless In Seattle           | 800A8E6E 000E |
| Holy Moses!                   | 800A8E70 000E |
| War Is Heck                   | 800A8E72 000E |
| The Organ Trail               | 800A8E74 000E |
| Cut Cheese Island             | 800A8E76 000E |
| Unsolved Mythstories          | 800A8E78 000E |
| Red Riding In The Hood        | 800A8E7A 000E |
| When Sushi Goes Bad           | 800A8E7C 000E |
| My Three Goons                | 800A8E7E 000E |
| SuperZeroes                   | 800A8E80 000E |
| Mission Control               | 800A8E9A 000E |
| Lake Flaccid                  | 800A8E9C 000E |
| Slappy Valley                 | 800A8E9E 000E |
| Funky Town                    | 800A8EA0 000E |
| **Clueless In Seattle Codes** |               |
| Infinite Health               | 800A8E14 0004 |
| Infinite Air                  | 800B212E 03E7 |
| Infinite Bonus Time           | 801A417A 2400 |
| **GEXtreme Sports Codes**     |               |
| Infinite Time                 | 801207AC 0078 |
| **Dial 'A' For Arson Codes**  |               |
| Infinite Time                 | 80129ED4 1532 |
| Have 50 Flies                 | 800A8E18 0032 |
| **Marsupial Madness Codes**   |               |
| Infinite Time                 | 80125804 0078 |
| **BraveHeartless**            |               |
| Infinite Time                 | 801605BC 1064 |












----------------------

## Extra

```
N64 Cheats
http://www.kai666.com/cheat-codes-n64/gex_64_enter_gecko_&_gex_3_deep_cover_gecko.htm
http://www.gamegenie.com/cheats/gameshark/n64/gex_3_deep_cover_gecko.html
http://www.cheatzilla.com/cgi-bin/czm/cheat/8558
```