# GeekBrains 'Профессия программист Python', Курс 01 'Основы языка Python',
# Урок 07 'ООП. Продвинутый уровень', Задача 1:
# "Реализовать класс Matrix (матрица). Обеспечить перегрузку конструктора класса (метод __init__()),
# который должен принимать данные (список списков) для формирования матрицы.
# Подсказка: матрица — система некоторых математических величин, расположенных в виде прямоугольной схемы.
# Примеры матриц вы найдете в методичке.
# Следующий шаг — реализовать перегрузку метода __str__() для вывода матрицы в привычном виде.
# Далее реализовать перегрузку метода __add__() для реализации операции сложения двух объектов
# класса Matrix (двух матриц). Результатом сложения должна быть новая матрица.
# Подсказка: сложение элементов матриц выполнять поэлементно — первый элемент первой строки
# первой матрицы складываем с первым элементом первой строки второй матрицы и т.д."

matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
matrix2 = [[9, 3, -4], [13, 11, 0], [-6, -5, 8]]
matrix3 = [[7, 3, 2], [-1, -6, 5], [0, 9, 1]]
matrix4 = [[1, 2], [3, 4]]


class Matrix:
    def __init__(self, matrix):
        self.matrix = matrix

    def __str__(self):
        print_matrix = ''
        for i in self.matrix:
            print_matrix += f'{" ".join(str(x) for x in i)}\n'
        return f'{print_matrix}'

    def __add__(self, add_mat):
        if len(self.matrix) == len(add_mat.matrix) and len(self.matrix[0]) == len(add_mat.matrix[0]):
            new_mat = []
            for i in range(len(self.matrix)):
                new_mat.append([])
                for j in range(len(self.matrix[i])):
                    new_mat[i].append(self.matrix[i][j] + add_mat.matrix[i][j])
            return Matrix(new_mat)
        else:
            raise Exception('Matrices of different sizes!')


my_matrix1 = Matrix(matrix1)
my_matrix2 = Matrix(matrix2)
my_matrix3 = Matrix(matrix3)
my_matrix4 = Matrix(matrix4)

print(my_matrix2)
print(my_matrix3 + my_matrix1)
#print(my_matrix3 + my_matrix4)  # raise exception
