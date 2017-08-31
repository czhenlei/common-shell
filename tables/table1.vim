:set ft=html

去掉^M
:%s/\r/\r/g

普通模式：gg=G

删除空行
:g/^\n/d

删除标签 
:%s/<[^>]\{-}>//g

修改平台
:set fileformat=unix