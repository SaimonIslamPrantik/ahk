# AutoHotkey v2 Utility Scripts

This repository contains lightweight **AutoHotkey v2** scripts designed to enhance keyboard productivity and media key functionality in Windows.

---

## Script Overview

### 1. Emoji Manager (`EmojiManager.ahk`)
Maps `Caps Lock` as a custom modifier key to output specific emojis instantly while suppressing standard `Caps Lock` behavior.

#### Dynamic Mappings
| Hotkey Combination | Output |
| :--- | :--- |
| `Caps Lock` + `W` | 🥀 |
| `Caps Lock` + `T` | 😋 |
| `Caps Lock` + `P` | 🎀 |
| `Caps Lock` + `S` | 🙏 |
| `Caps Lock` + `D` | 💀 |
| `Caps Lock` + `L` | 🥰 |
| `Caps Lock` + `C` | 😭 |
| `Caps Lock` + `f` | 😂 |
| `Caps Lock` + `B` | 💔 |
| `Caps Lock` + `M` | 🗿 |
| `Caps Lock` + `H` | ❤️ |

#### Core Features
* **Caps Lock Suppression:** Disables standalone `Caps Lock` activation to avoid accidental triggers.
* **Standard Toggle Override:** Press `Shift` + `Caps Lock` to toggle traditional `Caps Lock` state ON or OFF.

---

### 2. Volume / Brightness Switcher (`vol_bright.ahk`)
Converts standard media volume keys into display brightness controls through a multi-tap gesture on the `Mute` key.

#### Operation Logic
* **Enter Brightness Mode:** Tap `Volume Mute` **4 times** within 3 seconds (High-frequency audio feedback confirms activation).
* **Exit Brightness Mode:** Tap `Volume Mute` **2 times** within 3 seconds (Low-frequency audio feedback confirms deactivation).
* **Key Remapping in Brightness Mode:**
  * `Volume_Up` $\rightarrow$ Remapped to `F6` (Brightness Up)
  * `Volume_Down` $\rightarrow$ Remapped to `F5` (Brightness Down)

---

## Requirements

* **Operating System:** Windows 10 / 11
* **Environment:** [AutoHotkey v2.0+](https://www.autohotkey.com/)

---

## Installation & Deployment

1. Download and install **AutoHotkey v2.0+**.
2. Run desired scripts by double-clicking the corresponding `.ahk` file.
3. *(Optional)* To run on system boot, press `Win` + `R`, type `shell:startup`, and place a shortcut to the script files in the Startup directory.

---

## Configuration

### Modifying Emoji Mappings
Edit the `Mappings` key-value map in `EmojiManager.ahk`:

```autohotkey
global Mappings := Map(
    "a", "🚀",
    "k", "🔥"
)
```

### Customizing Brightness Keys
If your hardware uses different functional keys for brightness regulation, update `vol_bright.ahk`:

```autohotkey
#HotIf brightnessMode
Volume_Up::F6    ; Set to target key for increasing brightness
Volume_Down::F5  ; Set to target key for decreasing brightness
#HotIf
```
