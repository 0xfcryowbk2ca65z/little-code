color koehler " 主题

set nocompatible " 兼容性

set helplang=cn " 语言设置

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " 打开文件时的编码

set fileencoding=utf-8 " 保存文件时的编码

set termencoding=utf-8 " 告诉终端所使用的编码

set encoding=utf-8 " 内部编码方式

set ruler " 显示标尺

syntax on " 语法高亮

set nobackup " 不产生备份文件

set hlsearch " 搜索时高亮显示被找到的文本

set number " 显示行号

set tabstop=4 " 设定 tab 长度为4个空格

set shiftwidth=4 " 缩进是4个空格

set expandtab " 用空格键替换制表符

set softtabstop=4 " 回退4个空格

set cindent " 使用 C/C++ 语言的自动缩进方式

set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等

set linebreak " 整词换行

set paste " 更佳的粘贴

set showcmd " 显示输入的命令

set incsearch " 搜索忽略大小写

set ttymouse=sgr " 鼠标的处理方式，兼容 xterm2 方式

autocmd BufNewFile *.php exec ":call SetPhpTitle()"

autocmd BufNewFile *.sh exec ":call SetBashTitle()"

let $now_date_time  = strftime("%Y-%m-%d %H:%M:%S %A")
let $file_path_name = expand("%:p:%t")

func SetPhpTitle()
  call setline(1, "<?php")
  call setline(2, "\/**")
  call setline(3, "* FileName: ".$file_path_name)
  call setline(4, "* CreateDateTime: ".$now_date_time)
  call setline(5, "*/")
  call setline(6, "")
endfunction

func SetBashTitle()
    call setline(1, "#!/bin/bash")
    call setline(2, "")
endfunction

" 光标定位到末行
autocmd BufNewFile * normal G
