# Пользователь вводит данные о количестве предприятий, их наименования и прибыль за 4 квартал (т.е. 4 числа)
# для каждого предприятия. Программа должна определить среднюю прибыль (за год для всех предприятий) и отдельно
# вывести наименования предприятий, чья прибыль выше среднего и ниже среднего.
from collections import defaultdict


n = int(input("Сколько предприятий вы хотите добавить? "))
my_dict = defaultdict(list)
for _ in range(n):
    my_key = input("Введите название предприятия: ")
    for i in range(1, 5):
        my_dict[my_key].append(int(input(f"Введите прибыль за {i} квартал: ")))
aver_income = 0
for value in my_dict.values():
    aver_income += sum(value) / n
print("Средняя прибыль: ", aver_income)
spam = []
eggs = []
for key, value in my_dict.items():
    if sum(value) > aver_income:
        spam.append(key)
    else:
        eggs.append(key)
print("Предприятия с прибылью выше среднего:")
print(', '.join(spam))
print("Предприятия с прибылью ниже среднего:")
print(', '.join(eggs))
