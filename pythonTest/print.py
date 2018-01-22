import sys;
import math;

s="hello,world! 你好，中国！";

print(s);

print(str(s));

print(str(1/7));

print(repr(s));

print(repr(1/7));

print(s.zfill(30));

print('The story of {0}, {1}, and {other}.'.format('Bill', 'Manfred',
                                                       other='Georg'));

table = {'Sjoerd': 4127, 'Jack': 4098, 'Dcab': 8637678}
print('Jack: {0[Jack]:d}; Sjoerd: {0[Sjoerd]:d}; '
          'Dcab: {0[Dcab]:d}'.format(table));

print('The value of PI is approximately %6.4f'%math.pi);