# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 05 'Работа с файлами', Задача 3:
# "Создать текстовый файл (не программно), построчно записать фамилии сотрудников и величину
# их окладов. Определить, кто из сотрудников имеет оклад менее 20 тыс., вывести фамилии этих
# сотрудников. Выполнить подсчет средней величины дохода сотрудников."

with open('3.txt', encoding='utf-8') as my_file:
    my_lines = my_file.readlines()
    salary_sum, amount_of_lines = 0, 0
    for line in my_lines:
        my_list = line.split()
        if float(my_list[1]) < 20000:
            print(my_list[0], 'has salary less than 20000!')
        salary_sum += float(my_list[1])
        amount_of_lines += 1
    print('Average salary -', round(salary_sum / amount_of_lines, 2))
