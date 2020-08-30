import db_sqlite

type
    Database = ref object
      db*: DbConn


    BlogPosts* = object 
      ptitle*:string
      pcontent*: string


proc newDatabase*(filename = "blog.db"): Database =
    new result
    result.db = open(filename,"","","")

proc close*(database: Database) =
    database.db.close()

proc setup*(database: Database) =
    database.db.exec(sql"""
    CREATE TABLE IF NOT EXISTS BlogPosts(
        ptitle text,
        pcontent text
    )
   """ )
proc createPost*(database: Database, bpost: BlogPosts) =
    database.db.exec(sql"INSERT INTO BlogPosts VALUES (?,?);",
    bpost.ptitle, bpost.pcontent)

proc getPosts*(database: Database, tpost: seq[string]): seq[BlogPosts] =
    result = @[]
    let ypost = database.db.getAllRows(
        sql("SELECT * FROM BlogPosts"),tpost)

    for row in ypost:
        result.add(BlogPosts(ptitle: row[0],pcontent: row[1]))