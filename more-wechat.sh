#!/bin/bash
#!/author:wuyouning
chmod +x ./more-wechat.sh
counts=1
regex="[0-9]"
echo -e "直接敲击etner打开一个微信\n你想打开多个微信可以输入数字后敲击enter，" 
read aNum
aNum=${aNum:-1} #空值判断 默认1

while [[ $aNum != $regex ]] #值做判断
do
    echo "输入不正确，重新输入数字吧"
    read aNum
done
    echo "棒棒，开始执行多开"
    while(( $aNum>=$counts ))
    do
        nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &
        echo "成功打开了$counts 个微信"
        let "counts++"
    done
        let "counts--"
        echo "执行完毕，一共打开了$counts 个微信，尽情享受吧！"
        echo "感觉有用去给我的知乎点个赞吧 https://www.zhihu.com/question/60153484"

c="`date`+启动了 $counts 个微信"
echo "$c" >> WeChat.log