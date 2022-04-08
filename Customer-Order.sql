CREATE TABLE  product (
  productId int ,
  productName varchar(25) DEFAULT NULL,
  productDescription varchar(50) DEFAULT NULL,
  unitPrice int DEFAULT NULL,
  PRIMARY KEY (productId)
) ;
CREATE TABLE  customer(
	customerId int ,
	cusLastname varchar(25) NOT NULL,
	cusFirstname varchar(25) NOT NULL,
	cusEmail varchar(50) NOT NULL,
	cusPhoneNo varchar(14) NOT NULL,
	cusCity varchar(15) NULL,
	cusProvince varchar(25) NULL,
	cusCountry varchar(25) NULL,
	PRIMARY KEY (customerId)
);
CREATE TABLE  orders(
	orderID int ,
	customerId int  NOT NULL,
	totalAmount int NOT NULL,
	PRIMARY KEY (orderID),
	FOREIGN KEY (customerId) REFERENCES customer(customerId)
);

CREATE TABLE  orderDetails (
	orderDetailsNo int,
	orderID int NOT NULL,
	productId int  NOT NULL,
	quantity int  NOT NULL,
	subtotal int NOT NULL,
	PRIMARY KEY (orderDetailsNo),
	CONSTRAINT fk_productId FOREIGN KEY (productId) REFERENCES product(productId),
	CONSTRAINT fk_orderID FOREIGN KEY (orderID) REFERENCES orders(orderID)
);