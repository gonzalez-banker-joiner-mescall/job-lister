USE joblister_db;

TRUNCATE TABLE ads;

INSERT INTO ads (user_id, title, created, description)
VALUES (1, 'Destroy The Moon', `2023-03-01`, 'I am looking for 4 henchmen to help me destroy the moon!'),
       (3, 'Bank Heist', `2023-03-01`, 'Need 2 henchmen to aid in robbing bank.'),
       (7, 'Kill Thor', `2023-03-01`, 'need to punish odins son.'),
       (8, 'Attack People at Beach', `2023-03-01`, 'Need 15 henchmen to scare beach goers!!!'),
       (10, 'Rob Parents', `2023-03-01`, 'Parents did a bad time to pay! 2 henchmen needed will pay well!'),
       (11, 'Steal Magnets', `2023-03-01`, 'I like metal! 100 mutants needed...mutants only!'),
       (13, 'Build Laser Gun', `2023-03-01`, 'LASER LASER LASER need 4 minions.');
