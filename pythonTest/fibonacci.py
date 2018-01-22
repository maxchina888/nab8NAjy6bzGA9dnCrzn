import sys

def fibonacci(n): # 生成器函数 - 斐波那契
    a, b, counter = 0, 1, 0;
    while True:
        if (counter > n):
            return
        yield a
        a, b = b, a + b;
        counter += 1;

print(type(fibonacci(10)));