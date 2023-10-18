import os
from sys import stdin
import numpy as np
import matplotlib.pyplot as plt
from lib_t import *

os.system('gcc ./111.s')
y = []
for i in range(2):
    os.system('./a.out')
    y.append(stdin)
print(y)

plt.figure(figsize=(8, 6))
ax = plt.axes()
make_line_tm(ax, np.array(range(1000)), np.array(y), line=False, colory="#rand", label='o3',
             x_label="n", y_label="fs:40", title="fs:40 watching")

plt.savefig('gg.jpg')
