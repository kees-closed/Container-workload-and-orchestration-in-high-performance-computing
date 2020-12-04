#!/usr/bin/python3

import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('benchmarks.csv', sep=',', na_values='.')
benchmarks = data.groupby('Benchmark')
benchmarks.boxplot(column=['Bare metal', 'Singularity', 'CharlieCloud', 'Enroot'])
plt.set_ylabel("y label")
#benchmarks.boxplot(column=['CG2'])
#benchmarks.boxplot(column=['CG4'])
#benchmarks.boxplot(column=['BiCGStab1'])
#benchmarks.boxplot(column=['BiCGStab2'])
#benchmarks.boxplot(column=['BiCGStab4'])
#benchmarks.boxplot(column=['ML4'])
plt.show()
