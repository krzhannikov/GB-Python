# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 03 'Функции', Задача 1:
# "Реализовать функцию, принимающую два числа (позиционные аргументы) и выполняющую их деление.
# Числа запрашивать у пользователя, предусмотреть обработку ситуации деления на ноль."

def division(a, b):
    try:
        return round(a / b, 3)
    except ZeroDivisionError:
        return 'Error: Division by zero'


x = float(input('Enter first number: '))
y = float(input('Enter second number: '))

print(division(x, y))
