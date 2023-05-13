USE joblister_db;

INSERT INTO ads (user_id, title, created, description)

VALUES (1, 'Banana Transporter', DATE_FORMAT('2023-03-02', '%y/%m/%d'), 'Safely transport bananas from the local market to our secret laboratory'),
       (1, 'Gadget Tester', DATE_FORMAT('2023-03-02', '%y/%m/%d'), 'Test out all of the latest gadgets and gizmos that we use in our evil plans'),
       (1, 'Shark Tank Cleaner', DATE_FORMAT('2023-03-02', '%y/%m/%d'), 'Clean and maintain the shark tanks'),
       (1, 'Mustache Stylist', DATE_FORMAT('2023-03-02', '%y/%m/%d'), 'Create and maintain the perfect mustache for our evil schemes. This job requires a steady hand and a love of facial hair.'),
       (1, 'Junior Mission Coordinator', DATE_FORMAT('2023-03-02', '%y/%m/%d'), 'Responsible for assisting in the planning and coordination of our evil plans and heists.');

