--The case of ITC for investing the data base and creating tables--

CREATE TABLE distributors (
   distributors_id INTEGER PRIMARY KEY,
   name            TEXT NOT NULL,
   city             TEXT,
   region           TEXT,
   phone            TEXT
  ); 
  
  --Dropping the table------
  DROP TABLE distributors;
  
  ---Create another table name products ---
  
  -- Create a table name products with following information--Product id,Product name, Product category,product price and product stock 
 Product id - Interger and UNIQUE
 product name - non null and UNIQUE 
 product category - text and non NULL
 price - real value and should be greater then 0
 stalk should be in integer and if it is blank then 0
 brand name - text and non NULL
 
 
 
 CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL UNIQUE,
   brand TEXT,
   category TEXT NOT NULL,
   price REAL CHECK (price > 0),
   stock INTEGER DEFAULT 0
   );
   
   
   CREATE  a Table name sales containing variable sales id, product id, sale date ,quantity, amount
   
   
   CREATE TABLE sales (
    sales_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL,
    distributors_id INTEGER,
    quantity INTEGER CHECK (quantity > 0),
    amount REAL CHECK,

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (distributors_id) REFERENCES distributors (distributors_id)
     );
   
 
  