# Command Browser macOS App

This project provides macOS app bundles that launch browsers (like Chrome or Brave) with custom command-line arguments, such as disabling web security for development purposes.

---

## 📁 Folder Structure

```
<Browser Name> Unsecured.app/
  Contents/
    Info.plist
    MacOS/
      main.command
    Resources/
      app.icns
```

- `main.command`: Shell script that launches the browser with desired flags.
- `Info.plist`: App metadata.
- `app.icns`: App icon.

---

## ✏️ How to Change the Command

1. **Open the Script**
   - Navigate to `Contents/MacOS/main.command` inside the desired `.app` bundle.
   - Open `main.command` in your editor.

2. **Edit the Launch Command**
   - The script typically looks like:
     ```sh
     open -na "Brave Browser" --args --user-data-dir=/tmp/BraveDev --disable-web-security --disable-site-isolation-trials
     ```
   - Change `"Brave Browser"` to your preferred browser (e.g., `"Google Chrome"`).
   - Adjust or add flags as needed.

3. **Save the File**
   - Save your changes in the editor.

---

## 💾 Saving and 🏃 Running the App

### 1. Make the Script Executable

In Terminal, run:
```sh
chmod +x "<Browser Name> Unsecured.app/Contents/MacOS/main.command"
```
Example:
```sh
chmod +x "Brave Unsecured.app/Contents/MacOS/main.command"
```

### 2. Launch the App

- **Double-click** the `.app` in Finder
  _or_
- **Run from Terminal**:
  ```sh
  ./<Browser Name> Unsecured.app/Contents/MacOS/main.command
  ```

---

## 🛠️ Troubleshooting

- **App won’t launch?**
  - Ensure `main.command` is executable.
  - Check that the browser name matches your installed app.
  - If macOS blocks the app, allow it in **System Preferences > Security & Privacy**.

- **Browser not found?**
  - Confirm the browser name in the script matches the actual app name in `/Applications`.

---

## 🧩 Customization

- **Change App Name or Icon:**
  Edit `Info.plist` and replace `app.icns` in `Resources/`.

- **Change Copyright:**
  Update `Info.plist` fields as needed.

---

## 🔗 References

- [Apple: Info.plist Keys](https://developer.apple.com/documentation/bundleresources/information_property_list)
- [macOS App Bundle Structure](https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/BundleTypes/BundleTypes.html)

---

**Enjoy your custom browser launcher!**