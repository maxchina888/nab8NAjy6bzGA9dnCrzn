import tkinter.messagebox
from time import sleep
from warnings import warn

import win32com.client as win32


def excel():
    app = 'excel'
    x1 = win32.gencache.EnsureDispatch('%s.Application' % app)
    ss = x1.Workbooks.Add()
    sh = ss.ActiveSheet
    x1.Visible = True
    sleep(1)

    cell1 = sh.Cells(1, 1)
    cell1.Value = 'Python-to-%s Demo' % app

    sleep(1)
    for i in range(3, 8):
        sh.Cells(i, 1).Value = '中黄人'
        sleep(1)

    sh.Cells(i + 2, 1).Value = '第一个python的excel程序'

    tkinter.messagebox.showwarning(title='dfasdfas',message='dfdsfas')
    ss.Close(False)
    x1.Application.Quit()


if __name__ == '__main__':
    excel()
