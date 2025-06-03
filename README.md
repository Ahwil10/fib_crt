# Computing large Fibonacci numbers
Here a description of the project.
# Fibonacci Computation Project

## Efficient Computation of Large Fibonacci Numbers

This project explores and implements various methods for computing large Fibonacci numbers, focusing on performance and scalability. The algorithms include:

* **Memoization (Linear Time)**
* **Fast Doubling with Modular Arithmetic (Logarithmic Time)**
* **Parallelized Chinese Remainder Theorem (CRT) Approach (Logarithmic Time with Parallelism)**

> **Goal**: Efficiently compute very large Fibonacci numbers (e.g., $F_{200{,}000}$ and beyond), within practical time and memory constraints.

---

## 🧠 Theoretical Background

### Fibonacci Sequence

Defined by:

$F_n = F_{n-1} + F_{n-2} \quad \text{with} \quad F_0 = 0,\ F_1 = 1$

Appears frequently in mathematics, computer science, and applications like cryptography, dynamic programming, and combinatorics.

### Complexity of Approaches

| Method                | Time Complexity        | Space Complexity |
| --------------------- | ---------------------- | ---------------- |
| Naive Recursion       | $O(\varphi^n)$         | $O(n)$           |
| Memoization           | $O(n)$                 | $O(n)$           |
| Matrix Exponentiation | $O(\log n)$            | $O(1)$           |
| CRT + Fast Doubling   | $O(\log n)$ (parallel) | $O(k)$           |

---

## 🚀 Implemented Methods

### 1. **Memoization (Dynamic Programming)**

* Simple and efficient for moderate $n$
* Stores previously computed values to avoid recomputation

### 2. **Fast Doubling (Modular)**

* Based on the identities:

  * $F_{2k} = F_k (2F_{k+1} - F_k)$
  * $F_{2k+1} = F_{k+1}^2 + F_k^2$
* Works efficiently with modular arithmetic

### 3. **Chinese Remainder Theorem (CRT)**

* Decomposes computation into several smaller moduli $m_i$
* Uses parallel processing to compute $F_n \bmod m_i$
* Reconstructs final value with CRT

---

## 📈 Benchmarks

Benchmarks show:

* **Memoization** handles up to $F_{10^6}$ comfortably
* **CRT + Fast Doubling** computes $F_{10^7+}$ efficiently, especially with 8+ parallel workers
* **Naive methods** impractical beyond $n = 30$

---

## 📦 Requirements

* Python 3.8+
* NumPy (optional, for CRT)
* Matplotlib (for plotting)
* `multiprocessing` (standard lib)

Install with:

```bash
pip install matplotlib
```

---

## ▶️ Usage

```bash
python fibonacci_crt.py
```

Produces:

* Runtime comparisons
* Plot of max Fibonacci index computed in 1 second
* Optionally exports large Fibonacci numbers

---

## 📚 Reference

This implementation is based on the paper:

> **Efficient Computation of Large Fibonacci Numbers Using Recursion, Memoization, and the Chinese Remainder Theorem**
> Jefferson Lamiña, Israel Pineda
> Yachay Tech University, Ecuador

### Citation

```bibtex
@inproceedings{lamina2025fibonacci,
  title={Efficient Computation of Large Fibonacci Numbers Using Recursion, Memoization, and the Chinese Remainder Theorem},
  author={Lamiña, Jefferson and Pineda, Israel},
  booktitle={TICEC 2025},
  year={2025},
  organization={Yachay Tech University}
}
```

---

## 🧪 Future Work

* Reconstruct large fibonacci numbers using CRT

## 🧑‍🤝‍🧑 Acknowledgments

* Israel Pineda
* YT channel Sheafification of G

---


