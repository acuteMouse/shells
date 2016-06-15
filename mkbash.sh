#! /bin/bash --login
#作用：创建脚本时，自动添加头文件，
#包含，作者，时间，版本信息。新创建的脚本作用需要自定义。
#获取参数，即想要创建的脚本名，不需要自己添加后缀 .sh
bashName=$1
#判断想创建的脚本名是否存在
if [ ! -f "$bashName.sh" ];then
#创建shell文件
touch $bashName.sh
	#判断是否成功的创建
	if [  -f $bashName.sh ];then
		#定义shell类型，采用bash
		echo "# !/bin/bash">>$bashName.sh
		#换行
		# 定义作者,默认采用当前登陆用户
		echo "# @author: `who|cut -d ' ' -f1`">>$bashName.sh
		# 时间
		echo "# @date:`date`">>$bashName.sh
		#作用
		echo "# 作用：">>$bashName.sh
		echo "$bashName.sh created succuessfully!"
	else
		echo "creat bash falied"
	fi
else
	echo "$bashName.sh is exited!"
fi
