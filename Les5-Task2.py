# Написать программу сложения и умножения двух положительных целых шестнадцатеричных чисел. При этом каждое
# число представляется как коллекция, элементы которой — цифры числа. Например, пользователь ввёл A2 и C4F.
# Нужно сохранить их как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно. Сумма чисел из примера: [‘C’, ‘F’, ‘1’],
# произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].
from collections import defaultdict


# создадим словарь всех 16-ричных цифр
full_dict = defaultdict(str)
numbers = '0123456789ABCDEF'
for i in range(16):
    full_dict[i] = numbers[i:i+1]


# напишем функцию получения ключа нашего словаря по его элементу
def get_key(my_value):
    for key, value in full_dict.items():
        if value == my_value:
            return key


first_num = list(input("Введите первое число в 16-ричном формате: "))
sec_num = list(input("Введите второе число в 16-ричном формате: "))
# развернём их для дальнейшего удобства подсчётов
first_num.reverse()
sec_num.reverse()

# дополним самое короткое число незначащими нулями для удобства использования в цикле далее
if len(first_num) > len(sec_num):
    for _ in range(len(first_num) - len(sec_num)):
        sec_num.append('0')
else:
    for _ in range(len(sec_num) - len(first_num)):
        first_num.append('0')

my_sum = []
eggs = 0  # отвечает за перенос 1 в следующий разряд
for i in range(len(first_num)):
    spam = get_key(first_num[i]) + get_key(sec_num[i]) + eggs
    eggs = 0
    if spam > 15:
        my_sum.append(full_dict[spam - 16])
        eggs = 1
    else:
        my_sum.append(full_dict[spam])
    if i == len(first_num) - 1 and eggs == 1:
        my_sum.append('1')
my_sum.reverse()
print('Сумма чисел: ', ''.join(my_sum))
