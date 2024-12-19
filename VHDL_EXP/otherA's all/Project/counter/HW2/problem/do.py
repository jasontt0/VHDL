#!/usr/bin/env python
#coding=utf-8

import sys
import os
import math

####################
# 对象名/文件名/配置信息
####################

# 仿真运行时间
stop_time='20us'

# 源代码
src=['counter.vhd', 'tb.vhd']

# 顶层设计
top='tb'

# 输出波形文件名
ghw='./wave/wav.ghw'
vcd=''

# 仿真波形查看脚本
tcl='view.tcl'

# 仿真波形查看工具路径
#gtkwave=r'c:\gtkwave\bin\gtkwave.exe'
gtkwave=r'/usr/local/bin/gtkwave '

# 命令配置
ghdl_a=r'/usr/local/bin/ghdl -a --workdir=work --std=93 -fexplicit --ieee=standard '
ghdl_e=r'/usr/local/bin/ghdl -e --workdir=work --std=93 -fexplicit --ieee=standard '
ghdl_r=r'/usr/local/bin/ghdl -r --workdir=work '

ghdl_clean=r'/usr/local/bin/ghdl --clean --workdir=work'

####################
# 本地函数
####################

def exe(s):
    print(s)
    os.system(s)

####################
# 全局命令
####################
#windows下使用;删除上次综合产生的相关文件
#exe(r'del /Q wave\*.*')
#exe(r'del /Q work\*.*')
#linux下使用
exe(r'rm  .\wave\*')
exe(r'rm  .\work\*')

####################
# 编译
####################
print('======== Analysis VHDL files ========');
for f in src:
    exe(ghdl_a+f)

print('======== Elaboration ========');
exe(ghdl_e+top)

####################
# 仿真
####################
print('======== Simulation ========');
cmd=ghdl_r+top
if vcd:
    cmd=cmd+' --vcd='+vcd
if ghw:
    cmd=cmd+' --wave='+ghw
if stop_time:
    cmd=cmd+' --stop-time='+stop_time
exe(cmd)

####################
# 查看波形
####################
if ghw or vcd:
    if gtkwave:
        print('======== GTKWave ========');
        cmd=gtkwave
        if ghw:
            cmd=cmd+' '+ghw
        if vcd:
            cmd=cmd+' '+vcd
        if tcl:
            cmd=cmd+' -S '+tcl

        exe(cmd)



