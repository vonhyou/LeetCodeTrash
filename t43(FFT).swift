// FFT有时间再写
import Foundation

func multiply(_ num1: String, _ num2: String) -> String {
}

print(multiply("123", "456"))
/*
#include <cstdio>
#include <cmath>
#include <cstring>
#include <algorithm>
#include <complex>

//#define cpx std::complex<double>

const double PI = 3.14159265;
const int MAXN = 200010, L = 10000;
char str1[MAXN], str2[MAXN];
int sum[MAXN << 1];

struct cpx {
  double r,i;
  cpx(){ }
  cpx(double x, double y) { r = x;i = y; }
  inline cpx operator *(const cpx&x) { return cpx(r*x.r - i*x.i,r*x.i + i*x.r ); }
  inline cpx operator +(const cpx&x) { return cpx(r + x.r,i + x.i); }
  inline cpx operator -(const cpx&x) { return cpx(r - x.r,i - x.i); }
} x1[MAXN], x2[MAXN];

inline void modify(cpx y[], int len ) {
  for (register int i = 1, j = len >> 1; i < len - 1; ++i) {
    if (i < j) std::swap(y[i], y[j]);
    register int k = len >> 1;
    while (j >= k) j -= k, k >>= 1;
    if (j < k) j += k;
  }
}


void fft(cpx y[], int len, int on) {
  modify(y, len);
  for (register int h = 2; h <= len; h <<= 1) {
    cpx wn(cos(-on * 2 * PI / h), sin(-on * 2 * PI / h));
    for (register int j = 0; j < len; j += h) {
      cpx w(1, 0);
      for (register int k = j; k < j + h / 2; ++k) {
        cpx u = y[k], t = w * y[k + h / 2];
        y[k] = u + t, y[k + h / 2] = u - t, w = w * wn;
      }
    }
  }
  if (!(on + 1))
    for (register int i = 0; i < len; ++i)
      y[i].r /= len;
}

char buf[L], *p = buf, *end = buf;
inline char getChar() {
  if (!(p - end)) {
    if (feof(stdin)) return '\0';
    p = buf, end = buf + fread(buf, 1, L, stdin);
  } return *(p++);
}

inline int getStr(char *s) {
  int len(0); char _c;
  while (!isdigit(_c = getChar()));
  do s[len++] = _c, _c = getChar();
  while (isdigit(_c));
  return len;
}

int main() {
  scanf("%*d");
  int len(1), lena = getStr(str1), lenb = getStr(str2);
  while (len < (lena << 1) || len < (lenb << 1)) len <<= 1;
  for (register int i = 0; i < lena; ++i)
    x1[i] = cpx(str1[lena - 1 - i] - '0', 0);
  for (register int i = lena; i < len; ++i) x1[i] = cpx(0, 0);
  for (register int i = 0; i < lenb; ++i)
    x2[i] = cpx(str2[lenb - 1 - i] - '0', 0);
  for (register int i = lenb; i < len; ++i) x2[i] = cpx(0, 0);
  fft(x1, len, 1), fft(x2, len, 1);
  for (register int i = 0; i < len; ++i) x1[i] = x1[i] * x2[i];
  fft(x1, len, -1);
  for (register int i = 0; i < len; ++i)
    sum[i] = (int) (x1[i].r + 0.5);
  for (register int i = 0; i < len; ++i)
    sum[i + 1] += sum[i] / 10, sum[i] %= 10;
  len = lena + lenb - 1;
  while (sum[len] <= 0 && len) --len;
  for (register int i = len; i + 1; --i)
    printf("%c", sum[i] + '0');
  printf("\n");
  return 0;
}
*/