# В массиве найти максимальный отрицательный элемент. Вывести на экран его значение и позицию в массиве.
# Примечание к задаче: пожалуйста не путайте «минимальный» и «максимальный отрицательный».
# Это два абсолютно разных значения.

import random


SIZE = 20
MIN_ITEM = -100
MAX_ITEM = 100

array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]
print(array)

for count, value in enumerate(array):
    if MIN_ITEM < value < 0:
        MIN_ITEM = value
        my_ind = count
print('Максимальный отрицательный элемент:', MIN_ITEM)
print('Его позиция в массиве:', my_ind)
