CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT,
    age_in_millions_of_years INT,
    is_active BOOLEAN,
    has_spiral_structure BOOLEAN
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    galaxy_id INT REFERENCES galaxy(galaxy_id) NOT NULL,
    name VARCHAR NOT NULL UNIQUE,
    age_in_millions_of_years INT,
    radius INT,
    mass NUMERIC,
    is_active BOOLEAN
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    star_id INT REFERENCES star(star_id) NOT NULL,
    name VARCHAR NOT NULL UNIQUE,
    age_in_millions_of_years INT,
    radius INT,
    mass NUMERIC,
    has_atmosphere BOOLEAN
);

-- Moon table
CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    planet_id INT REFERENCES planet(planet_id) NOT NULL,
    name VARCHAR NOT NULL UNIQUE,
    age_in_millions_of_years INT,
    radius INT,
    mass NUMERIC,
    is_rotating BOOLEAN
);

-- Asteroid table
CREATE TABLE asteroid (
    asteroid_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    age_in_millions_of_years INT,
    radius INT,
    mass NUMERIC,
    is_rotating BOOLEAN
);

-- Insert data into the "galaxy" table
INSERT INTO galaxy (name, description, age_in_millions_of_years, is_active, has_spiral_structure)
VALUES
    ('Milky Way', 'Our home galaxy', 13000, TRUE, TRUE),
    ('Andromeda', 'Nearest major galaxy to Milky Way', 12000, TRUE, TRUE),
    ('Antennae', 'Appearance is similar to an insects antennae.', 400, TRUE, TRUE),
    ('Milky Way Dummy', 'Our home galaxy dummy', 13000, TRUE, TRUE),
    ('Andromeda Dummy', 'Nearest major galaxy to Milky Way dummy', 12000, TRUE, TRUE),
    ('Antennae Dummy', 'Appearance is similar to an insects antennae dummy.', 400, TRUE, TRUE);

-- Insert data into the "star" table
INSERT INTO star (galaxy_id, name, age_in_millions_of_years, radius, mass, is_active)
VALUES
    (1, 'Sun', 5778, 696, 0.123, TRUE),
    (1, 'Proxima Centauri', 8270, 0.123, 0.123, TRUE),
    (2, 'Andromeda', 1000, 1989, 0.123, TRUE),
    (3, 'Antennae', 400, 1989, 0.123, TRUE),
    (1, '51 Pegasi', 5778, 1.989, 0.123, TRUE),
    (1, 'Betelgeuse', 5778, 696, 0.123, TRUE);

-- Insert data into the "planet" table
INSERT INTO planet (star_id, name, age_in_millions_of_years, radius, mass, has_atmosphere)
VALUES
    (1, 'Mercury', 4500, 2440, 0.330, FALSE),
    (1, 'Venus', 4500, 6052, 4.87, TRUE),
    (1, 'Earth', 4500, 6371, 5.97, TRUE),
    (1, 'Mars', 4500, 3390, 0.642, FALSE),
    (1, 'Jupiter', 4500, 69911, 1898, TRUE),
    (1, 'Saturn', 4500, 58232, 568, TRUE),
    (1, 'Uranus', 4500, 25362, 86.8, TRUE),
    (1, 'Neptune', 4500, 24622, 102, TRUE),
    (2, 'Proxima Centauri b', 8270, 0.123, 0.123, TRUE),
    (3, 'Andromeda', 8270, 0.123, 0.123, TRUE),
    (4, 'Antennae', 8270, 0.123, 0.123, TRUE),
    (5, '51 Pegasi b', 8270, 0.123, 0.123, TRUE);


-- Insert data into the "moon" table
-- Should contain at least 20 rows
INSERT INTO moon (planet_id, name, age_in_millions_of_years, radius, mass, is_rotating)
VALUES
    (1, 'Moon', 4500, 1737.4, 0.073431, TRUE),
    (4, 'Phobos', 4500, 1737.4, 0.073431, TRUE),
    (4, 'Deimos', 4500, 1737.4, 0.073431, TRUE),
    (5, 'Europa', 4500, 1737.4, 0.073431, TRUE),
    (5, 'Callisto', 4500, 1737.4, 0.073431, TRUE),
    (5, 'Ganymede', 4500, 1737.4, 0.073431, TRUE),
    (5, 'Amalthea', 4500, 1737.4, 0.073431, TRUE),
    (5, 'Io', 4500, 1737.4, 0.073431, TRUE),
    (6, 'Titan', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Enceladus', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Mimas', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Dione', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Iapetus', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Tethys', 3500, 1754.4, 0.2431, TRUE),
    (6, 'Hyperion', 3500, 1754.4, 0.2431, TRUE),
    (7, 'Miranda', 2500, 1354.4, 0.2431, TRUE),
    (7, 'Ariel', 2500, 1354.4, 0.2431, TRUE),
    (7, 'Umbriel', 2500, 1354.4, 0.2431, TRUE),
    (8, 'Naiad', 2500, 1354.4, 0.2431, TRUE),
    (8, 'Thalassa', 2500, 1354.4, 0.2431, TRUE);

-- Insert data into the "asteroid" table
-- Should contain at least 10 rows
INSERT INTO asteroid (name, age_in_millions_of_years, radius, mass, is_rotating)
VALUES
    ('Moon', 4500, 1737.4, 0.073431, TRUE),
    ('Phobos', 4500, 1737.4, 0.073431, TRUE),
    ('Deimos', 4500, 1737.4, 0.073431, TRUE),
    ('Europa', 4500, 1737.4, 0.073431, TRUE),
    ('Callisto', 4500, 1737.4, 0.073431, TRUE),
    ('Ganymede', 4500, 1737.4, 0.073431, TRUE),
    ('Amalthea', 4500, 1737.4, 0.073431, TRUE),
    ('Io', 4500, 1737.4, 0.073431, TRUE),
    ('Titan', 3500, 1754.4, 0.2431, TRUE),
    ('Enceladus', 3500, 1754.4, 0.2431, TRUE),
    ('Mimas', 3500, 1754.4, 0.2431, TRUE),
    ('Dione', 3500, 1754.4, 0.2431, TRUE),
    ('Iapetus', 3500, 1754.4, 0.2431, TRUE),
    ('Tethys', 3500, 1754.4, 0.2431, TRUE),
    ('Hyperion', 3500, 1754.4, 0.2431, TRUE),
    ('Miranda', 2500, 1354.4, 0.2431, TRUE),
    ('Ariel', 2500, 1354.4, 0.2431, TRUE),
    ('Umbriel', 2500, 1354.4, 0.2431, TRUE),
    ('Naiad', 2500, 1354.4, 0.2431, TRUE),
    ('Thalassa', 2500, 1354.4, 0.2431, TRUE);


-- Junction Table: author_book
CREATE TABLE moon_star (
    moon_id INTEGER REFERENCES moon(moon_id),
    star_id INTEGER REFERENCES star(star_id),
    PRIMARY KEY (moon_id, star_id)
);

INSERT INTO moon_star (moon_id, star_id)
SELECT moon.moon_id, star.star_id
FROM moon
CROSS JOIN star;