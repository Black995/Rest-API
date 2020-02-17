CREATE TABLE IF NOT EXISTS projects(
  id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name text NOT NULL CHECK (name <> ''),
  priority integer NOT NULL,
  description text,
  deliverydate date NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks(
  id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name text NOT NULL CHECK (name <> ''),
  done BOOLEAN,
  projectID INTEGER REFERENCES projects(id)
);

-- Insert projects data
INSERT INTO projects(name, priority, description, deliverydate)
  VALUES('Proyecto en BD', 1, 'Practica para BD', '2020-02-21');

  -- Insert tasks data
INSERT INTO tasks(name, done, projectID)
  VALUES('Dejar de flojear', false, 1);