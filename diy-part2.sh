#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

######################
#### 插件额外添加 ####

#### docker
#git clone https://github.com/lisaac/luci-lib-docker package/lean/luci-lib-docker
#git clone https://github.com/lisaac/luci-app-dockerman package/lean/luci-app-dockerman

#### 网易云音乐破解
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/lean/luci-app-unblockneteasemusic

#### 阿里DDNS
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns package/lean/luci-app-aliddns

#### 访问时间控制插件
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-accesscontrol package/lean/luci-app-accesscontrol

#### 添加uamrws的adguardhome插件
#git clone https://github.com/uamrws/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加rufengsuixing的adguardhome插件
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加SuLingGG的adguardhome插件
#git clone https://github.com/SuLingGG/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加lienol大的adguardhome插件
svn co  https://github.com/Lienol/openwrt-package/branches/other/luci-app-adguardhome package/lean/luci-app-adguardhome

#### 添加原smartdns插件
git clone https://github.com/pymumu/openwrt-smartdns.git package/lean/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns

#### 添加vssr插件
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

#### 添加passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/lean/openwrt-passwall

#### 添加bypass插件
git clone https://github.com/kiddin9/openwrt-bypass.git package/lean/openwrt-bypass

#### 添加clash插件
git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash

#### 添加京东签到
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus

#### 添加甜糖星愿自动收集
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/lean/luci-app-ttnode

#### 灵缇加速器
#git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git package/lean/luci-app-LingTiGameAcc
#git clone https://github.com/esirplayground/LingTiGameAcc.git package/lean/LingTiGameAcc

#### 添加eqos
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/lean/luci-app-eqos

#### 应用过滤
git clone https://github.com/destan19/OpenAppFilter.git package/lean/OpenAppFilter

#### 微信推送
#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
#git clone https://github.com/brvphoenix/wrtbwmon.git package/lean/wrtbwmon
#git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git package/lean/luci-app-wrtbwmon

#### OpenClash
git clone https://github.com/vernesong/OpenClash.git package/lean/OpenClash

#### ss
#git clone https://github.com/shadowsocks/luci-app-shadowsocks.git package/lean/luci-app-shadowsocks
#git clone https://github.com/shadowsocks/openwrt-shadowsocks.git package/lean/openwrt-shadowsocks

#### 添加锐捷校园插件
git clone https://github.com/BoringCat/luci-app-mentohust.git package/lean/luci-app-mentohust

#### 添加闪讯插件
#git clone -b LUCI-LUA-UCITRACK https://github.com/1758976954/feed-netkeeper.git package/lean/feed-netkeeper

#### 添加阿里云盘
#git clone https://github.com/messense/aliyundrive-webdav.git package/lean/aliyundrive-webdav

#### 添加Li文件管理
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser package/lean/luci-app-filebrowser

#### 应用商店添加
#git clone https://github.com/linkease/istore.git package/lean/istore
#git clone https://github.com/linkease/istore-ui.git package/lean/istore-ui

#### 添加li文件管理助手
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-fileassistant package/lean/luci-app-fileassistant

#### 添加高级设置
git clone https://github.com/sirpdboy/luci-app-advanced.git package/lean/luci-app-advanced

#### Shut Down Your Router关机脚本
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff

#### 定时设置插件
#git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/lean/luci-app-autotimeset

##################
#### 主题添加 ####

#### 删除原来lede固件自带的argon主题
rm -rf feeds/luci/themes/luci-theme-argon
#rm -rf package/diy/OpenAppFilter

#### 添加老竭力18.06的argon主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#### 添加最新openwrt的argon主题
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#### 添加老竭力的argon.config
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

#### 添加Rosy主题luci-theme-rosy
git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy

#### 添加18.06的luci-theme-edge主题拉取
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git package/lean/luci-theme-edge

#### 添加最新版的edge主题
#git clone https://github.com/kiddin9/luci-theme-edge.git package/lean/luci-theme-edge

#### luci-theme-opentopd主题拉取
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/lean/luci-theme-opentopd

#### luci-theme-atmaterial主题拉取
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial_new package/lean/luci-theme-atmaterial_new

#### luci-theme-mcat主题拉取
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-mcat package/lean/luci-theme-mcat

#### luci-theme-tomato主题拉取
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-tomato package/lean/luci-theme-tomato

#### luci-theme-infinityfreedom主题拉取
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom

#### luci-theme-neobird主题拉取
git clone https://github.com/thinktip/luci-theme-neobird.git package/lean/luci-theme-neobird

######################
#### 系统级别操作 ####

#### 一键安装到 emmc 脚本( phicomm n1 )
#git clone https://github.com/tuanqing/install-program package/install-program

#### 64位5.10内核切换5.15
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.4/g' target/linux/x86/Makefile

#### 切换mvebu内核为5.4
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' target/linux/mvebu/Makefile

#### 修改主机名字，把QianMu修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='QianMu'' package/lean/default-settings/files/zzz-default-settings

#### 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/OpenWrt /QianMuYiXiao /g" package/lean/default-settings/files/zzz-default-settings

#### 修改想要的root密码
#sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$uCK2IxJt$d.JPPvZJvJDioqTovr.2p/:18841:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings

#### 修改默认wifi名称ssid为QIANMUYIXIAO(双频一起换了)
#sed -i 's/ssid=OpenWrt/ssid=iPhone/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 详细到修改双频WiFi名称
#sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=openwrtplus/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i '/set wireless.default_radio0.ssid=openwrtplus/a\set wireless.default_radio1.ssid=openwrt' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 修改默认wifi密码key为你想要的密码
#sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#使用sed 在第四行后添加新字
#旧的好像sed -e 120a\set wireless.default_radio${devidx}.key=XXKDB-R4A package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\set wireless.default_radio${devidx}.key=1234567890' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
#sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

#### 稳定版修改R21xxx+自己的名字
#sed -i 's/R21.4.18/lede-17.01 Compiled By QianMuYiXiao/g' package/lean/default-settings/files/zzz-default-settings

#### 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-ifit/g' feeds/luci/collections/luci/Makefile
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

