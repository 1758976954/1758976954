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
#sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

######################
#### 插件额外添加 ####

#### 添加uamrws的adguardhome插件
#git clone https://github.com/uamrws/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加rufengsuixing的adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加SuLingGG的adguardhome插件
#git clone https://github.com/SuLingGG/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#### 添加smartdns插件
#git clone https://github.com/qianmuyixiao/luci-app-smartdns.git package/lean/luci-app-smartdns
#git clone https://github.com/qianmuyixiao/smartdns.git package/lean/smartdns

#### 添加原smartdns插件
git clone https://github.com/pymumu/openwrt-smartdns.git package/lean/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns

#### 添加vssr插件
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

#### 添加京东签到
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus

#### 灵缇加速器
#git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git package/lean/luci-app-LingTiGameAcc
#git clone https://github.com/esirplayground/LingTiGameAcc.git package/lean/LingTiGameAcc

#### 修改版eqos
git clone https://github.com/1758976954/luci-app-eqos.git package/lean/luci-app-eqos

#### 应用过滤
git clone https://github.com/destan19/OpenAppFilter.git package/lean/OpenAppFilter

#### 微信推送
#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
#git clone https://github.com/brvphoenix/wrtbwmon.git package/lean/wrtbwmon
#git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git package/lean/luci-app-wrtbwmon

#### Shut Down Your Router关机脚本
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff

#### OpenClash
#git clone https://github.com/vernesong/OpenClash.git package/lean/OpenClash

#### 添加锐捷校园插件
git clone https://github.com/BoringCat/luci-app-mentohust.git package/lean/luci-app-mentohust

##################
#### 主题添加 ####

#### 删除原来lede固件自带的argon主题
rm -rf  package/lean/luci-theme-argon

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
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/lean/luci-theme-opentopd

#### luci-theme-atmaterial主题拉取
#git clone https://github.com/1758976954/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial

#### luci-theme-opentomcat主题拉取
#git clone https://github.com/1758976954/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat

#### luci-theme-infinityfreedom主题拉取
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom

######################
#### 系统级别操作 ####

#### 64位5.4内核切换5.10
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/x86/Makefile

#### 修改主机名字，把QianMu修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='QianMu'' package/lean/default-settings/files/zzz-default-settings

#### 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/OpenWrt /QianMuYiXiao /g" package/lean/default-settings/files/zzz-default-settings

#### 修改想要的root密码
#sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$uCK2IxJt$d.JPPvZJvJDioqTovr.2p/:18841:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings

#### 修改默认wifi名称ssid为QIANMUYIXIAO(双频一起换了)
#sed -i 's/ssid=OpenWrt/ssid=QIANMUYIXIAO/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 详细到修改双频WiFi名称
sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=wifi-5g/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio0.ssid=wifi-5g/a\      set wireless.default_radio1.ssid=wifi-2g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 修改默认wifi密码key为你想要的密码
#sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#使用sed 在第四行后添加新字
#旧的好像sed -e 120a\set wireless.default_radio${devidx}.key=XXKDB-R4A package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\set wireless.default_radio${devidx}.key=password' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#### 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-turboacc/po/zh-cn/turboacc.po

#### 稳定版修改R21xxx+自己的名字
#sed -i 's/R21.4.18/lede-17.01 Compiled By QianMuYiXiao/g' package/lean/default-settings/files/zzz-default-settings

#### 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-ifit/g' feeds/luci/collections/luci/Makefile
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
