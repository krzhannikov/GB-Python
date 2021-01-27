# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 2:
# "Создать текстовый файл (не программно), сохранить в нем несколько строк, выполнить подсчет
# количества строк, количества слов в каждой строке."

with open('2.txt', encoding='utf-8') as my_file:
    my_lines = my_file.readlines()
    for i in enumerate(my_lines):
        print('String №', i[0] + 1, 'has', len(i[1].split()), 'words')
        amount_of_strings = i[0]
    print('File has', amount_of_strings + 1, 'strings')
