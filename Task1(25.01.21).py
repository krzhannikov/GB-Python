# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 1:
# "Создать программно файл в текстовом формате, записать в него построчно данные, вводимые пользователем.
# Об окончании ввода данных свидетельствует пустая строка."

my_file = open('1.txt', 'w')
while True:
    my_string = input("Input your text: ")
    if my_string == '':
        break
    else:
        my_file.write(my_string + '\n')
my_file.close()
print('Thank you! File closed.')
