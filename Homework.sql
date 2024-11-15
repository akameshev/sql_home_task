/* 1.Создайте хранимую процедуру с именем «GetEmployeeOrders». 
который принимает идентификатор сотрудника в качестве 
параметра и возвращает все заказы, обработанные этим 
сотрудником.*/

CREATE PROC GetEmployeeOrders @employeeID INT
AS
BEGIN
	SELECT * FROM Orders o 
	WHERE o.EmployeeID = @employeeID
END;

/* Пропишите запрос, который создаст требуемую процедуру.*/
GetEmployeeOrders @employeeID=2

/*2. Создайте таблицу EmployeeRoles, как на уроке и удалите ее.*/

CREATE TABLE IF NOT EXISTS EmployeeRoles (EmployeeRoleID INT PRIMARY KEY,
											EmployeeID INT,
											Role VARCHAR(50));
/*Удаление */
DROP TABLE EmployeeRoles;

/*Удалите все заказы со статусом 'Delivered' из таблицы OrderStatus, 
которую создавали на семинаре
 Напишите запрос, который удалит нужные строки в таблице.
*/

DELETE FROM order_status WHERE status = 'DElivered';






