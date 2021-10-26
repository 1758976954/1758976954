#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加kenzo8的package库及其依赖
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# 这是passwall插件的最新库地址，库名、包名、菜单名目前统一，之前菜单名是 科学上网、...还有什么名字瞎几把改的我忘了...
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# 这是openclash插件的最新库地址
#sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash' feeds.conf.default

# 饮料
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

# liuran001大佬的软件包
#sed -i '$a src-git liuran001 https://github.com/liuran001/openwrt-packages' feeds.conf.default

# 这是Lienol的package库，里面有一些lede里没有的包
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
