#!/bin/bash
#
# Description: Tùy chỉnh mã nguồn (nếu cần).
# Nhiệm vụ clone đã được chuyển sang file workflow chính.
#

# Cập nhật các feeds đi kèm với mã nguồn
echo 'Cập nhật các feeds...'
./scripts/feeds update -a
./scripts/feeds install -a

echo 'Script tùy chỉnh thực thi thành công!'
