-- Tabla persona
CREATE TABLE IF NOT EXISTS persona (
  persona_id SERIAL NOT NULL,
  nombre varchar(250) NOT NULL,
  apellido1 varchar(250) NOT NULL,
  apellido2 varchar(250) NOT NULL,
  CONSTRAINT persona_pk PRIMARY KEY (persona_id)
);

-- Tabla contacto
CREATE TABLE IF NOT EXISTS contacto (
  contacto_id SERIAL NOT NULL,
  email varchar(450) ,
  telefono INT ,
  persona_id INT NOT NULL,
  CONSTRAINT contacto_pk PRIMARY KEY (contacto_id),
  CONSTRAINT fk_persona
      FOREIGN KEY(persona_id) 
	  REFERENCES persona(persona_id)
);