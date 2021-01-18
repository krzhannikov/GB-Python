# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 02 'Встроенные типы и операции с ними', Задача 2:
# "Для списка реализовать обмен значений соседних элементов, т.е. Значениями обмениваются
# элементы с индексами 0 и 1, 2 и 3 и т.д. При нечетном количестве элементов последний сохранить
# на своем месте. Для заполнения списка элементов необходимо использовать функцию input()."

my_list = []
while True:
    my_el = input('Input next element or press "enter" to exit: ')
    if my_el == '':
        break
    my_list.append(my_el)
print('Your list: ', my_list)

if len(my_list) // 2 == 0:
    for i in range(0, len(my_list), 2):
        my_list[i], my_list[i + 1] = my_list[i + 1], my_list[i]
else:
    for i in range(0, len(my_list) - 1, 2):
        my_list[i], my_list[i + 1] = my_list[i + 1], my_list[i]

print('New list: ', my_list)
