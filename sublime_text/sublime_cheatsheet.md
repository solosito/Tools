# Sublime Cheatsheet

### Select all the found lines:
Make a search and then press `Ctrl+D` and `Alt+F3`

### Regex searches:

* Line not starting with `word`  
    `^(?!word).*$`

* Line not starting with `word` nor new line  
    `^(?!word|\n).*$`

* Line not containing `word`  
    `^((?!word).)*$`

* Line starting with `abc`, ending with `xyz`, contain `123` and not containing `456`  
    `^(?=^abc)(?=.*xyz$)(?=.*123)(?=^(?:(?!456).)*$).*$`

* Doesn't start with: "    ///", neither: "typedef", neither "void", not containing ";"  
    `^(?!^}|typedef|void|    ///)(?=.*;).*$`
