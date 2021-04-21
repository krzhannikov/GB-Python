# В одномерном массиве найти сумму элементов, находящихся между минимальным и максимальным элементами.
# Сами минимальный и максимальный элементы в сумму не включать.

import random


SIZE = 20
MIN_ITEM = 1
MAX_ITEM = 100

array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]
print(array)

for count, value in enumerate(array):
    if value < MAX_ITEM:
        MAX_ITEM = value
        min_ind = count
    if value > MIN_ITEM:
        MIN_ITEM = value
        max_ind = count

my_sum = 0
for i in range(min_ind + 1, max_ind):
    my_sum += array[i]
print(my_sum)
