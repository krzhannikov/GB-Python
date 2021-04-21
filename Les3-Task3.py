# В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.

import random


SIZE = 20
MIN_ITEM = -100
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

array[min_ind], array[max_ind] = array[max_ind], array[min_ind]
print(array)

