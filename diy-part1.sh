#!/bin/bash
#
# Description: Xóa hẳn source gốc và thay bằng Realtek SDK.
# Tối ưu bởi Gemini cho dự án G-97RG6W (v3 - Logic mới).
#

# 1. Xóa hoàn toàn thư mục mã nguồn gốc
echo 'Xóa sổ mã nguồn OpenWRT gốc...'
rm -rf ./openwrt

# 2. Clone mã nguồn OpenWRT tích hợp Realtek SDK với đúng tên thư mục 'openwrt'
echo 'Tải về mã nguồn OpenWRT + Realtek SDK...'
git clone --depth=1 https://github.com/jekyll2014/rtl819x-sdk-openwrt.git openwrt

echo 'Thay đổi nguyên liệu thành công!'
