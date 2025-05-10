
-- Insert some agents
INSERT INTO agents (name) VALUES
    ('Image Analyzer'),
    ('Narrative Creator'),
    ('Report Generator');

-- Insert some capabilities for the agents
INSERT INTO capabilities (agent_id, capability_name, description) VALUES
    (1, 'Image Recognition', 'Ability to analyze and recognize objects in images'),
    (1, 'Image Processing', 'Ability to enhance and process images'),
    (2, 'Text Generation', 'Ability to create narratives and stories based on prompts'),
    (3, 'Report Generation', 'Ability to generate detailed reports from datasets'),
    (3, 'Data Analysis', 'Ability to analyze large datasets and extract insights');

-- Insert some interactions between agents
INSERT INTO interactions (agent_id_from, agent_id_to, interaction_type, notes) VALUES
    (1, 2, 'Collaboration', 'Image Analyzer shared image data with Narrative Creator for story generation'),
    (2, 3, 'Collaboration', 'Narrative Creator provided text input to Report Generator for report creation'),
    (1, 3, 'Data Sharing', 'Image Analyzer sent analyzed image data to Report Generator for report generation');

-- Insert some tasks for the agents
INSERT INTO tasks (task_name, description, status, agent_id) VALUES
    ('Image Analysis', 'Analyze images from the new dataset', 'pending', 1),
    ('Text Creation', 'Create a narrative for the new product launch', 'pending', 2),
    ('Report Generation', 'Generate a report on the quarterly sales performance', 'pending', 3);

-- Insert some outputs for the tasks
INSERT INTO task_outputs (task_id, output_data, timestamp) VALUES
    (1, 'Processed Image Data', '2025-05-10 14:30:00'),
    (2, 'Generated Text Narrative', '2025-05-10 14:45:00'),
    (3, 'Generated Sales Report', '2025-05-10 15:00:00');

-- Insert some supervisors
INSERT INTO supervisors (name, email, role) VALUES
    ('Alice Johnson', 'alice.j@example.com', 'Supervisor'),
    ('Bob Smith', 'bob.s@example.com', 'Supervisor');

-- Insert task approvals by supervisors
INSERT INTO approvals (task_id, supervisor_id, approved_at, comments) VALUES
    (1, 1, '2025-05-10 16:00:00', 'Approved image analysis results'),
    (2, 2, '2025-05-10 16:10:00', 'Approved narrative creation'),
    (3, 1, '2025-05-10 16:20:00', 'Approved report generation');
