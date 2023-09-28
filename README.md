# Hello_Kitty_inspired_tamagotchi

### **Explicación**

Pequeño proyecto en Ruby que consiste en un pequeño juego en el que "cuidas" a Hello Kitty. No sé como me vino la inspiración para hacer esto la verdad es super random.  
Al ser ejecutado, el programa abre una terminal, de un tamaño determinado, en el escritorio (puede que sea necesario cambiar el directorio que aparece al principio de `main.rb`). Posteriormente pregunta al usuario el nombre y si quiere jugar. El juego comienza y aparece una pequeña animación en arte ASCII de Hello Kitty, en un periodo de tiempo aleatorio (tiene unos parámetros de máximo y mínimo), requiere que el usuario "alimente" o "apagar la luz".  

### **Archivos**

Aunque no es necesario, he decidido modularizar el proyecto (no de la forma más eficiente). Existen dos archivos:
- [`main.rb`](Files/main.rb): se encarga del flujo del juego, para las animaciones usa métodos de la clase `tamagochi_class.rb`.
- [`tamagochi_class.rb`](Files/tamagochi_class.rb): incluye los métodos necesarios para realizar las animaciones. Cada método contiene el arte en texto ASCII correspondiente a cada acción. (Para hacer esto he usado una página web: https://manytools.org/hacker-tools/convert-images-to-ascii-art/).

### **Cosas por hacer**

- Modularizar de forma correcta el proyecto, haciendo un fichero para las funciones.
- Crear nuevas animaciones para cada estado de ánimo de Hello Kitty (pereza máxima)
- Crear nuevas funcionalidades, nuevos estados, por ejemplo.
