#? stdtmpl(subChar = '$', metaChar = '#')
#import "../database"
#proc showAllPosts*(theposts: seq[BlogPosts]): string =
#  result = ""
<div class="container mt-4">
    <section class="hero">
        <div class="hero-body">
            <div class="container">
            #for post in theposts:
                <h1 class="title">
                    ${post.ptitle}
                </h1>
                <h3 class="subtitle">
                 ${post.pcontent}
                </h3>
                #end for
            </div>
        </div>
    </section>
</div>
#end proc