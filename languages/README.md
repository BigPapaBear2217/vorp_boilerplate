# Languages/Locale
> Multi-Language Support

## How To Add a new Language
1. Cleate a new file 
  - Exapmle: es.lua
2. Copy/Paste and Modify the below code
  ```lua
    Locales["es"] = {
        HelloWorld = "Hola Mundo!"
    }
  ```
3. `_U('HelloWorld')` in code will display the above. _Ensure any new locale is in **ALL** current languages_