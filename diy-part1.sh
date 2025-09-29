#!/bin/bash
#
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Tối ưu bởi Gemini cho dự án G-97RG6W
#

# 1. Xóa thư mục mã nguồn OpenWRT gốc đang có
echo 'Loại bỏ mã nguồn OpenWRT gốc...'
rm -rf openwrt

# 2. Clone mã nguồn X-WRT đã được tùy chỉnh cho Realtek
echo 'Tải về mã nguồn X-WRT đã được tối ưu cho Realtek...'
git clone https://github.com/x-wrt/x-wrt.git openwrt

# 3. Di chuyển vào thư mục mã nguồn mới
cd openwrt

# 4. Thêm các feed tùy chỉnh (nếu cần)
# echo 'src-git custom_feed https://github.com/user/custom_feed' >> feeds.conf.default

echo 'Thay đổi nguyên liệu thành công!'
