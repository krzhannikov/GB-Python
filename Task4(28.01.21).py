# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 06 'ООП', Задача 4:
# "Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты:
# speed, color, name, is_police (булево). А также методы: go, stop, turn(direction),
# которые должны сообщать, что машина поехала, остановилась, повернула (куда). Опишите
# несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar. Добавьте в базовый класс
# метод show_speed, который должен показывать текущую скорость автомобиля. Для классов
# TownCar и WorkCar переопределите метод show_speed. При значении скорости свыше 60 (TownCar)
# и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
# Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам,
# выведите результат. Выполните вызов методов и также покажите результат."

class Car:

    def __init__(self, speed, color, name, is_police=False):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        print('Car went')

    def stop(self):
        print('Car stopped')

    def turn(self, direction):
        print('Car turned', str(direction))

    def show_speed(self):
        print('current speed -', str(self.speed))
        if float(self.speed) > 60 and isinstance(self, TownCar):
            print('speed exceeded!')
        if float(self.speed) > 40 and isinstance(self, WorkCar):
            print('speed exceeded!')


class TownCar(Car):
    pass


class SportCar(Car):
    pass


class WorkCar(Car):
    pass


class PoliceCar(Car):
    pass


town_car1 = TownCar(65, 'Blue', 'Ford')
sport_car1 = SportCar(100, 'Red', 'Ferrari')
work_car1 = WorkCar(45, 'Black', 'BobCat')
police_car1 = PoliceCar(90, 'Gray', 'Lada', True)
town_car1.go()
town_car1.turn('left')
town_car1.show_speed()
town_car1.stop()
police_car1.show_speed()
work_car1.show_speed()
print('Your car is {}, it`s color - {}, it`s speed - {}.'.format(work_car1.name, work_car1.color, work_car1.speed))
print(sport_car1.is_police)
