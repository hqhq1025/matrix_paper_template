#!/usr/bin/env perl

# 始终使用 XeLaTeX 生成 PDF，兼容 `latexmk` 和 `latexmk -xelatex -pdf` 两种调用方式
# 注意：这里故意把 “pdflatex” 规则的实际命令改成 xelatex，
# 这样即使命令行上带了 `-pdf` 选项，latexmk 也不会再调用真正的 pdflatex。

$pdflatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';
$pdf_mode = 1;  # 走 pdfLaTeX 规则，但底层命令已被替换为 xelatex
