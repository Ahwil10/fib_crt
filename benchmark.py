import subprocess
import time
import matplotlib.pyplot as plt
import numpy as np

fib_values = [10**6, 10**7, 10**8, 5*10**8, 10**9]
times = []

for n in fib_values:
    print(f"Running for n={n}...")
    start = time.time()
    subprocess.run(["./fib_crt"], input=str(n), text=True)  # Modify main to accept input n
    end = time.time()
    times.append(end - start)

plt.plot(fib_values, times, marker='o')
plt.xscale('log')
plt.xlabel('Fibonacci Index n')
plt.ylabel('Execution Time (s)')
plt.title('Benchmark: Fibonacci n-th with CRT & OpenMP')
plt.grid(True)
plt.show()
