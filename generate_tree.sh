#!/bin/bash

# Зберігаємо виведення структури проекту, виключаючи node_modules
tree -I 'node_modules' > project_structure.txt

# Додаємо виведення структури node_modules з обмеженою глибиною
echo "node_modules" >> project_structure.txt
tree node_modules -L 1 >> project_structure.txt

# Виводимо кінцевий файл
cat project_structure.txt
