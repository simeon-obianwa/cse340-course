CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename) VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');


-- Service Projects Table Setup SQL commands
-- 1. Create the table
CREATE TABLE public.service_project (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    location VARCHAR(255),
    project_date DATE NOT NULL,
    CONSTRAINT fk_organization
        FOREIGN KEY(organization_id) 
        REFERENCES public.organization(organization_id)
        ON DELETE CASCADE
);

-- 2. Insert 15 sample records (Assuming organization IDs 1, 2, and 3 exist)
INSERT INTO public.service_project (organization_id, title, description, location, project_date)
VALUES 
-- Projects for Organization 1
(1, 'Community Center Renovation', 'Repairing the local community center roof and walls.', 'Downtown Center', '2026-11-20'),
(1, 'Park Cleanup', 'Picking up trash and planting new trees.', 'City Park', '2026-11-25'),
(1, 'Homeless Shelter Meals', 'Cooking and serving meals to the homeless.', 'Hope Shelter', '2026-12-01'),
(1, 'School Supply Drive', 'Collecting and distributing school supplies.', 'Main High School', '2026-12-10'),
(1, 'Senior Citizen Tech Help', 'Teaching seniors how to use modern tech.', 'Senior Center', '2026-12-15'),

-- Projects for Organization 2
(2, 'Community Garden Setup', 'Building planter boxes for a community garden.', 'Eastside Lot', '2026-11-22'),
(2, 'Farmers Market Assist', 'Helping local farmers set up their stalls.', 'Town Square', '2026-11-28'),
(2, 'Food Bank Sorting', 'Sorting donated canned goods.', 'Regional Food Bank', '2026-12-05'),
(2, 'Urban Orchard Pruning', 'Pruning fruit trees in the urban orchard.', 'Westside Orchard', '2026-12-12'),
(2, 'Composting Workshop', 'Teaching locals how to compost effectively.', 'Community Garden', '2026-12-18'),

-- Projects for Organization 3
(3, 'Blood Drive Hosting', 'Assisting nurses and welcoming donors.', 'Red Cross Center', '2026-11-24'),
(3, 'Library Reading Program', 'Reading books to children.', 'City Library', '2026-11-29'),
(3, 'Beach Cleanup', 'Removing plastic waste from the coastline.', 'Sunny Beach', '2026-12-08'),
(3, 'Winter Coat Drive', 'Collecting warm clothes for winter.', 'City Hall', '2026-12-14'),
(3, 'Toy Repair Workshop', 'Fixing broken toys for the holidays.', 'Community Workshop', '2026-12-20');