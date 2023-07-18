# ScuThesis

> **Warning** 
> 
> 2023届计算机学院存档时，明确要求使用 Word 格式。本模板目前仅供快速原型编辑，并**没有**从 `LaTeX` 转为 Word 的脚本。

ScuThsis 是一个**非官方**的四川大学本科生毕业设计论文模板，模板的制作目的是为了让大家可以更容易的利用 LaTeX 排版引擎制作出排版精美的毕业论文，一来提高毕业论文的排版质量，二来可以将更多的精力放在论文内容的输出上。

在2016届毕业生中共有10多位参与ScuThesis内测，并有4位获得四川大学本科优秀毕业论文，其中1位被打回，要求提交 `doc` 格式文档。

根据2023年毕业设计的工作要求，参考文献著录参照[《期刊编排格式》（GB/T 3179-2009）](https://journal.scu.edu.cn/info/1254/1205.htm)。本项目参考文献按照 GB/T 7714 执行。

## 注意事项

使用之前请阅读使用说明，并务必向指导老师咨询是否允许你提交PDF文档。

## 使用方法

使用 `git clone` 获取本项目，并使用 `git pull` 更新。

对于熟练掌握 `Git` 的同学，建议将模板作为论文项目的 `git submodule`，方便使用 `Git` 分别管理模板版本和论文版本。

> 因为符号链接在 `macOS` 上打不开所以不建议用这种方法了。
>
> 建议将模板与论文项目放置在不同的文件夹下，论文项目下使用符号链接链接到模板所在文件夹下，这样方便同时使用 git 管理模板版本和你自己的论文版本。

README文件夹下为帮助文档的源码，可以作为一个参考看看。

### 问题解决

### 封面中文标题过长溢出如何换行？

在需要换行的地方加上一个空格即可，如果标题超过三行，可能会把封面日期挤到下一页，可能需要手动修改 `scuthesis.cls` 245-249 行的行距。

### 编译失败

`macOS` 用户可以尝试把 `ctex-fontset-scuthesis.def` 删除（因为电脑中缺少相应字体）。

在项目目录下打开命令行，输入

```shell
latexmk -c # 清除编译产物
latexmk # 从头编译
```

在日志中搜索 `error` 等关键字来确定错误位置，比如发现

```
! Package fontspec Error: The font "Minion Pro" cannot be found.
```

那么说明电脑中没有 `Minion Pro` 字体，可以选择在模板中替换该字体或者从互联网下载安装该字体。

## License

The content of this project itself is licensed under the [LaTeX Project Public License 1.3c][lppl] license.

[lppl]: http://latex-project.org/lppl/
