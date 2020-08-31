import jester, asyncdispatch,os,strutils
import views/createpost,views/home,views/posts,views/extra
import database

var settings = newSettings()
if existsEnv("PORT"):
  settings.port = Port(parseInt(getEnv("PORT")))

let db = newDatabase()

routes:
  get "/":
     var data: BlogPosts
     let AllthePosts = db.getPosts(@[data.ptitle, data.pcontent])
     resp renderMainPage(showAllPosts(AllthePosts))


  get "/createPost":
    resp renderMainPage(createPost())
  get "/about":
    resp renderMainPage(renderAbout())
  post "/createPost":
    let AllPost = BlogPosts(
      ptitle: @"title",
      pcontent: @"content"
    )
    db.createPost(Allpost)
    redirect("/")    

runForever()