print("你好，世界！");

## 数据类型
a, b, c, d, e = 20, 5.5, True, 4+3j, 'Sssss';
print(type(a), type(b), type(c), type(d), type(e),end="\n");

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

## 元组 Tuple  可以不同的数据类型
## 输出结果都带()
a = (1991, 2014, 'physics', 'math');
print(a, type(a), len(a));
s=20,;
print(s);
t=12345,54321,'hello!'
print(t)

## 集合 set  是一个无序的不重复的元素的集
emptyset=set()   # 创建空集合时，只能用set(),如果用s={}，创建的实际上是一个空字典。
print("===========空集合的长度===============",emptyset.__len__())
basket={'apple','orange','banana','banana'}
print("===========集合===============",basket)


## 字典 键值对  键必须是不重复的
tel={'jack':4098,'sape':4139}
tel['guido']=4320
print("===========字典===============",tel)

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

# 19968---40869 中文汉字对应的十进制unicode编码
print("================111============\n");
print(chr(65));
print("================2222============\n");
print(ord('A'));
print("=================3333===========\n");
print(chr(19968));
print("================444============\n");
print(ord(u'张'));
print("=================555===========\n");
print(ord('\u4e2d'));

ss=40000;
print("==========666========= %x" % ss);

yyy="海";
yyy.encode("utf-8").hex();
print(type(yyy));