import socket

serversocket =socket.socket(socket.AF_INET,socket.SOCK_STREAM); #买手机
serversocket.bind((socket.gethostname(),9999)); #插电话卡
serversocket.listen(5); #开机，backlog

while 1:
    conn,addr=serversocket.accept(); #接电话

    print(conn,end="\n");

    print(addr,end="\n");

    while 1:
        # conn.recv(1024)是bytes类型，decode是将其转换为字符串类型
        client_msg=conn.recv(1024).decode("UTF-8"); #收消息

        # <class 'str'>
        print(type(client_msg));

        # 打印字符串，记得中间没有逗号
        print('服务器接收到客户端送来的数据： %s' %client_msg);

        server_msg='服务器送给客户端的数据============'+client_msg;
        # encode是将字符串转换为bytes类型
        conn.send(server_msg.encode("UTF-8")); #发消息

    # 关闭连接
    conn.close();

while 2:
    conn,addr=serversocket.accept(); #接电话

    print(conn,end="\n");

    print(addr,end="\n");

    while 2:
        # conn.recv(1024)是bytes类型，decode是将其转换为字符串类型
        client_msg=conn.recv(1024).decode("UTF-8"); #收消息

        # <class 'str'>
        print(type(client_msg));

        # 打印字符串，记得中间没有逗号
        print('服务器接收到客户端送来的数据： %s' %client_msg);

        server_msg='服务器送给客户端的数据============'+client_msg;
        # encode是将字符串转换为bytes类型
        conn.send(server_msg.encode("UTF-8")); #发消息

    # 关闭连接
    conn.close();

# 关闭socket
serversocket.close();