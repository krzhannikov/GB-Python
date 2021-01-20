# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 03 'Функции', Задача 2:
# "Реализовать функцию, принимающую несколько параметров, описывающих данные пользователя:
# имя, фамилия, год рождения, город проживания, email, телефон. Функция должна принимать параметры
# как именованные аргументы. Реализовать вывод данных о пользователе одной строкой."

def user_data(name, surname, year, city, email, phone):
    return 'Name: {}, Surname: {}, Year of birth: {}, Current city: {}, Email: {}, Phone: {}'.format(
        name, surname, year, city, email, phone
    )


print(user_data(
    name='John', surname='Smith', year=1975, city='Detroit', email='J.Smith@mydomain.com', phone='345-56-89'
))
