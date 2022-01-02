# Building the website

# Install remotes package if needed
if (!requireNamespace("remotes")) install.packages("remotes")

# Install latest development version of blogdown from github
remotes::install_github("rstudio/blogdown")

# Load the blogdown package
library(blogdown)

# Create a website with the Hugo Wowchemy "starter-academic" theme
new_site(theme = "wowchemy/starter-academic")


# Importantly, when you come back to your project, note that you can use 
# blogdown::serve_site() or the “Serve Site” addin to preview it locally.
blogdown::serve_site()

# Blogdown allows you to create new two kinds of R Markdown posts that 
# are knittable:
#   
#   .Rmd 🧶 to .html or
# 
# .Rmarkdown 🧶 to .markdown
# 
# Once knitted, both are then previewable in your Hugo site.
# 
# I used to agonize over which file extension to use. But now I am squarely 
# in .Rmarkdown camp with Maëlle- I like knitting to .markdown and wish this 
# was easier in blogdown; see: https://github.com/rstudio/blogdown/issues/530

# Use the console to author a new .Rmarkdown post; I’ll name my post “Hi Hugo”:
blogdown::new_post(title = "Hi Hugo", 
                   kind = "", # The content type to create, i.e., the Hugo 
                              # archetype. If the archetype is a page bundle 
                              # archetype, it should end with a slash, e.g., post/.
                   open = interactive(), # Whether to open the new file after 
                              # creating it. By default, it is opened in an 
                              # interactive R session.
                   ext = '.Rmarkdown', # The filename extension (e.g., ‘.md’, 
                              # ‘.Rmd’, or ‘.Rmarkdown’). Ignored if file has 
                              # been specified.
                   subdir = "post", # If specified (not NULL) the post will be
                                    # generated under a subdirectory under 
                                    # a subdirectory undeer 'content/'. It
                                    # can be a nested subdirectory like 'post/joe/'
                   author = getOption("blogdown.author"),
                   categories = NULL,
                   tags = NULL,
                   date = Sys.Date(),
                   time = getOption("blogdown.time", FALSE),
                   file = NULL, # The filename of the post. Date automatically 
                                # prepended
                   slug = NULL, # The slug of the post. By default (NULL), the 
                                # slug is generated from the filename by removing 
                                # the date and filename extension,
                   title_case = getOption("blogdown.title_case")
                                # A function to convert the title to title case.
)

# This takes the path to where you want your post to live, relative to the 
# content/ folder (so that piece of the path is assumed, rightly so!). 
# In the Academic theme, the example site organizes blog posts into the 
# content/post/ folder, but the name of this folder varies across Hugo themes.

# A rule that is true 90% of the time: folders in content/ are singular, 
# not plural— ️ post not  posts

# You can configure your Rprofile file by navigating there or running
# if exists, opens; if not, creates new
blogdown::config_Rprofile() 


# # Then add the blogdown options to that file, save and RESTART YOUR R SESSION
# # for the changes to take effect
# options(
#   # to automatically serve the site on RStudio startup, set this option to TRUE
#   blogdown.serve_site.startup = FALSE,
#   # to disable knitting Rmd files on save, set this option to FALSE
#   blogdown.knit.on_save = FALSE     <- change
#   blogdown.author = "Alison Hill",  <- add
#   blogdown.ext = ".Rmarkdown",      <- add
#   blogdown.subdir = "post"          <- add
# )
            
# Always restart your R session after editing your .Rprofile for changes 
# to take effect. Don’t forget to run serve_site() after a restart.
blogdown::serve_site()


# If you look in your Files pane, you can see that this creates a folder 
# with the date and the “slug” name of my post ("hi-hugo"). 
# The actual R Markdown file is named index.Rmarkdown.
       
# This is a Hugo page bundle. Each post gets its own bundle, or folder. 
# Inside the post bundle is where all your static images, static data 
# files like .csv files should go.

# In the post itself, use the relative file path like:
# ![my-first-image](image1.jpg)


# Let’s look at the index.Rmarkdown. We’ll knit this .Rmarkdown to 
# a .markdown file. You may knit freely now in blogdown!
# To knit an .Rmarkdown post, you can either:
# Use the Knit button to knit to the correct output format, or
# Use the keyboard shortcut Cmd+Shift+K (Mac) or Ctrl+Shift+K (Windows/Linux).

         
          

