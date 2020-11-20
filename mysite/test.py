def fib(n):
    if n > 1:
        return fib(n-1)+fib(n-2)
    if n :
        return 1
    if n == 0:
        return 0
n=int(input("输入一个数n="))
print('n={0}，fib（{0}）={1}'.format(n,fib(n)))