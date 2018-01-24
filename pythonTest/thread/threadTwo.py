import threading

import time


def test(par):
    while True:
        time.sleep(20);
        print("打印数据"+par);

thread1=threading.Thread(target=test,args=('aaaaa',));
thread2=threading.Thread(target=test,args=('bbbbbbbbbbb',));
thread3=threading.Thread(target=test,args=('cccccccccc',));
thread4=threading.Thread(target=test,args=('ddddddddd',));
thread5=threading.Thread(target=test,args=('eeeeeeeeee',));
thread6=threading.Thread(target=test,args=('fffffffffffffffff',));

thread1.start();
# 线程1阻塞15秒后，再执行后面的线程

thread1.join(15);
thread2.start();
thread3.start();
thread4.start();
thread5.start();

# 学习来源就
# https://www.w3cschool.cn/python3/python3-tutorial.html

# http://www.runoob.com/python/python-pass-statement.html