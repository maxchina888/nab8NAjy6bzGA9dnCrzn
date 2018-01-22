import sys;

#  range(开始值，结束值，增量)
for i in range(-20,1,3):
    print(i);

list=[1,2,3,25];
it=iter(list);

for x in it:
  print(x);

print(sys.path);