# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 7:
# "Создать (не программно) текстовый файл, в котором каждая строка должна содержать данные о фирме:
# название, форма собственности, выручка, издержки.
# Пример строки файла: firm_1 ООО 10000 5000.
# Необходимо построчно прочитать файл, вычислить прибыль каждой компании, а также среднюю прибыль.
# Если фирма получила убытки, в расчет средней прибыли ее не включать.
# Далее реализовать список. Он должен содержать словарь с фирмами и их прибылями, а также словарь
# со средней прибылью. Если фирма получила убытки, также добавить ее в словарь (со значением убытков).
# Пример списка: [{“firm_1”: 5000, “firm_2”: 3000, “firm_3”: 1000}, {“average_profit”: 2000}].
# Итоговый список сохранить в виде json-объекта в соответствующий файл.
# Пример json-объекта:
# [{"firm_1": 5000, "firm_2": 3000, "firm_3": 1000}, {"average_profit": 2000}]
#
# Подсказка: использовать менеджеры контекста."

import json


profit_dict = {}
summ_profit, count_profit = 0, 0

with open('7.txt', encoding='utf-8') as f:
    my_lines = f.readlines()
    for line in my_lines:
        my_line = line.split()
        profit = float(my_line[2]) - float(my_line[3])
        if profit > 0:
            print(f'Компания {my_line[1]} "{my_line[0]}" получила прибыль {profit}')
            profit_dict[my_line[0]] = profit
            summ_profit += profit
            count_profit += 1
        else:
            print(f'Компания {my_line[1]} "{my_line[0]}" в убытке')
            profit_dict[my_line[0]] = profit
    count_dict = {"Средняя прибыль": round(summ_profit / count_profit, 2)}
    profit_list = [profit_dict, count_dict]

with open('7.json', 'w', encoding='utf-8') as f:
    json.dump(profit_list, f)

with open('7.json', encoding='utf-8') as f:
    print(json.load(f))
