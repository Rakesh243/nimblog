#? stdtmpl(subChar = '$', metaChar = '#')
#
#proc createPost*(): string =
#  result = ""
<div class="container">
   <form class ="create-post" action ="createPost" method="POST">
        <label>Title</label><br>
<input class="input" type="text" name="title" placeholder="Text input">
        <label>Post</label><br>
        <div class="field">
            <div class="control">
              <textarea class="textarea is-large" name="content" placeholder="Large textarea"></textarea>
             </div>
        </div>
       <button class="button is-success" type="submit">SUBMIT</button>
      
    </form>
 </div>
 #end proc