#!/bin/bash
#
# Description: Thay thế mã nguồn gốc bằng mã nguồn Realtek SDK.
# Tối ưu bởi Gemini cho dự án G-97RG6W.
#

# 1. Xóa toàn bộ nội dung của thư mục mã nguồn gốc
echo 'Loại bỏ mã nguồn OpenWRT gốc...'
rm -rf ./*

# 2. Clone mã nguồn OpenWRT tích hợp Realtek SDK vào thư mục hiện tại
echo 'Tải về mã nguồn OpenWRT + Realtek SDK...'
git clone https://github.com/jekyll2014/rtl819x-sdk-openwrt.git .

# 3. Cập nhật các feeds đi kèm với mã nguồn mới
echo 'Cập nhật các feeds...'
./scripts/feeds update -a
./scripts/feeds install -a

echo 'Thay đổi nguyên liệu thành công!'
