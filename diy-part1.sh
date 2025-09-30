#!/bin/bash
#
# Description: Tải về mã nguồn OpenWRT đã tích hợp Realtek GPON SDK.
# Tối ưu bởi Gemini cho dự án G-97RG6W.
#

# 1. Xóa thư mục mã nguồn cũ (nếu có)
echo 'Loại bỏ mã nguồn cũ...'
rm -rf openwrt

# 2. Clone mã nguồn OpenWRT tích hợp Realtek SDK
echo 'Tải về mã nguồn OpenWRT + Realtek SDK...'
git clone https://github.com/jekyll2014/rtl819x-sdk-openwrt.git openwrt

# 3. Di chuyển vào thư mục mã nguồn mới
cd openwrt

echo 'Thay đổi nguyên liệu thành công!'
