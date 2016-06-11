#! /bin/bash
#作用：创建脚本时，自动添加头文件，
#包含，作者，时间，版本信息。新创建的脚本作用需要自定义。
bashName=$1
echo "$1 is created now"
#创建shell文件
touch $bashName.sh
#定义shell类型，采用bash
echo "# !/bin/bash">>$bashName.sh
#换行
sed '/$/a\\n' $bashName.sh
# 定义作者
echo "# @author: `who|cut -d ' ' -f1`">>$bashName.sh
sed  '/$/a\\n' $bashName.sh
# 时间
echo "# @date:`date`">>$bashName.sh
sed '/$/a\\n' $bashName.sh
echo "# 作用：">>$bashName.sh