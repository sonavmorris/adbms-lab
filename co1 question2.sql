CREATE DATABASE dept;
USE dept;
CREATE TABLE dept1(deptno int(10) primary key NOT NULL,dname VARCHAR(20) NOT NULL,loc VARCHAR(20) NOT NULL);
INSERT INTO dept1(deptno,dname,loc)VALUES(100,'MCA','TLY');
INSERT INTO dept1(deptno,dname,loc)VALUES(101,'MSC','KNR');
INSERT INTO dept1(deptno,dname,loc)VALUES(102,'MCA','QLN');
INSERT INTO dept1(deptno,dname,loc)VALUES(103,'MSC','TVM');
INSERT INTO dept1(deptno,dname,loc)VALUES(104,'MCA','TSR');
SELECT * FROM dept1;
ALTER TABLE dept1 RENAME TO department;
ALTER TABLE department ADD pincode int(30);
ALTER TABLE department MODIFY  pincode INT NOT NULL;
SELECT * FROM department;
ALTER TABLE department DROP pincode;
SELECT * FROM department; 
ALTER TABLE department CHANGE COLUMN dname dept_name VARCHAR(20);
ALTER TABLE department MODIFY loc CHAR(10);
SELECT * FROM department; 












