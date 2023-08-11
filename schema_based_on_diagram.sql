CREATE DATABASE clinic;

CREATE TABLE patients (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
date_of_birth DATE NOT NULL
);

CREATE TABLE treatments (
  id SERIAL PRIMARY KEY,
  type VARCHAR(200) NOT NULL,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP NOT NULL,
  patient_id INT REFERENCES patients(id),
  status VARCHAR(100) NOT NULL
  );

CREATE TABLE invoices (
  id SERIAL PRIMARY KEY,
  total_amount DECIMAL(18,2) NOT NULL,
  generated_at TIMESTAMP NOT NULL,
  payed_at TIMESTAMP NOT NULL,
  medical_history_id INT REFERENCES medical_histories(id)
  );
CREATE TABLE invoice_items (
  id SERIAL PRIMARY KEY,
  unit_price DECIMAL(18,2) NOT NULL,
  quantity INT NOT NULL,
  total_price DECIMAL(20,2) NOT NULL,
  invoice_id INT REFERENCES invoices(id),
  treatment_id INT REFERENCES treatments(id)
  );
