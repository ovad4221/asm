import numpy as np
import matplotlib.pyplot as plt
from lib_t import *

with open('time_my.txt', 'r') as f:
    my = list(map(float, f.read().split()))

with open('time_o0.txt', 'r') as f:
    o0 = list(map(float, f.read().split()))

with open('time_o1.txt', 'r') as f:
    o1 = list(map(float, f.read().split()))

with open('time_o2.txt', 'r') as f:
    o2 = list(map(float, f.read().split()))

with open('time_o3.txt', 'r') as f:
    o3 = list(map(float, f.read().split()))

with open('cust.txt', 'r') as f:
    cu = list(map(float, f.read().split()))

x = []
n = 10
while n < 30000:
    x.append(n)
    n *= 1.3
x.append(n)

plt.figure(figsize=(8, 6))
ax = plt.axes()
make_line_tm(ax, np.array(x), np.array(my), line=False, colory="#rand", label='my')
make_line_tm(ax, np.array(x), np.array(cu), line=False, colory="#rand", label='cu')
make_line_tm(ax, np.array(x), np.array(o0), line=False, colory="#rand", label='o0')
make_line_tm(ax, np.array(x), np.array(o1), line=False, colory="#rand", label='o1')
make_line_tm(ax, np.array(x), np.array(o2), line=False, colory="#rand", label='o2')
make_line_tm(ax, np.array(x), np.array(o3), line=False, colory="#rand", label='o3',
             x_label="n", y_label="time", title="time(n)")

plt.savefig('gg.jpg')
