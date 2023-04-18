final String createTable = '''
  CREATE TABLE contact(
    id INT NOT NULL PRIMARY KEY
    ,name VARCHAR(200) NOT NULL
    ,telephone CHAR(16) NOT NULL
    ,email VARCHAR(150) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL

  )
''';

final insert = '''
  INSERT INTO contact (name, telephone, email, url_avatar)
''';

const list = [
  {
    'name': 'David',
    'telephone': '(11) 9 9123-0212',
    'avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/11/male-306408_960_720.png',
  },
  {
    'name': 'Micaele',
    'telephone': '(11) 9 9632-7719',
    'avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407_960_720.png',
  },
  {
    'name': 'Denise',
    'telephone': '(21) 9 7777-8218',
    'avatar': 'https://cdn.pixabay.com/photo/2023/03/27/20/14/girl-7881639_960_720.png',
  }
];
