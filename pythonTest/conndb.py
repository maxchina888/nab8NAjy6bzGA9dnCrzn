#!/usr/bin/python3

import pymysql;
# 创建连接
conn = pymysql.connect(host='172.16.20.213', port=3306, user='root', passwd='devDBRott2456', db='usm')

# 使用 cursor() 方法创建一个游标对象 cursor
cursor = conn.cursor()

# 使用 execute()  方法执行 SQL 查询
cursor.execute("SELECT id,username FROM t_user ss")
results=cursor.fetchall();

for row in results:
      fname = row[0]
      fname222 = row[1]

       # 打印结果
      print ("fname=%s,lname=%s" % (fname,fname222))
# 使用 fetchone() 方法获取单条数据.




# 关闭数据库连接
conn.close()