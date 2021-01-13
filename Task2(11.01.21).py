# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 01 'Знакомство с Python', Задача 2:
# "Пользователь вводит время в секундах. Переведите время в часы, минуты и секунды
# и выведите в формате чч:мм:сс. Используйте форматирование строк."

usertime = int(input('Введите время в секундах: '))
hours = usertime // 3600
minutes = (usertime % 3600) // 60
seconds = (usertime % 3600) % 60
if len(str(hours)) == 1:
    hours = '0' + str(hours)
if len(str(minutes)) == 1:
    minutes = '0' + str(minutes)
if len(str(seconds)) == 1:
    seconds = '0' + str(seconds)
print(f'{hours}:{minutes}:{seconds}')
