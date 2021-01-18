# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 02 'Встроенные типы и операции с ними', Задача 4:
# "Пользователь вводит строку из нескольких слов, разделённых пробелами. Вывести каждое слово
# с новой строки. Строки необходимо пронумеровать. Если в слово длинное, выводить только первые
# 10 букв в слове."

my_str = input('Please, enter multiple words separated by spaces: ')

my_list = my_str.split()
for el in range(0, len(my_list)):
    print(el + 1, my_list[el][0:10])

# Альтернативный метод с использованием enumerate:
#
# for idx, el in enumerate(my_list):
#     print(idx + 1, el[0:10])