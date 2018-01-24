import os;
f = open('F:/nab8NAjy6bzGA9dnCrzn/pythonTest/file/mytxt.txt', 'r');

# 一行
print(f.readline());

# 多行
print(f.readlines());

# 文件的字节数
print(f.tell());

ff=os.listdir("d:/");

print(ff);

print("==================================================");

with open("F:/nab8NAjy6bzGA9dnCrzn/pythonTest/file/mytxt.txt") as f:
    for line in f:
        print(line, end="");