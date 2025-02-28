# thoikhoabieu
Bài tập lớn quản lý thời khóa biểu toàn trường bằng PHP và Laravel
1	Mô hình hóa chức năng 
1.1 Các yêu cầu chức năng					
R1. Các chức năng dành cho Phòng Đào Tạo 

R1.1 - Cập nhật danh sách khoa

-	Thêm khoa
-	 Sửa thông tin khoa
-	 Xóa khoa

R1.2 - Cập nhật danh sách phòng học

-	 Thêm phòng học
-	 Sửa thông tin phòng học
-	 Xóa phòng học

R1.3 - Tạo thời khóa biểu

Chọn danh sách học phần
Chọn danh sách giảng viên
Chọn danh sách phòng học

R1.4 Xem thời khóa biểu

-	Xem thời khoá biểu toàn trường 
-	Xem thời khoá biểu của khoa 
-	Xem thời khoá biểu của giáo viên
R2. Các chức năng dành cho Khoa
R2.1 - Quản lý chương trình đào tạo
-	Thêm chương trình đào tạo mới
-	Chỉnh sửa chương trình đào tạo
-	Xóa chương trình đào tạo
R2.2 - Quản lý giảng viên
-	Thêm giảng viên
-	Chỉnh sửa thông tin giảng viên
-	Xóa giảng viên
	R2.3 - Quản lý ngành học
-	Thêm ngành học mới 
-	Chỉnh sửa ngành học 
-	Xoá ngành học
	R2.4 - Quản lý học phần 
-	Thêm lớp học phần 
-	Chỉnh sửa học phần 
-	Xoá học phần
R2.5 - Xem thời khóa biểu
-	Xem thời khoá biểu khoa
-	Xem thời khoá biểu giảng viên
R3. Các chức năng dành cho Giảng viên
R3.1 - Đổi lịch dạy
R3.2 - Xem thời khóa biểu

	
1.2 Sơ đồ Use-case

Hình 1.2 Sơ đồ use-case cho hệ thống quản lý thời khoá biểu
 
1.3	Đặc tả các Use-case 
 
Hình 1.3 Các đối tượng chính của hệ thống xây dựng thời khóa biểu
1.3.1 R1.1 - Quản lý danh sách khoa
Mô tả ngắn gọn: Chức năng này cho phép Phòng Đào tạo quản lý danh sách các khoa trong hệ thống, bao gồm thêm mới, chỉnh sửa và xóa khoa.
Tác nhân thực hiện: Phòng Đào tạo (PĐT)
Luồng sự kiện:
➔	Luồng chính:
◆	PĐT chọn chức năng "Quản lý danh sách khoa" trên hệ thống.
◆	Hệ thống hiển thị danh sách các khoa hiện có.
◆	PĐT có thể thực hiện các hành động sau:
●	Thêm khoa mới:
○	PĐT chọn tùy chọn "Thêm khoa".
○	Hệ thống hiển thị biểu mẫu nhập thông tin khoa mới.
○	PĐT nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống xác nhận và lưu thông tin khoa vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm khoa thành công.
●	Chỉnh sửa thông tin khoa:
○	PĐT chọn khoa cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của khoa.
○	PĐT chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin khoa trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa khoa:
○	PĐT chọn khoa cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa khoa.
○	PĐT xác nhận xóa.
○	Hệ thống xóa khoa khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa khoa thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã khoa), hệ thống sẽ hiển thị thông báo lỗi và yêu cầu PĐT nhập lại.
◆	Nếu khoa đang được sử dụng trong các chức năng khác, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: PĐT đã đăng nhập vào hệ thống với quyền quản trị.
Hậu điều kiện: Danh sách khoa được cập nhật theo các thay đổi (thêm, sửa, xóa) của PĐT.
1.3.2 R1.2 - Quản lý danh sách phòng học
Mô tả ngắn gọn: Chức năng này cho phép Phòng Đào tạo quản lý danh sách các phòng học trong hệ thống, bao gồm thêm mới, chỉnh sửa và xóa phòng học.
Tác nhân thực hiện: Phòng Đào tạo (PĐT)
Luồng sự kiện: 
➔	Luồng chính:
◆	PĐT chọn chức năng "Quản lý danh sách phòng học" trên hệ thống.
◆	Hệ thống hiển thị danh sách các phòng học hiện có.
◆	PĐT có thể thực hiện các hành động sau:
●	Thêm phòng học mới:
○	PĐT chọn tùy chọn "Thêm phòng học".
○	Hệ thống hiển thị biểu mẫu nhập thông tin phòng học mới.
○	PĐT nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống lưu thông tin phòng học vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm phòng học thành công.
●	Chỉnh sửa thông tin phòng học:
○	PĐT chọn phòng học cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của phòng học.
○	PĐT chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin phòng học trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa phòng học:
○	PĐT chọn phòng học cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa phòng học.
○	PĐT xác nhận xóa.
○	Hệ thống xóa phòng học khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa phòng học thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã phòng), hệ thống sẽ thông báo lỗi và yêu cầu PĐT nhập lại.
◆	Nếu phòng học đang được sử dụng trong lịch học, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: PĐT đã đăng nhập vào hệ thống.
Hậu điều kiện: Danh sách phòng học được cập nhật theo các thay đổi (thêm, sửa, xóa) của PĐT.
1.3.3 R1.3 - Tạo thời khóa biểu
Mô tả ngắn gọn: Chức năng này cho phép Phòng Đào tạo tạo và quản lý thời khóa biểu, bao gồm việc chọn học phần, phân công giảng viên và phân bổ phòng học.
Tác nhân thực hiện: Phòng Đào tạo (PĐT)
Luồng sự kiện:
➔	Luồng chính:
◆	PĐT chọn chức năng "Tạo thời khóa biểu" trên hệ thống.
◆	Hệ thống hiển thị các bước cần thiết để tạo thời khóa biểu:
●	Chọn danh sách học phần:
○	Hệ thống hiển thị danh sách học phần hiện có.
○	PĐT chọn các học phần cần đưa vào thời khóa biểu.
○	PĐT nhấn nút "Tiếp tục".
●	Phân công giảng viên:
○	Hệ thống hiển thị danh sách giảng viên.
○	PĐT chọn giảng viên cho từng học phần.
○	PĐT nhấn nút "Tiếp tục".
●	Phân bổ phòng học:
○	Hệ thống hiển thị danh sách phòng học.
○	PĐT chọn phòng học cho từng học phần.
○	PĐT nhấn nút "Lưu".
◆	Hệ thống lưu thông tin thời khóa biểu vào cơ sở dữ liệu.
◆	Hệ thống thông báo tạo thời khóa biểu thành công.
➔	Luồng phát sinh:
◆	Nếu học phần đã tồn tại trong thời khóa biểu, hệ thống sẽ thông báo lỗi.
◆	Nếu giảng viên hoặc phòng học đã được phân công trong cùng thời gian, hệ thống sẽ thông báo xung đột và yêu cầu PĐT điều chỉnh.
Tiền điều kiện: PĐT đã đăng nhập vào hệ thống.
Hậu điều kiện: Thời khóa biểu mới được tạo và lưu trong hệ thống.
1.5.4 R1.4 - Xem thời khóa biểu
Mô tả ngắn gọn: Chức năng này cho phép Phòng Đào tạo xem thời khóa biểu của toàn trường, từng khoa hoặc từng giảng viên.
Tác nhân thực hiện: Phòng Đào tạo (PĐT)
Luồng sự kiện:
➔	Luồng chính:
◆	PĐT chọn chức năng "Xem thời khóa biểu" trên hệ thống.
◆	Hệ thống cung cấp các tùy chọn xem thời khóa biểu:
●	Toàn trường:
○	PĐT chọn "Thời khóa biểu toàn trường".
○	Hệ thống hiển thị thời khóa biểu của toàn trường.
●	Theo khoa:
○	PĐT chọn "Thời khóa biểu của khoa".
○	Hệ thống hiển thị danh sách các khoa.
○	PĐT chọn khoa cần xem.
○	Hệ thống hiển thị thời khóa biểu của khoa đó.
●	Theo giảng viên:
○	PĐT chọn "Thời khóa biểu của giảng viên".
○	Hệ thống hiển thị danh sách giảng viên.
○	PĐT chọn giảng viên cần xem.
○	Hệ thống hiển thị thời khóa biểu của giảng viên đó.
➔	Luồng phát sinh:
◆	Nếu không có dữ liệu thời khóa biểu, hệ thống sẽ thông báo phù hợp.
Tiền điều kiện: PĐT đã đăng nhập vào hệ thống.
Hậu điều kiện: Thời khóa biểu được hiển thị theo yêu cầu của PĐT.
1.3.5 R2.1 - Quản lý chương trình đào tạo
Mô tả ngắn gọn: Chức năng này cho phép Khoa quản lý các chương trình đào tạo, bao gồm thêm mới, chỉnh sửa và xóa chương trình đào tạo.
Tác nhân thực hiện: Khoa
Luồng sự kiện:
➔	Luồng chính:
◆	Khoa chọn chức năng "Quản lý chương trình đào tạo" trên hệ thống.
◆	Hệ thống hiển thị danh sách các chương trình đào tạo hiện có.
◆	Khoa có thể thực hiện các hành động sau:
●	Thêm chương trình đào tạo mới:
○	Khoa chọn tùy chọn "Thêm chương trình đào tạo".
○	Hệ thống hiển thị biểu mẫu nhập thông tin chương trình mới.
○	Khoa nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống lưu thông tin chương trình vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm chương trình đào tạo thành công.
●	Chỉnh sửa chương trình đào tạo:
○	Khoa chọn chương trình cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của chương trình.
○	Khoa chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin chương trình trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa chương trình đào tạo:
○	Khoa chọn chương trình cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa chương trình.
○	Khoa xác nhận xóa.
○	Hệ thống xóa chương trình khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa chương trình đào tạo thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã chương trình), hệ thống sẽ thông báo lỗi.
◆	Nếu chương trình đào tạo đang được sử dụng, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: Khoa đã đăng nhập vào hệ thống với quyền quản trị.
Hậu điều kiện: Danh sách chương trình đào tạo được cập nhật theo các thay đổi của Khoa.
1.5.6 R2.2 - Quản lý giảng viên
Mô tả ngắn gọn: Chức năng này cho phép Khoa quản lý danh sách giảng viên, bao gồm thêm mới, chỉnh sửa và xóa giảng viên.
Tác nhân thực hiện: Khoa
Luồng sự kiện:
➔	Luồng chính:
◆	Khoa chọn chức năng "Quản lý giảng viên" trên hệ thống.
◆	Hệ thống hiển thị danh sách giảng viên hiện có.
◆	Khoa có thể thực hiện các hành động sau:
●	Thêm giảng viên mới:
○	Khoa chọn tùy chọn "Thêm giảng viên".
○	Hệ thống hiển thị biểu mẫu nhập thông tin giảng viên mới.
○	Khoa nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống lưu thông tin giảng viên vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm giảng viên thành công.
●	Chỉnh sửa thông tin giảng viên:
○	Khoa chọn giảng viên cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của giảng viên.
○	Khoa chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin giảng viên trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa giảng viên:
○	Khoa chọn giảng viên cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa giảng viên.
○	Khoa xác nhận xóa.
○	Hệ thống xóa giảng viên khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa giảng viên thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã giảng viên), hệ thống sẽ thông báo lỗi.
◆	Nếu giảng viên đang tham gia giảng dạy, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: Khoa đã đăng nhập vào hệ thống.
Hậu điều kiện: Danh sách giảng viên được cập nhật theo các thay đổi của Khoa.
1.3.7 R2.3 - Quản lý ngành học
Mô tả ngắn gọn: Chức năng này cho phép Khoa quản lý danh sách ngành học, bao gồm thêm mới, chỉnh sửa và xóa ngành học.
Tác nhân thực hiện: Khoa
Luồng sự kiện:
➔	Luồng chính:
◆	Khoa chọn chức năng "Quản lý ngành học" trên hệ thống.
◆	Hệ thống hiển thị danh sách các ngành học hiện có.
◆	Khoa có thể thực hiện các hành động sau:
●	Thêm ngành học mới:
○	Khoa chọn tùy chọn "Thêm ngành học".
○	Hệ thống hiển thị biểu mẫu nhập thông tin ngành học mới.
○	Khoa nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống lưu thông tin ngành học vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm ngành học thành công.
●	Chỉnh sửa ngành học:
○	Khoa chọn ngành học cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của ngành học.
○	Khoa chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin ngành học trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa ngành học:
○	Khoa chọn ngành học cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa ngành học.
○	Khoa xác nhận xóa.
○	Hệ thống xóa ngành học khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa ngành học thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã ngành học), hệ thống sẽ thông báo lỗi và yêu cầu Khoa nhập lại.
◆	Nếu ngành học đang được sử dụng trong các chương trình đào tạo hoặc có sinh viên đang theo học, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: Khoa đã đăng nhập vào hệ thống với quyền quản trị.
Hậu điều kiện: Danh sách ngành học được cập nhật theo các thay đổi (thêm, sửa, xóa) của Khoa.
Mô tả ngắn gọn: Chức năng này cho phép Khoa quản lý các học phần, bao gồm thêm mới, chỉnh sửa và xóa học phần.
Tác nhân thực hiện: Khoa
Luồng sự kiện:
➔	Luồng chính:
◆	Khoa chọn chức năng "Quản lý học phần" trên hệ thống.
◆	Hệ thống hiển thị danh sách các học phần hiện có.
◆	Khoa có thể thực hiện các hành động sau:
●	Thêm học phần mới:
○	Khoa chọn tùy chọn "Thêm học phần".
○	Hệ thống hiển thị biểu mẫu nhập thông tin học phần mới.
○	Khoa nhập thông tin cần thiết và nhấn "Lưu".
○	Hệ thống lưu thông tin học phần vào cơ sở dữ liệu.
○	Hệ thống thông báo thêm học phần thành công.
●	Chỉnh sửa học phần:
○	Khoa chọn học phần cần chỉnh sửa từ danh sách.
○	Hệ thống hiển thị biểu mẫu với thông tin hiện tại của học phần.
○	Khoa chỉnh sửa thông tin và nhấn "Lưu".
○	Hệ thống cập nhật thông tin học phần trong cơ sở dữ liệu.
○	Hệ thống thông báo chỉnh sửa thành công.
●	Xóa học phần:
○	Khoa chọn học phần cần xóa từ danh sách.
○	Hệ thống hiển thị xác nhận xóa học phần.
○	Khoa xác nhận xóa.
○	Hệ thống xóa học phần khỏi cơ sở dữ liệu.
○	Hệ thống thông báo xóa học phần thành công.
➔	Luồng phát sinh:
◆	Nếu thông tin nhập không hợp lệ (ví dụ: trùng mã học phần), hệ thống sẽ thông báo lỗi và yêu cầu Khoa nhập lại.
◆	Nếu học phần đang được sử dụng trong chương trình đào tạo hoặc đã có sinh viên đăng ký, hệ thống sẽ không cho phép xóa và thông báo lỗi.
Tiền điều kiện: Khoa đã đăng nhập vào hệ thống với quyền quản trị.
Hậu điều kiện: Danh sách học phần được cập nhật theo các thay đổi (thêm, sửa, xóa) của 
1.5.9 R2.5 - Xem thời khóa biểu
Mô tả ngắn gọn: Chức năng này cho phép Khoa xem thời khóa biểu của khoa và của từng giảng viên trong khoa.
Tác nhân thực hiện: Khoa
Luồng sự kiện:
➔	Luồng chính:
◆	Khoa chọn chức năng "Xem thời khóa biểu" trên hệ thống.
◆	Hệ thống cung cấp các tùy chọn xem thời khóa biểu:
●	Thời khóa biểu khoa:
○	Khoa chọn "Thời khóa biểu khoa".
○	Hệ thống hiển thị thời khóa biểu của khoa.
●	Thời khóa biểu giảng viên:
○	Khoa chọn "Thời khóa biểu giảng viên".
○	Hệ thống hiển thị danh sách giảng viên trong khoa.
○	Khoa chọn giảng viên cần xem.
○	Hệ thống hiển thị thời khóa biểu của giảng viên đó.
➔	Luồng phát sinh:
◆	Nếu không có thời khóa biểu, hệ thống sẽ thông báo phù hợp.
Tiền điều kiện: Khoa đã đăng nhập vào hệ thống.
Hậu điều kiện: Thời khóa biểu được hiển thị theo yêu cầu của Khoa.
1.3.10 R3.1 - Quản lý đổi lịch dạy
Mô tả ngắn gọn: Chức năng này cho phép Giảng viên tạo và quản lý các việc đổi lịch dạy của mình bằng cách chọn buổi dạy muốn đổi, hệ thống sẽ hiển thị các ngày trống phù hợp để Giảng viên lựa chọn hoàn thành việc đổi lịch.
Tác nhân thực hiện: Giảng viên
Luồng sự kiện:
➔	Luồng chính:
◆	Giảng viên chọn chức năng "Quản lý đổi lịch dạy" trên hệ thống.
◆	Hệ thống hiển thị danh sách các buổi dạy hiện tại của Giảng viên.
◆	Giảng viên chọn buổi dạy muốn đổi lịch.
◆	Hệ thống yêu cầu Giảng viên chọn ngày muốn đổi.
◆	Giảng viên chọn ngày muốn đổi.
◆	Hệ thống kiểm tra lịch của Giảng viên, sinh viên và phòng học để tìm các ngày trống phù hợp.
◆	Hệ thống hiển thị danh sách các ngày trống khả dụng.
◆	Giảng viên chọn một trong những ngày trống phù hợp từ danh sách.
◆	Giảng viên nhập lý do đổi lịch (nếu cần) và nhấn "Xác nhận".
◆	Hệ thống lưu thông tin đổi lịch và cập nhật cơ sở dữ liệu để ghi nhận lịch mới.
◆	Hệ thống thông báo đổi lịch thành công.
➔	Luồng phát sinh:
◆	Nếu không có ngày trống phù hợp:
●	Hệ thống thông báo không có ngày trống phù hợp và yêu cầu Giảng viên chọn ngày khác hoặc liên hệ với Phòng Đào tạo (PĐT).
◆	Nếu thông tin nhập không hợp lệ:
●	Hệ thống sẽ thông báo lỗi và yêu cầu Giảng viên nhập lại.
Tiền điều kiện: Giảng viên đã đăng nhập vào hệ thống.
Hậu điều kiện: Lịch dạy của Giảng viên được cập nhật với buổi dạy mới sau khi đổi lịch thành công, và dữ liệu liên quan được lưu trong hệ thống để thông báo tới sinh viên và các bên liên quan.
1.3.11 R3.2 - Xem thời khóa biểu cá nhân
Mô tả ngắn gọn: Chức năng này cho phép Giảng viên xem thời khóa biểu của mình.
Tác nhân thực hiện: Giảng viên
Luồng sự kiện:
➔	Luồng chính:
◆	Giảng viên chọn chức năng "Xem thời khóa biểu" trên hệ thống.
◆	Hệ thống hiển thị thời khóa biểu của Giảng viên.
➔	Luồng phát sinh:
◆	Nếu không có thời khóa biểu, hệ thống sẽ thông báo phù hợp.
Tiền điều kiện: Giảng viên đã đăng nhập vào hệ thống.
Hậu điều kiện: Thời khóa biểu của Giảng viên được hiển thị.
1.3.12 R4.1 - Đăng nhập
Mô tả ngắn gọn: Chức năng này cho phép Giảng viên đăng nhập vào hệ thống bằng thông tin tài khoản của mình.
Tác nhân thực hiện: Giảng viên, cán bộ quản lý
Luồng sự kiện:
➔	Luồng chính:
◆	Giảng viên chọn chức năng “Đăng nhập” trên giao diện hệ thống.
◆	Giảng viên nhập tên đăng nhập và mật khẩu.
◆	Hệ thống kiểm tra thông tin đăng nhập.
◆	Nếu thông tin hợp lệ, hệ thống cho phép Giảng viên đăng nhập và chuyển đến trang chủ.
➔	Luồng phát sinh:
◆	Luồng 4a: Nếu tên đăng nhập hoặc mật khẩu không hợp lệ:
◆	Hệ thống hiển thị thông báo lỗi và yêu cầu Giảng viên nhập lại thông tin.
Tiền điều kiện: Giảng viên hoặc cán bộ quản lý đã có tài khoản và thông tin đăng nhập hợp lệ trong hệ thống.
Hậu điều kiện: Giảng viên hoặc cán bộ quản lý  được đăng nhập thành công vào hệ thống và có thể thực hiện các thao tác khác.

