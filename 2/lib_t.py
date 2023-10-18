from random import random
import numpy as np
import matplotlib.pyplot as plt


def make_line_tm(ax, x: np.ndarray, y: np.ndarray,
                 xerr: np.ndarray = np.array([None]), yerr: np.ndarray = np.array([None]),
                 x_label='x', y_label='y', title='title', colory='#ed760e', label=None,
                 where_legend="upper left", fontsize=15, f_s_title=15, f_s_ax=10,
                 line=True, where_line=None, all_line=False, color_line=None, sc=True):
    if colory == "#rand":
        colory = (random(), random(), random())
    if color_line == None:
        color_line = colory

    if sc:
        ax.scatter(x, y, color=colory)

    if xerr.any() or yerr.any():
        if not xerr.any():
            xerr = [0] * len(x)
        elif not yerr.any():
            yerr = [0] * len(y)
        ax.errorbar(x, y, xerr=xerr, yerr=yerr, fmt='none', linewidth=1, capsize=2, color='#7d7f7d')

    if line:
        if where_line:
            x_c = x.loc[where_line[0]: where_line[1]]
            y_c = y.loc[where_line[0]: where_line[1]]

            # chi_squad_line
            # можно сделать когда-нибудь модификацию для очень большого разброса ошибок
            # pol = show_chsq_line(x, y, yerr)
            pol = np.poly1d(np.polyfit(x_c, y_c, 1))

            if all_line:
                ax.plot(x, pol(x), color=color_line, label=label)
            else:
                ax.plot(x_c, pol(x_c), color=color_line, label=label)
        else:
            pol = np.poly1d(np.polyfit(x, y, 1))
            ax.plot(x, pol(x), color=color_line, label=label)

    else:
        ax.plot(x, y, color=color_line, label=label)

    ax.minorticks_on()

    ax.grid(which='major', ls='--', color=(0.5, 0.5, 0.5, 0.1))
    ax.grid(which='minor', color=(0.5, 0.5, 0.5, 0.1), linestyle=':')

    ax.set_title(title, fontsize=f_s_title)
    ax.set_xlabel(x_label, fontsize=f_s_ax)
    ax.set_ylabel(y_label, fontsize=f_s_ax)

    if label:
        plt.legend(loc=where_legend, fontsize=fontsize)
