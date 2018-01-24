import socket

clientSocker=socket.socket(socket.AF_INET,socket.SOCK_STREAM);
# 端口要与服务器端对应
clientSocker.connect((socket.gethostname(),9999)); #拨通电话

while True:
    # 接收电脑键盘输入
    inputStr=input("请输入：");
    # 将接受到的字符串转换为bytes后，发送到服务器
    clientSocker.send(inputStr.encode('utf-8')); #发消息

# 接收服务器返回的数据，并转换为string类型
back_msg=clientSocker.recv(1024).decode('utf-8');
print('服务器端返回的字符：%s' %back_msg);

clientSocker.close();