*导入数据
import excel "D:\学期\大三春\计量经济学\大作业\成品\数据\final_data.xls", sheet("Sheet1") firstrow clear

*描述统计
sum BP CSR SIZE LEV SOE IND

*相关性分析
corr BP CSR SIZE LEV SOE IND

*面板数据回归
xtset ID YEAR

*B-P检验
xttest0 BP CSR SIZE LEV SOE IND

*Hausman检验
xtreg BP CSR SIZE LEV SOE IND, fe
estimates store fe
xtreg BP CSR SIZE LEV SOE IND, re
estimates store re
hausman fe re

*固定效应模型
xtreg BP CSR SIZE LEV SOE IND, fe robust
