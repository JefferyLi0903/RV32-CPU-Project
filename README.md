# RISC-CPU-GROUP
现在的CPU设计可以支持如下指令: 

```assembly
lw rd,rs1,imm; //x[rd]=sext(M[x[rs1]+sext(offset)])[31:0]
sw rs1,rs2,imm; //M[x[rs1]+sext(offset)][31:0]=x[rs2]
add rd,rs1,rs2; //x[rd]=x[rs1]+x[rs2]
sub rd,rs1,rs2; //x[rd]=x[rs1]-x[rs2]
mul rd,rs1,rs2; //x[rd]=x[rs1]*x[rs2]
addi rd,rs1,imm; //x[rd]=x[rs1]+sext[imm]
blt rs1,rs2,imm; //if(x[rs1]<x[rs2]) pc+=sext(offset)
```

还有一些其他指令，我们或许用不到，在此不再列出。[^1]

[^1]: 注意此处的加减乘除指令虽然使用了整数的指令写法，实际为定点数运算，第一位始终是整数部分。

## 端口说明

[control.md](./doc/control.md)

[decode.md](./doc/decode.md)

[ALU.md](./doc/ALU.md)

[din_2_mux.md](./doc/din_2_mux.md)

[ext32.md](./doc/ext32.md)

[pc.md](./doc/pc.md)

[register.md](./doc/register.md)

## 关于指令

找到了一个risc-v 32位的汇编器，已经研究出来使用方法了，git地址如下

```
ssh: git@github.com:JefferyLi0903/riscv-assembler.git
https: https://github.com/JefferyLi0903/riscv-assembler.git
```

## 参考资料
1. https://blog.csdn.net/kubidaolun/article/details/113267942?spm=1001.2101.3001.6650.7&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-7.fixedcolumn&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-7.fixedcolumn
2. https://blog.csdn.net/qq_44537408/article/details/112907875?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_title~default-0.no_search_link&spm=1001.2101.3001.4242.1
3. https://blog.csdn.net/qq_40697071/article/details/103340205
4. https://yangfan.blog.csdn.net/article/details/103353982?spm=1001.2101.3001.6650.19&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7Edefault-19.fixedcolumn&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7Edefault-19.fixedcolumn
5. https://blog.csdn.net/kubidaolun/article/details/113360009?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-2.fixedcolumn&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-2.fixedcolumn
6. [中文版指令集文档](./doc/RISC-V-Reader-Chinese-v2p1.pdf)