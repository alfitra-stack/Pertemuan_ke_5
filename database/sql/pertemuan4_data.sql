USE praktikum_web_2401020036;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Perkapalan'),
    ('Teknik Kelautan');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id) VALUES
    ('2301010001', 'Rizky Aditya',   'rizky@example.com',    20, 1),
    ('2301010002', 'Nabila Putri',   'nabila@example.com',   19, 1),
    ('2301020001', 'Fajar Ramadhan', 'fajar@example.com',    21, 2),
    ('2301020099', 'Uji Hapus',      'ujihapus@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'rizky.aditya@example.com'
WHERE nim = '2301010001';

DELETE FROM mahasiswa WHERE nim = '2301020099';

SELECT m.nim, m.nama, m.email, m.usia, p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p ON p.id = m.program_studi_id
ORDER BY m.nim;