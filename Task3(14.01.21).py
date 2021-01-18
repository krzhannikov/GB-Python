# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 02 'Встроенные типы и операции с ними', Задача 3:
# "Пользователь вводит месяц в виде целого числа от 1 до 12. Сообщить к какому времени года
# относится месяц (зима, весна, лето, осень). Напишите решения через list и через dict."

my_month = int(input('Input month number from 1 to 12: '))

month_list = ['winter', 'spring', 'summer', 'autumn']
if 3 <= my_month <= 5:
    print('It`s ', month_list[1])
elif 6 <= my_month <= 8:
    print('It`s ', month_list[2])
elif 9 <= my_month <= 11:
    print('It`s ', month_list[3])
else:
    print('It`s ', month_list[0])

# Альтернативный способ со словарём:

month_dict = {
    'winter': [1, 2, 12],
    'spring': [3, 4, 5],
    'summer': [6, 7, 8],
    'autumn': [9, 10, 11]
}
for key, value in month_dict.items():
    if my_month in value:
        print('It`s ', key)
