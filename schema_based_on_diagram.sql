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
  status VARCHR(100) NOT NULL
  );

