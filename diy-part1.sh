#!/bin/bash
#
# Description: Thay thế mã nguồn gốc bằng mã nguồn Realtek SDK.
# Tối ưu bởi Gemini cho dự án G-97RG6W (v2 - Sửa lỗi dọn dẹp).
#

# 1. Xóa toàn bộ nội dung của thư mục mã nguồn gốc, bao gồm cả thư mục .git ẩn
echo 'Loại bỏ mã nguồn OpenWRT gốc (dọn dẹp triệt để)...'
rm -rf ./* ./.git

# 2. Clone mã nguồn OpenWRT tích hợp Realtek SDK vào thư mục hiện tại
echo 'Tải về mã nguồn OpenWRT + Realtek SDK...'
# --depth=1 để chỉ tải phiên bản mới nhất, tiết kiệm thời gian và dung lượng
git clone --depth=1 https://github.com/jekyll2014/rtl819x-sdk-openwrt.git .

# 3. Cập nhật các feeds đi kèm với mã nguồn mới
echo 'Cập nhật các feeds...'
./scripts/feeds update -a
./scripts/feeds install -a

echo 'Thay đổi nguyên liệu thành công!'
