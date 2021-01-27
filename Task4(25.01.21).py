# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 4:
# "Создать (не программно) текстовый файл со следующим содержимым:
# One — 1
# Two — 2
# Three — 3
# Four — 4
# Необходимо написать программу, открывающую файл на чтение и считывающую построчно данные.
# При этом английские числительные должны заменяться на русские. Новый блок строк должен записываться
# в новый текстовый файл."
my_dict = {'One': 'Один', 'Two': 'Два', 'Three': 'Три', 'Four': 'Четыре'}
my_newlines = []

with open('4.txt', encoding='utf-8') as my_file:
    my_lines = my_file.readlines()
    for line in my_lines:
        for key, value in my_dict.items():
            if key == line.split()[0]:
                my_newlines.append(line.replace(key, value))

with open('4new.txt', 'w', encoding='utf-8') as my_newfile:
    my_newfile.writelines(my_newlines)
