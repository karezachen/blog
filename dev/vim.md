# vim

## 移动光标

向下移动一格

```shell
j
```

向上移动一格

```shell
k
```

向左移动一格

```shell
h
```

向右移动一格

```shell
l
```

## 快速移动

普通模式下，`G`可以移动光标文末

```shell
G
```

普通模式下，`gg`可以移动光标至文首

```
gg
```

普通模式下，`ctrl` + `d`可以向下移动半页

```shell
ctrl d
```

普通模式下，`ctrl` + `u`可以向上移动半页

```shell
ctrl u
```

普通模式下，`ctrl` + `f`可以向下移动整页

```shell
ctrl f
```

普通模式下，`ctrl` + `b`可以向上移动整页

```shell
ctrl b
```

## 新建标签页

命令模式下，`tabe` + 文件名可以新建标签页并打开文件

```shell
:tabe {name}
```

命令模式下，`tabe` + `.`可以新建标签页并进入选择文件界面

```shell
:tabe .
```

命令模式下，`tabe`可以新建未命名文件标签页

```shell
:tabe
```

## 切换标签页

命令模式下，`gt`可以顺序切换标签页

```shell
:gt
```

命令模式下，`gT`可以逆序切换标签页

```shell
:gT
```