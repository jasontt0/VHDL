#!/usr/bin/env python
#coding=utf-8

import sys
import os

# 源代码
src=['vote5.vhd', 'tb.vhd']

# 顶层设计
top='tb'

# 输出波形文件名:波形文件放的地方
ghw='./wave/wav.ghw'
vcd=''

# 仿真波形查看脚本
tcl='view.tcl'

# 仿真运行时间
stop_time='1us'

# EDA工具路径：你系统里的两个EDA工具文件
gtkwave=r'gtkwave '
ghdl   =r'/usr/local/bin/ghdl '

# 命令配置
ghdl_a=ghdl+r' -a --workdir=work --std=93 -fexplicit --ieee=synopsys '
ghdl_e=ghdl+r' -e --workdir=work --std=93 -fexplicit --ieee=synopsys '
ghdl_r=ghdl+r' -r --workdir=work '

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
exe(r'rm -r ./work/*.*')
exe(r'rm -r ./wave/*.*')

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



