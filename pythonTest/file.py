import os;
f = open('D:/pythonTest/mytxt.txt', 'r');

# 一行
print(f.readline());

# 多行
print(f.readlines());

# 文件的字节数
print(f.tell());

ff=os.listdir("d:/");

print(ff);

print("==================================================");

with open("D:/pythonTest/mytxt.txt") as f:
    for line in f:
        print(line, end="");