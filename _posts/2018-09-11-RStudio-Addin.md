---
layout: post
title: "Khám phá RStudio (Advanced) : Add-in và tùy biến phím tắt dùng trong Addin"
modified: 2018-08-23
tags: [R,data visualisation]
image:
  feature: prescrire-pv.jpg
  credit: nguyenkhacdung
  creditlink: https://desdaughter.com/2013/05/08/petit-manuel-de-pharmacovigilance-et-pharmacologie-clinique-sur-les-effets-nocifs-des-medicaments/
#output: html_notebook
---



Trong post này, tôi sẽ trình bày các kinh nghiệm của mình trong sử dụng R Studio liên quan tới dùng các gói lệnh Add-in và vận dụng trong nghiên cứu và khai phá dữ liệu.

# Giới thiệu chung
Mục đích: Tạo các phím tắt, lập chương trình 

## rsam tạo, quản lý và tùy biến phím tắt

Cài đặt từ Github do gói lệnh install.github () từ `library(devtools)`




Sau khi cài đặt package rsam thì ở mục Addins

[](https://www.dropbox.com/s/q5lxojji14j2l45/rsam1.png?raw=1)

Để thay đổi cách gán phím tắt :


Nếu phím tắt đã từng tồn lại, tùy biến overide=TRUE sẽ vô hiệu hóa phím tắt trước đó và kích hoạt phím tắt thông qua rsam 

Muốn gỡ bỏ phím tắt thì dùng câu lệnh :




 `Chú ý khi dùng rsam thì pipline (%>%) sẽ bị tạm thời vô hiệu hóa.`

Ví dụ cụ thể để chạy 1 block lệnh bằng phím tắt __Command+Shift+L+1__ 

lla = Limited Liability Addins



Khi lệnh fn_1 và fn_2 được định nghĩa, mỗi lần ấn tổ hợp phím tắt ở trên thì dù bất cứ ở cửa sổ nào thì toàn bộ câu lệnh được gói (Wrap) trong fn_ sẽ được tự động chạy.

-> Ý nghĩa việc này giúp tiết kiệm đáng kể thời gian thao tác chạy câu lệnh, đặc biệt là khi dùng thao tác với knitr, ggplot

Bên cạnh đó, có thể tùy chỉnh lại các phím tắt có trên Addins bằng cách định nghĩa lại các phím thích hợp thông qua


```
                 Package                            Name
 1:         addinmanager                   Addin manager
 2:           addinslist           Browse RStudio addins
 3:             bookdown                    Preview Book
 4:             bookdown                Input LaTeX Math
 5:                 Cite                            Cite
 6:                 citr                Insert citations
 7:                clipr              Value to clipboard
 8:                clipr             Output to clipboard
 9:         colourpicker              Plot Colour Helper
10:         colourpicker                   Colour Picker
11:                 covr Calculate package test coverage
12:            datapasta                Paste as tribble
13:            datapasta                 Paste as vector
14:            datapasta      Paste as vector (vertical)
15:            datapasta             Paste as data.frame
16:               ggedit                          ggedit
17:        ggThemeAssist          ggplot Theme Assistant
18:           hrbraddins               Refresh .Renviron
19:           hrbraddins                    Bare Combine
20:           hrbraddins                       Join Rows
21:           hrbraddins                     Tweet Share
22:           hrbraddins                   Twitter Rant!
23:           listviewer                        jsonedit
24:           mischelper                Misc - View list
25:           mischelper              Misc - Unwrap text
26:           mischelper       Misc - Clip to data frame
27:           mischelper        Misc - Flip windows path
28:           mischelper                  Misc - Time it
29:           mischelper           Misc - microbenchmark
30:           mischelper         Misc - Render RMarkdown
31:           mischelper           Misc - Format console
32:           mischelper               Misc - View str()
33:           mischelper          Misc - View data frame
34:            questionr                 Levels recoding
35:            questionr                 Levels ordering
36:            questionr          Numeric range dividing
37:              radiant                         Radiant
38:              radiant                  Update Radiant
39:               remedy                        Backtick
40:               remedy                            Bold
41:               remedy                           Chunk
42:               remedy                      Chunksplit
43:               remedy                              H1
44:               remedy                              H2
45:               remedy                              H3
46:               remedy                              H4
47:               remedy                              H5
48:               remedy                              H6
49:               remedy                           Image
50:               remedy                         Italics
51:               remedy                           LaTeX
52:               remedy                            List
53:               remedy                           Right
54:               remedy                          Strike
55:               remedy                           Table
56:               remedy                             Url
57:               remedy                        Xaringan
58:               remedy                         Youtube
59:               reprex                Render reprex...
60:               reprex                Reprex selection
61:        rhandsontable               Edit a Data Frame
62:                 rsam                            lla1
63:                 rsam                            lla2
64:                 rsam                            lla3
65: RStudioConsoleRender               Render in console
66:              shinyjs                   Colour Picker
67:        snippetsaddin                      Insert %>%
68:        snippetsaddin                   Convert slash
69:        snippetsaddin                      Copy value
70:        taskscheduleR   Schedule R scripts on Windows
71:       wordcountaddin                      Word count
72:       wordcountaddin                     Readability
73:              WrapRmd                        Wrap Rmd
                 Package                            Name
                                                                                                        Description
 1:                                                                                  Addin to maintain other addins
 2:                                                                      Discover and install useful RStudio addins
 3:                                                              Run bookdown::serve_book() to live preview a book.
 4:                                                               Input math expressions via the MathQuill library.
 5:                                                                   Helps insert bibtex citation in Rmd documents
 6:                                                                                      Inserts Markdown citations
 7:                                            Copies the results of a selected expression to the\nsystem clipboard
 8:                                     Copies the console output of a selected expression to\nthe system clipboard
 9:                                                                 Interactively pick colours to use in your plot.
10:                                                                                 Lets you easily select colours.
11:                                Calculates the package test coverage and opens a\nreport, using `covr::report()`
12:                                        Pastes a table from the clipboard to the editor as a\ntribble definition
13:     Pastes data from the clipboard to the editor as\ncharacter vector, formatted horizontally on a single line.
14: Pastes data from the clipboard to the editor as\ncharacter vector, formatted vertically, one element per\nline.
15:                                     Pastes a table from the clipboard to the editor as a\ndata.frame definition
16:                                                               Edit ggplot layers aesthetics and theme elements.
17:                                                                                     Customize your ggplot theme
18:                     Refreshes the in-memory environment variables from\n~/.Renviron without requiring a restart
19:                                    Turns a selected comma-separated list of strings into\na base::c() statement
20:                                                                       Join a selected set of rows into one line
21:                                                                  Share the active RStudio source tab on Twitter
22:                                             Make it easier to annoy followers and reinforce one's\nentitlement.
23:                                                                                         View a list in jsonedit
24:                                                           Select a list, view it with listviewer in viewer pane
25:                Remove unneeded hard line breaks of text in\nclipboard, then paste into current cursor position.
26:                 read clipboard, convert csv into data frame, open\ndata, write markdown table back to clipboard
27:                                      convert "\\" in clipboard to "/", then paste into\ncurrent cursor position
28:                                                             microbenchmark selected code with 1 runs in console
29:                                                            microbenchmark selected code with 10 runs in console
30:                                                                          Render RMarkdown in global environment
31:                                                                       Format console input and output to script
32:                                                                          Render str() output in html with style
33:                                                                              Open selected data frame in Viewer
34:                                                     Interactively generate code for a variable levels\nrecoding
35:                                                   Interactively generate code for a variable levels\nreordering
36:                                       Interactively generate code for dividing the range of\na numeric variable
37:                                                                                                   Start Radiant
38:                                                                            Update Radiant to the latest version
39:                                                                                       Backtick selected word(s)
40:                                                                                          Embolden selected text
41:                                                                                            Chunk script or file
42:                                                                                     Split chunk into two chunks
43:                                                                         Convert selected text into an h1 header
44:                                                                         Convert selected text into an h2 header
45:                                                                         Convert selected text into an h3 header
46:                                                                         Convert selected text into an h4 header
47:                                                                         Convert selected text into an h5 header
48:                                                                         Convert selected text into an h6 header
49:                                                                    Convert selected path into an embedded image
50:                                                                                         Italicize selected text
51:                                                                      Convert the selected text in inline LaTeX.
52:                                                                    Convert selected text into an unordered list
53:                                                                       Copy selected text (or line) to the right
54:                                                                                     Strikethrough selected text
55:                                                                                         Insert a markdown table
56:                                                                                Convert selected text into a url
57:                                                                               xaringan pull left and pull right
58:                                                             Convert selected text into a markdown youtube frame
59:                                          Run `reprex::reprex()` to prepare a reproducible\nexample for sharing.
60:                                                                           Prepare reprex from current selection
61:                                                                                Interactively edit a data frame.
62:                                         Wrap any global objects in rsam_fn_1() and use this\naddin to run them.
63:                                         Wrap any global objects in rsam_fn_2() and use this\naddin to run them.
64:                                         Wrap any global objects in rsam_fn_3() and use this\naddin to run them.
65:                                                           Renders the current RMarkdown document in the console
66:                                                                                 Lets you easily select colours.
67:                                                                             Inserts pipe at the cursor position
68:                                                                             switches the orientation of slashes
69:                                                 copies value of the object under the cursor into the\nclipboard
70:                                                Use Windows task scheduler to schedule your R scripts\n(Windows)
71:                                         Counts words and characters (excluding code chunks,\ninline code, etc.)
72:                                     Computes readability statistics (excluding code\nchunks, inline code, etc.)
73:                                 Wrap selected R Markdown text but don't insert lines\nbreaks into inline R code
                                                                                                        Description
                  Binding Interactive
 1:         addin_manager        true
 2:       addinslistAddin        true
 3:            serve_book        true
 4:             mathquill        true
 5:                  cite        true
 6:       insert_citation        true
 7:          clipr_result       false
 8:          clipr_output       false
 9:       plotHelperAddin        true
10:     colourPickerAddin        true
11:          addin_report       false
12:         tribble_paste       false
13:          vector_paste       false
14: vector_paste_vertical       false
15:              df_paste       false
16:           ggeditAddin        true
17:    ggThemeAssistAddin        true
18:      refresh_renviron       false
19:          bare_combine       false
20:             join_rows       false
21:           tweet_share       false
22:             rantAddin        true
23:         jsoneditAddin       false
24:             view_list       false
25:                unwrap       false
26:             clip_2_df       false
27:     flip_windows_path       false
28:               time_it       false
29:             benchmark       false
30:            render_rmd       false
31:        format_console       false
32:          render_addin       false
33:               view_df       false
34:                  irec        true
35:                iorder        true
36:                  icut        true
37:               radiant        true
38:        update_radiant        true
39:             backtickr       false
40:                 boldr       false
41:                chunkr       false
42:           chunksplitr       false
43:                   h1r       false
44:                   h2r       false
45:                   h3r       false
46:                   h4r       false
47:                   h5r       false
48:                   h6r       false
49:                imager       false
50:              italicsr       false
51:                latexr       false
52:                 listr       false
53:                rightr       false
54:               striker       false
55:                tabler       false
56:                  urlr       false
57:             xaringanr       false
58:              youtuber       false
59:          reprex_addin        true
60:      reprex_selection       false
61:             editAddin        true
62:                  lla1        true
63:                  lla2        true
64:                  lla3        true
65:       renderInConsole        true
66:     colourPickerAddin        true
67:           insert.pipe       false
68:            flip.slash       false
69:             copy.data       false
70:    taskschedulerAddin        true
71:            text_stats        true
72:           readability        true
73:        wrap_rmd_addin       false
                  Binding Interactive
                                      Key
 1:           addinmanager::addin_manager
 2:           addinslist::addinslistAddin
 3:                  bookdown::serve_book
 4:                   bookdown::mathquill
 5:                            Cite::cite
 6:                 citr::insert_citation
 7:                   clipr::clipr_result
 8:                   clipr::clipr_output
 9:         colourpicker::plotHelperAddin
10:       colourpicker::colourPickerAddin
11:                    covr::addin_report
12:              datapasta::tribble_paste
13:               datapasta::vector_paste
14:      datapasta::vector_paste_vertical
15:                   datapasta::df_paste
16:                   ggedit::ggeditAddin
17:     ggThemeAssist::ggThemeAssistAddin
18:          hrbraddins::refresh_renviron
19:              hrbraddins::bare_combine
20:                 hrbraddins::join_rows
21:               hrbraddins::tweet_share
22:                 hrbraddins::rantAddin
23:             listviewer::jsoneditAddin
24:                 mischelper::view_list
25:                    mischelper::unwrap
26:                 mischelper::clip_2_df
27:         mischelper::flip_windows_path
28:                   mischelper::time_it
29:                 mischelper::benchmark
30:                mischelper::render_rmd
31:            mischelper::format_console
32:              mischelper::render_addin
33:                   mischelper::view_df
34:                       questionr::irec
35:                     questionr::iorder
36:                       questionr::icut
37:                      radiant::radiant
38:               radiant::update_radiant
39:                     remedy::backtickr
40:                         remedy::boldr
41:                        remedy::chunkr
42:                   remedy::chunksplitr
43:                           remedy::h1r
44:                           remedy::h2r
45:                           remedy::h3r
46:                           remedy::h4r
47:                           remedy::h5r
48:                           remedy::h6r
49:                        remedy::imager
50:                      remedy::italicsr
51:                        remedy::latexr
52:                         remedy::listr
53:                        remedy::rightr
54:                       remedy::striker
55:                        remedy::tabler
56:                          remedy::urlr
57:                     remedy::xaringanr
58:                      remedy::youtuber
59:                  reprex::reprex_addin
60:              reprex::reprex_selection
61:              rhandsontable::editAddin
62:                            rsam::lla1
63:                            rsam::lla2
64:                            rsam::lla3
65: RStudioConsoleRender::renderInConsole
66:            shinyjs::colourPickerAddin
67:            snippetsaddin::insert.pipe
68:             snippetsaddin::flip.slash
69:              snippetsaddin::copy.data
70:     taskscheduleR::taskschedulerAddin
71:            wordcountaddin::text_stats
72:           wordcountaddin::readability
73:               WrapRmd::wrap_rmd_addin
                                      Key
                                                                                      libpath
 1:         C:/Users/utilisateur/Documents/R/R-3.4.1/library/addinmanager/rstudio/_addins.dcf
 2:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/addinslist/rstudio/_addins.dcf
 3:             C:/Users/utilisateur/Documents/R/R-3.4.1/library/bookdown/rstudio/_addins.dcf
 4:             C:/Users/utilisateur/Documents/R/R-3.4.1/library/bookdown/rstudio/_addins.dcf
 5:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/Cite/rstudio/_addins.dcf
 6:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/citr/rstudio/_addins.dcf
 7:                C:/Users/utilisateur/Documents/R/R-3.4.1/library/clipr/rstudio/_addins.dcf
 8:                C:/Users/utilisateur/Documents/R/R-3.4.1/library/clipr/rstudio/_addins.dcf
 9:         C:/Users/utilisateur/Documents/R/R-3.4.1/library/colourpicker/rstudio/_addins.dcf
10:         C:/Users/utilisateur/Documents/R/R-3.4.1/library/colourpicker/rstudio/_addins.dcf
11:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/covr/rstudio/_addins.dcf
12:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/datapasta/rstudio/_addins.dcf
13:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/datapasta/rstudio/_addins.dcf
14:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/datapasta/rstudio/_addins.dcf
15:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/datapasta/rstudio/_addins.dcf
16:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/ggedit/rstudio/_addins.dcf
17:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/ggThemeAssist/rstudio/_addins.dcf
18:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/hrbraddins/rstudio/_addins.dcf
19:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/hrbraddins/rstudio/_addins.dcf
20:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/hrbraddins/rstudio/_addins.dcf
21:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/hrbraddins/rstudio/_addins.dcf
22:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/hrbraddins/rstudio/_addins.dcf
23:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/listviewer/rstudio/_addins.dcf
24:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
25:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
26:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
27:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
28:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
29:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
30:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
31:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
32:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
33:           C:/Users/utilisateur/Documents/R/R-3.4.1/library/mischelper/rstudio/_addins.dcf
34:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/questionr/rstudio/_addins.dcf
35:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/questionr/rstudio/_addins.dcf
36:            C:/Users/utilisateur/Documents/R/R-3.4.1/library/questionr/rstudio/_addins.dcf
37:              C:/Users/utilisateur/Documents/R/R-3.4.1/library/radiant/rstudio/_addins.dcf
38:              C:/Users/utilisateur/Documents/R/R-3.4.1/library/radiant/rstudio/_addins.dcf
39:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
40:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
41:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
42:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
43:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
44:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
45:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
46:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
47:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
48:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
49:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
50:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
51:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
52:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
53:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
54:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
55:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
56:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
57:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
58:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/remedy/rstudio/_addins.dcf
59:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/reprex/rstudio/_addins.dcf
60:               C:/Users/utilisateur/Documents/R/R-3.4.1/library/reprex/rstudio/_addins.dcf
61:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/rhandsontable/rstudio/_addins.dcf
62:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/rsam/rstudio/_addins.dcf
63:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/rsam/rstudio/_addins.dcf
64:                 C:/Users/utilisateur/Documents/R/R-3.4.1/library/rsam/rstudio/_addins.dcf
65: C:/Users/utilisateur/Documents/R/R-3.4.1/library/RStudioConsoleRender/rstudio/_addins.dcf
66:              C:/Users/utilisateur/Documents/R/R-3.4.1/library/shinyjs/rstudio/_addins.dcf
67:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/snippetsaddin/rstudio/_addins.dcf
68:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/snippetsaddin/rstudio/_addins.dcf
69:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/snippetsaddin/rstudio/_addins.dcf
70:        C:/Users/utilisateur/Documents/R/R-3.4.1/library/taskscheduleR/rstudio/_addins.dcf
71:       C:/Users/utilisateur/Documents/R/R-3.4.1/library/wordcountaddin/rstudio/_addins.dcf
72:       C:/Users/utilisateur/Documents/R/R-3.4.1/library/wordcountaddin/rstudio/_addins.dcf
73:              C:/Users/utilisateur/Documents/R/R-3.4.1/library/WrapRmd/rstudio/_addins.dcf
                                                                                      libpath
            Shortcut
 1:             <NA>
 2:             <NA>
 3:             <NA>
 4:             <NA>
 5: Ctrl+Shift+Alt+R
 6: Ctrl+Shift+Alt+C
 7:       Ctrl+Alt+C
 8:             <NA>
 9:             <NA>
10:             <NA>
11:             <NA>
12:       Ctrl+Alt+T
13:             <NA>
14:             <NA>
15:             <NA>
16:             <NA>
17:             <NA>
18:             <NA>
19:       Ctrl+Alt+B
20:             <NA>
21:             <NA>
22:             <NA>
23:             <NA>
24:             <NA>
25:             <NA>
26:             <NA>
27:             <NA>
28:             <NA>
29:             <NA>
30:       Ctrl+Alt+M
31:             <NA>
32:             <NA>
33:             <NA>
34:     Ctrl+Shift+R
35:     Ctrl+Shift+O
36:             <NA>
37:             <NA>
38:             <NA>
39:             <NA>
40:           Ctrl+B
41:             <NA>
42:             <NA>
43:       Ctrl+Alt+1
44:       Ctrl+Alt+2
45:       Ctrl+Alt+3
46:       Ctrl+Alt+4
47:       Ctrl+Alt+5
48:             <NA>
49:       Ctrl+Alt+P
50:           Ctrl+I
51:             <NA>
52:           Ctrl+/
53: Ctrl+Shift+Right
54:             <NA>
55:     Ctrl+Shift+T
56:             <NA>
57:             <NA>
58:             <NA>
59:             <NA>
60:             <NA>
61:             <NA>
62:       Ctrl+Alt+L
63:       Ctrl+Alt+Z
64:             <NA>
65:             <NA>
66:             <NA>
67:             <NA>
68:             <NA>
69:             <NA>
70:             <NA>
71:            Alt+W
72:             <NA>
73:       Ctrl+Alt+W
            Shortcut
```


## Clipr - copy dữ liệu sang bộ nhớ đệm clipboard

Với thủ thuật này, không cần phải xuất/lưu biến bảng biểu hay kết quả phân tích sang dạng csv hay excel mà chỉ cần dùng addins này thì toàn bộ output/biến sẽ được lưu vào có thể paste trực tiếp trên word (kết quả phân tích) hoặc excel (ưu tiên với bảng dữ liệu).
Có thể gán phím tắt cho tác vụ này ở đây mình dùng là __ctrl+alt+C__ để copy giá trị nội dung của 1 biến (value) sau khi thao tác bôi đen dòng biến hoặc dòng lệnh chứa biến đó 

Đặc biệt có thể copy được biến thay đổi bởi pipline ( %>% )

## Datapasta 
Paste dữ liệu dưới dạng bảng Trible,tible dạng vector dạng data.frame....
Hữu dụng



## Remedy - hỗ trợ soạn thảo trên Rmardown

Thao tác chèn link, kiểu chữ, styling, Heading... được gán các phím tắt quen thuộc như Ctrl+B = bold, Ctrl+I = Italic....



# Wrapmd - tự động cắt chữ xuống 

## Phím tắt 




.... to be continued!


                        
Status (On projet Sept 2018) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)
