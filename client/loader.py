with open('big.txt', 'w+') as file:
    for _ in range(2 ** 9):
        print('koldun' * 2 ** 20, file=file)