#!/usr/bin/python
print("你好，世界！");

## 数据类型
a, b, c, d, e = 20, 5.5, True, 4+3j, 'Sssss';
print(type(a), type(b), type(c), type(d), e,end=",");

## 取模(余数)
print(12%5);

## 除法（取整数部分）
print(103//20);
## 除法
print(103/20);

## 字符串不能改变
p="abcdefghijklmnopqrstuvwxyz";
## p[2,6]='ioio';    ## TypeError: 'str' object does not support item assignment

## List中的元素是可以改变的
a = [1, 2, 3, 4, 5];
a=a + [6, 7, 8];
print(a);

## 元组 Tuple
a = (1991, 2014, 'physics', 'math');
print(a, type(a), len(a));
s=(20,);
print(s);

## is身份运算符
a=20;
b=20;
if(a is not b):
  print("true");
else:
  print("false");

'''计算'''
print(1%6,11%6,111%6,1111%6,11111%6,111111%6,1111111%6);

"""幂运算"""
print(2**10);

s="helpA";
print(s[-3]);