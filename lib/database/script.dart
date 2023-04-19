final String createTable = '''
  CREATE TABLE contact(
    id INT NOT NULL PRIMARY KEY
    ,name VARCHAR(200) NOT NULL
    ,telephone CHAR(16) NOT NULL
    ,email VARCHAR(150) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL

  )
''';

final insert1 = '''
  INSERT INTO contact (name, telephone, email, url_avatar)
  VALUES('José','(11) 9 9123-0212','jose@email.com','https://cdn.pixabay.com/photo/2014/04/02/14/11/male-306408_960_720.png')
''';

final insert2 = '''
  INSERT INTO contact (name, telephone, email, url_avatar)
  VALUES('Maria','(11) 9 9632-7719','maria@email.com','https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407_960_720.png')
''';

final insert3 = '''
  INSERT INTO contact (name, telephone, email, url_avatar)
  VALUES('Isabel','(21) 9 7777-8218','isabel@email.com','https://cdn.pixabay.com/photo/2023/03/27/20/14/girl-7881639_960_720.png')
''';