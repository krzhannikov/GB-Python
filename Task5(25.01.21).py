# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 5:
# "Создать (программно) текстовый файл, записать в него программно набор чисел, разделенных пробелами.
# Программа должна подсчитывать сумму чисел в файле и выводить ее на экран."

with open('5.txt', 'w', encoding='utf-8') as f:
    f.write(input('Enter some numbers, separated by spaces: '))

with open('5.txt', encoding='utf-8') as f2:
    my_numbers = f2.read()
    my_sum = 0
    for n in my_numbers.split():
        if n.isdigit():
            my_sum += int(n)
    print('Sum of your numbers is', my_sum)
