CREATE TABLE "Dealer" (
  "Dealer_ID" SERIAL,
  "FirstName" VARCHAR(50),
  "LastName" VARCHAR(50),
  "EXT_number" VARCHAR(15),
  "Email" VARCHAR(100),
  PRIMARY KEY ("Dealer_ID")
);

CREATE TABLE "Car" (
  "VIN" SERIAL,
  "Make" VARCHAR(20),
  "Model" VARCHAR(30),
  "Year" NUMERIC(4,0),
  "ExColor" VARCHAR(30),
  "InColor" VARCHAR(30),
  "Price" NUMERIC(7,2),
  PRIMARY KEY ("VIN")
);

CREATE TABLE "Mechanic" (
  "MECH_ID" SERIAL,
  "FirstName" VARCHAR(50),
  "LastName" VARCHAR(50),
  "Number" VARCHAR(15),
  "Email" VARCHAR(100),
  PRIMARY KEY ("MECH_ID")
);

CREATE TABLE "Customer" (
  "Customer_ID" SERIAL,
  "FirstName" VARCHAR(50),
  "LastName" VARCHAR(50),
  "Address" VARCHAR(150),
  "PhoneNumber" VARCHAR(15),
  "Email" VARCHAR(100),
  PRIMARY KEY ("Customer_ID")
);

CREATE TABLE "Invoice" (
  "Invoice_ID" SERIAL,
  "In_Date" Date,
  "VIN" INTEGER,
  "Customer_ID" INTEGER,
  "Price" INTEGER,
  "Dealer_ID" INTEGER,
  PRIMARY KEY ("Invoice_ID"),
  CONSTRAINT "FK_Invoice.VIN"
    FOREIGN KEY ("VIN")
      REFERENCES "Car"("VIN")
);

CREATE TABLE "Service History" (
  "History_ID" SERIAL,
  "Desciption" VARCHAR(300),
  "ServiceDate" Date,
  "VIN" INTEGER,
  "Customer_ID" INTEGER,
  "MECH_ID" INTEGER,
  PRIMARY KEY ("History_ID")
);

CREATE TABLE "Part" (
  "Part_ID" SERIAL,
  "PartName" VARCHAR(50),
  "PartyType" VARCHAR(50),
  "Price" NUMERIC(7,2),
  "MECH_ID" INTEGER,
  "ServiceDate" INTEGER,
  PRIMARY KEY ("Part_ID"),
  CONSTRAINT "FK_Part.PartName"
    FOREIGN KEY ("MECH_ID")
      REFERENCES "Mechanic"("MECH_ID")
);


