# matrix_template

（由 Codex 生成，2025-12-17）

这个目录提供一套“只有目录与标题结构、没有正文内容”的 LaTeX 模板代码，可直接在此基础上填写论文内容。

## 目录结构

- `main.tex`：主入口（章节/小节标题框架已按 `matrix/raw.md` 生成）
- `main.cfg`：论文题目等基础信息
- `abstract.tex` / `abstract.cfg`：中英文摘要与关键词（默认为空）
- `ref.bib`：参考文献（默认为空）
- `docs/`：封面等 PDF（可选）
- `pictures/`：图片资源（可选）
- `code/`：代码文件（可选）

## 编译

在本目录下运行：

```bash
latexmk -xelatex -pdf main.tex
```

如果要启用封面：

1. 把封面 PDF 放到 `docs/cover.pdf`
2. 在 `main.tex` 中取消 `\\includepdf` 那一行的注释
