CREATE USE Training_RDBMS;

-- Tạo bảng hoặc sửa đổi bảng nếu đã tồn tại
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    haspassword VARCHAR(255) NOT NULL
);

-- Lấy 100 users đầu tiên sắp xếp theo fullname
SELECT * FROM users
ORDER BY fullname ASC
LIMIT 100;


-- Lấy users có tên bắt đầu bằng chữ H
SELECT * FROM users
WHERE fullname LIKE 'H%';