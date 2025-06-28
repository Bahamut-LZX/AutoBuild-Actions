# OpenWrt-Actions & One-key AutoUpdate
支持的 OpenWrt 源码: `coolsnowwolf/lede`、`immortalwrt/immortalwrt`、`openwrt/openwrt`、`lienol/openwrt`、`padavanonly/immortalwrtARM`、`hanwckf/immortalwrt-mt798x`

**TARGET_PROFILE** 本地获取方法如下:
   
① 执行`make menuconfig`, 进行设备选择后即可保存并退出
   
② 在源码目录执行`egrep -o "CONFIG_TARGET.*DEVICE.*=y" .config | sed -r 's/.*DEVICE_(.*)=y/\1/'`
   
或`grep 'TARGET_PROFILE' .config` 均可获取 **TARGET_PROFILE**

## 使用一键更新固件脚本(可选)

   首先需要打开`TTYD 终端`或者使用`SSH`, 按需输入下方指令:

   更新固件: `autoupdate`

   使用镜像加速更新固件: `autoupdate -P`

   更新固件(不保留配置): `autoupdate -n`
   
   强制刷写固件(危险): `autoupdate -F`
   
   强制下载并刷写固件: `autoupdate -f`

   更新脚本: `autoupdate -x`
   
   打印运行日志:  `autoupdate --log`

   查看脚本帮助: `autoupdate --help`

## 鸣谢

   - [Lean's Openwrt Source code](https://github.com/coolsnowwolf/lede)

   - [P3TERX's Blog](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

   - [ImmortalWrt's Source code](https://github.com/immortalwrt)

   - [eSir 's workflow template](https://github.com/esirplayground/AutoBuild-OpenWrt/blob/master/.github/workflows/Build_OP_x86_64.yml)
   
   - [[openwrt-autoupdate](https://github.com/mab-wien/openwrt-autoupdate)] [[Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)]

   - [AutoBuild-Actions-BETA](https://github.com/Hyy2001X/AutoBuild-Actions-BETA)

   - 测试与建议: [CurssedCoffin](https://github.com/CurssedCoffin) [Licsber](https://github.com/Licsber) [sirliu](https://github.com/sirliu) [神雕](https://github.com/teasiu) [yehaku](https://www.right.com.cn/forum/space-uid-28062.html) [缘空空](https://github.com/NaiHeKK) [281677160](https://github.com/281677160)
