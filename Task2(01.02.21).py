# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 07 'ООП. Продвинутый уровень', Задача 2:
# "Реализовать проект расчета суммарного расхода ткани на производство одежды.
# Основная сущность (класс) этого проекта — одежда, которая может иметь определенное название.
# К типам одежды в этом проекте относятся пальто и костюм. У этих типов одежды существуют параметры:
# размер (для пальто) и рост (для костюма). Это могут быть обычные числа: V и H, соответственно.
# Для определения расхода ткани по каждому типу одежды использовать формулы: для пальто (V/6.5 + 0.5),
# для костюма (2 * H + 0.3). Проверить работу этих методов на реальных данных.
# Реализовать общий подсчет расхода ткани. Проверить на практике полученные на этом уроке знания:
# реализовать абстрактные классы для основных классов проекта, проверить на практике работу
# декоратора @property."
from abc import ABC, abstractmethod


class Clothes(ABC):
    def __init__(self, name):
        self.name = name

    @abstractmethod
    def dosmth(self):
        print('Hello world!')


class Coat(Clothes):
    def __init__(self, name, size):
        super().__init__(name)
        self.size = size
        self.tissue = round(self.size / 6.5 + 0.5, 2)

    def dosmth(self):
        print('Goodbye world, I`m in coat!')


class Suit(Clothes):
    def __init__(self, name, high):
        super().__init__(name)
        self.high = high
        self.tissue = self.high * 2 + 0.3

    @property
    def dosmth(self):
        print('Goodbye world, I`m in suit!')


def tissue_sum(model_list):  # total calculation of tissue consumption
    tiss_sum = 0
    for i in range(len(model_list)):
        tiss_sum += model_list[i].tissue
    return tiss_sum


coat_1 = Coat('Wide coat', 3)
suit_1 = Suit('High suit', 6)
coat_2 = Coat('Middle coat', 2.5)
suit_2 = Suit('Middle suit', 5)
coat_3 = Coat('Thin coat', 2)
suit_3 = Suit('Low suit', 4)
clothes_list = [coat_1, coat_2, coat_3, suit_1, suit_2, suit_3]

print(coat_1.tissue)
print(suit_1.tissue)

print(tissue_sum(clothes_list))

suit_3.dosmth  # test @property in dosmth() of Suit
