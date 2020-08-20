CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '部门名称\r\n',
  `description` varchar(100) DEFAULT NULL COMMENT '部门描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(3) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `department_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_d_id` (`department_id`),
  CONSTRAINT `fk_d_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



2.手机号数据脱敏查询
   SELECT
    CONCAT(LEFT(phone,3), '****' ,RIGHT(phone,4)) AS phone
   FROM employe;

3. SELECT d.name,COUNT(*) from department d,employe e  where e.department_id=d.id group by d.name

4. SELECT d.Name as department, e.Name as employe, e.age
   from department d, employe e
   where e.department_id=d.id
   and e.age=(Select max(age) from employe e2 where e2.department_id=d.id)

5. SELECT * FROM employe WHERE employe.phone LIKE ‘1%%’



