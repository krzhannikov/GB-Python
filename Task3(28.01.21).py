# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 06 'ООП', Задача 3:
# "Реализовать базовый класс Worker (работник), в котором определить атрибуты:
# name, surname, position (должность), income (доход). Последний атрибут должен быть защищенным
# и ссылаться на словарь, содержащий элементы: оклад и премия, например, {"wage": wage, "bonus": bonus}.
# Создать класс Position (должность) на базе класса Worker. В классе Position реализовать
# методы получения полного имени сотрудника (get_full_name) и дохода с учетом премии (get_total_income).
# Проверить работу примера на реальных данных (создать экземпляры класса Position, передать данные,
# проверить значения атрибутов, вызвать методы экземпляров)."

class Worker:

    def __init__(self, name, surname, position, income):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = income


class Position(Worker):

    def get_full_name(self):
        print(str(self.name), str(self.surname))

    def get_total_income(self):
        print(self._income['wage'] + self._income['bonus'])


worker1 = Position('Ivan', 'Ivanov', 'TeamLid', {'wage': 100000, 'bonus': 50000})
print(worker1.name, worker1.surname, worker1.position, worker1._income)
worker1.get_full_name()
worker1.get_total_income()
