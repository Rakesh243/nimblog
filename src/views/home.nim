#? stdtmpl(subChar = '$', metaChar = '#')
#
#proc renderMainPage*(body: string): string =
# result = ""
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bulma.min.css">
    <title>nimblog</title>

</head>

<nav class="navbar is-info " role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">
        NIMBLOG
      </a>
  
      <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>
  
    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item" href="/">
          Home
        </a>
        <a class="navbar-item" href="/atricles">
            Articles
        </a>  
        <a class="navbar-item" href="/about">
            About
        </a>
            
        <a class="navbar-item" href="/contact">
            Contact
        </a>  
      </div>
     
    </div>
  </nav>
  <body>
    ${body}
  </body>


<footer class="footer">
  <div class=" has-text-centered">
    <p>
      <strong>nimblog</strong> by <a href=""> <p>Made with ❤️ by rak &copy 2020</p>
    </p>
  </div>
</footer>

</html>
#end proc 