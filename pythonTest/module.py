import sys;
import fibonacci;
from com.china.second.grade import funpack;

print(sys.path);
print("==============================================");
print(sys.version);
print("==============================================");
print(sys.copyright);
print("==============================================");
print(sys.getdefaultencoding());
print("==============================================");
print(sys.getprofile());
print("==============================================");

## 是一个产生器
ss=fibonacci.fibonacci(15);
it=iter(ss);
for x in it:
  print(x,end="   ");

print("\n==============================================");

print(dir());

print(dir(sys));

# ['D:/pythonTest/module.py']
print(sys.argv);
print(sys.__stdin__);
print(sys.__stdout__);

# 本模块 __main__
print(__name__);
# 来自的模块 fibonacci
print(fibonacci.__name__);

print("\n==============================================");

funpack.herk();
