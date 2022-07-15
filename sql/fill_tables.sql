INSERT INTO persona(nombre, apellido1, apellido2) VALUES('Alvaro', 'Benitez', 'Rosa');
INSERT INTO persona(nombre, apellido1, apellido2) VALUES('Celia','Hija','Mia');
INSERT INTO persona(nombre, apellido1, apellido2) VALUES('Gregorio','Peces-Barba','Martinez');


INSERT INTO contacto(persona_id, email, telefono ) 
select persona_id, lower(concat(nombre, '-', apellido1, '@pruebas.com')), 911234000 + random() * 100 * persona_id  as telefono  from persona;
