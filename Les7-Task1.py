# Отсортируйте по убыванию методом пузырька одномерный целочисленный массив, заданный случайными числами
# на промежутке [-100; 100). Выведите на экран исходный и отсортированный массивы.
# Примечания:
# ● алгоритм сортировки должен быть в виде функции, которая принимает на вход массив данных,
# ● постарайтесь сделать алгоритм умнее, но помните, что у вас должна остаться сортировка пузырьком.
# Улучшенные версии сортировки, например, расчёской, шейкерная и другие в зачёт не идут.
import random


SIZE = 10
MIN_ITEM = -100
MAX_ITEM = 100
my_array = [random.randint(MIN_ITEM, MAX_ITEM - 1) for _ in range(SIZE)]
print(my_array)


def bubble_sort(array):
    ln = len(array)
    for j in range(ln):
        spam = 0
        for i in range(ln - 1):
            if array[i] > array[i + 1]:
                array[i], array[i + 1] = array[i + 1], array[i]
                spam += 1
            if j == ln - i - 2:
                break
        if spam == 0:
            break


bubble_sort(my_array)
print(my_array)
