qian=555;
def first(a,b,c,d):
    a=101;
    b="sekorm";
    c=[356];
    d=('h9h');
    ## print(a,b,c,d);


first(1,qian,3,4);
print(qian);


# 多种调用方式
def parrot(voltage, state='a stiff', action='voom', type='Norwegian Blue'):
    print("---------------", voltage);
    print("---------------", state);
    print("---------------", action);
    print("---------------", type);
    print("\n\n");

parrot(1000);                                          # 1 positional argument
parrot(voltage=1000);                                 # 1 keyword argument
parrot(voltage=1000000, action='VOOOOOM');             # 2 keyword arguments
parrot(action='VOOOOOM', voltage=1000000);             # 2 keyword arguments
parrot('a million', 'bereft of life', 'jump');         # 3 positional arguments
parrot('a thousand', state='pushing up the daisies');  # 1 positional, 1 keyword

## 列表推导式   样1
vec = [2, 4, 6];
vec22=[3*x for x in vec];
print(vec22);

## 列表推导式   样2
www=[3,6,9];
y=[[x, x**2] for x in www];
print(y);

## 列表推导式  行转列  样3
matrix = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
 ];
zz=[[row[i] for row in matrix] for i in range(4)];
print(zz);

# 遍历字典的方法
knights = {'gallahad': 'the pure', 'robin': 'the brave','black':"yyyyyyyy"}
for k, v in knights.items():
    print(k+"======", v);