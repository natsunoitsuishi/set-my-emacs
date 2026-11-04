# set-my-emacs

我的个人 Emacs 配置,按模块拆分,适用于 Debian Linux。

## 目录结构

```
.
├── early-init.el      # 启动早期设置(GUI 元素、包管理优化等)
├── init.el            # 入口,加载 lisp/ 下的各模块
├── custom.el          # Emacs Customize 自动生成的设置
└── lisp/
    ├── init-packages.el     # 包管理
    ├── init-ui.el           # 外观:字体、主题、行号
    ├── init-editor.el       # 编辑器基础设置
    ├── init-keys.el         # 快捷键
    ├── init-completion.el   # 补全
    ├── init-prog.el         # 通用编程设置
    ├── init-c.el            # C / C++
    ├── init-rust.el         # Rust
    └── init-asm.el          # 汇编
```

## 安装

需要 Emacs 29 或更高版本。

```bash
# 如果已有 ~/.emacs.d,先备份
mv ~/.emacs.d ~/.emacs.d.bak

git clone <仓库地址> ~/.emacs.d
```

首次启动时会自动下载所需的包,请保持网络畅通并稍等片刻。

> `elpa/`、`eln-cache/` 等自动生成的内容已在 `.gitignore` 中排除,不会上传。

## 字体:Iosevka

默认使用 [Iosevka](https://github.com/be5invis/Iosevka),需要先安装到系统。

### 1. 下载

打开 <https://github.com/be5invis/Iosevka/releases>,在最新版本的 Assets 中下载:

- `PkgTTC-Iosevka-<版本号>.zip`:普通 Iosevka,无衬线,等宽(推荐)
- `PkgTTC-IosevkaSlab-<版本号>.zip`:等宽衬线版

例如 v34.9.1:

```bash
cd ~/Downloads
wget https://github.com/be5invis/Iosevka/releases/download/v34.9.1/PkgTTC-Iosevka-34.9.1.zip
```

校验(可选),结果应为 `ecc4e30d932ffb862ef3a92745d4e88d09151d06bfe3a68aa3bd4758822590d7`:

```bash
sha256sum PkgTTC-Iosevka-34.9.1.zip
```

### 2. 安装

仅当前用户使用(无需 sudo):

```bash
mkdir -p ~/.local/share/fonts/Iosevka
unzip PkgTTC-Iosevka-34.9.1.zip -d ~/.local/share/fonts/Iosevka
fc-cache -fv
```

所有用户使用:

```bash
sudo mkdir -p /usr/local/share/fonts/Iosevka
sudo unzip PkgTTC-Iosevka-34.9.1.zip -d /usr/local/share/fonts/Iosevka
sudo fc-cache -fv
```

### 3. 验证

```bash
fc-list | grep -i "iosevka"
```

有输出即安装成功,字体族名为 `Iosevka`。

### 4. 在 Emacs 中使用

`lisp/init-ui.el` 中的字体设置:

```elisp
(set-face-attribute 'default nil
                    :family "Iosevka"
                    :height 120)
```

如果想用其他变体,把 `:family` 改成对应的族名即可,例如 `"Iosevka Slab"`。安装后需要重启 Emacs(daemon 模式要重启 daemon)。

在 Emacs 里可以用 `M-x describe-font` 确认当前使用的字体。

## 许可

自用配置,随意参考。
