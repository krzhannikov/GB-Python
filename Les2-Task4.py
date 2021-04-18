# Найти сумму n элементов следующего ряда чисел: 1 -0.5 0.25 -0.125 ...
# Количество элементов (n) вводится с клавиатуры.

def sum_of_el(num, count=1):
    global el
    global my_sum
    if count == num:
        return my_sum
    el /= -2
    my_sum += el
    count += 1
    return sum_of_el(n, count)


el = 1
my_sum = 1
n = int(input("Введите число элементов в ряду: "))
print("Сумма элементов:", sum_of_el(n))
