# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 08 'ООП. Полезные дополнения', Задача про Лото:
"""
== Лото ==

Правила игры в лото.

Игра ведется с помощью специальных карточек, на которых отмечены числа,
и фишек (бочонков) с цифрами.

Количество бочонков — 90 штук (с цифрами от 1 до 90).

Каждая карточка содержит 3 строки по 9 клеток. В каждой строке по 5 случайных цифр,
расположенных по возрастанию. Все цифры в карточке уникальны. Пример карточки:

--------------------------
    9 43 62          74 90
 2    27    75 78    82
   41 56 63     76      86
--------------------------

В игре 2 игрока: пользователь и компьютер. Каждому в начале выдается
случайная карточка.

Каждый ход выбирается один случайный бочонок и выводится на экран.
Также выводятся карточка игрока и карточка компьютера.

Пользователю предлагается зачеркнуть цифру на карточке или продолжить.
Если игрок выбрал "зачеркнуть":
    Если цифра есть на карточке - она зачеркивается и игра продолжается.
    Если цифры на карточке нет - игрок проигрывает и игра завершается.
Если игрок выбрал "продолжить":
    Если цифра есть на карточке - игрок проигрывает и игра завершается.
    Если цифры на карточке нет - игра продолжается.

Побеждает тот, кто первый закроет все числа на своей карточке.

Пример одного хода:

Новый бочонок: 70 (осталось 76)
------ Ваша карточка -----
 6  7          49    57 58
   14 26     -    78    85
23 33    38    48    71
--------------------------
-- Карточка компьютера ---
 7 87     - 14    11
      16 49    55 88    77
   15 20     -       76  -
--------------------------
Зачеркнуть цифру? (y/n)

Подсказка: каждый следующий случайный бочонок из мешка удобно получать
с помощью функции-генератора.

Подсказка: для работы с псевдослучайными числами удобно использовать
модуль random: http://docs.python.org/3/library/random.html

"""

import random


class LotoCard:
    def __init__(self, name):
        self.name = name
        self.card = [[], [], []]
        all_numbers = []
        for i in range(1, 91): all_numbers.append(i)  # формируем список всех чисел
        card_numbers = []
        i = 0
        while i != 15:  # формируем список из 15 уникальных чисел в создаваемой карточке
            x = random.choice(all_numbers)
            card_numbers.append(x)
            all_numbers.remove(x)  # гарантирует уникальность чисел в карточке
            i += 1
        card_numbers.sort()
        for i in range(3):  # заполняем нашу карточку полученными числами и рандомно пустыми ячейками
            num_string = []
            for x in range(i, i + 13, 3): num_string.append(card_numbers[x])
            for x in range(4): num_string.insert(random.randint(0, len(num_string)), '  ')
            self.card[i] = num_string

    def __str__(self):
        print_card = '--------------------------\n'
        for i in range(3):
            print_card += f'{" ".join(str(x) for x in self.card[i])}\n'
        print_card += '--------------------------'
        return f'{print_card}'

    def check_num(self, num):
        for i in range(3):
            for k in range(9):
                if self.card[i][k] == num:
                    self.card[i][k] = ' -'
                    return True

    def check_win(self):
        digits = 0
        for i in range(3):
            for k in range(9):
                if str(self.card[i][k]).isdigit():
                    digits += 1
        if digits == 0: return True


class LotoGame:
    def __init__(self, player_1, player_2):
        self.player_1 = player_1
        self.player_2 = player_2

    def start(self):
        # создадим мешочек с бочонками:
        lotto_bag = []
        for i in range(1, 91): lotto_bag.append(i)
        random.shuffle(lotto_bag)  # перемешиваем бочонки
        while True:  # понеслась
            x = lotto_bag.pop()  # вытаскиваем бочонок
            print(f'Новый бочонок: {x} (осталось {len(lotto_bag)})')
            print('Ваша карточка:')
            print(self.player_1)
            print('Карточка компьютера:')
            print(self.player_2)
            yn = input('Зачеркнуть число? (y/n) ')
            print('')
            if yn == 'y':
                if self.player_1.check_num(x):
                    if self.player_1.check_win():
                        print('Поздравляем! Вы выиграли!!!')
                        print('Оставшиеся бочонки: ', *lotto_bag)
                        break
                else:
                    print('Такого числа в вашей карточке нет. Сожалеем, вы проиграли!')
                    break
                if self.player_2.check_num(x):
                    if self.player_2.check_win():
                        print('Не повезло -  выиграл компьютер.')
                        print('Оставшиеся бочонки: ', *lotto_bag)
                        break
            else:
                if self.player_1.check_num(x):
                    print('А на самом деле оно было. Сожалеем, вы проиграли!')
                    break

                if self.player_2.check_num(x):
                    if self.player_2.check_win():
                        print('Не повезло -  выиграл компьютер.')
                        print('Оставшиеся бочонки: ', *lotto_bag)
                        break


human_player = LotoCard('игрок')
computer_player = LotoCard('компьютер')
game = LotoGame(human_player, computer_player)
game.start()
