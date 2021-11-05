DELETE FROM items WHERE name = 'cokebrick';
DELETE FROM items WHERE name = 'weedbrick';
DELETE FROM items WHERE name = 'methbrick';

INSERT INTO `items` (name, label, limit) VALUES
	('cokebrick', 'Brick of coke', -1),
	('weedbrick', 'Brick of weed', -1),
	('methbrick', 'Brick of meth', -1)
;