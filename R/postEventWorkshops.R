#' Convert dataframe to a table within an HTML page
#' 
#' @description Function converts a dataframe into an HTML table embedded within a full 
#' HTML file. The output file contains a summary showing the total number of table rows. 
#' The HTML file also includes JavaScript functions to support URL suffix searching via 
#' appending '?q=' and the search terms to the final URL. A JavaScript function filters 
#' the table and displays matching rows (based on an exact match search across all 
#' columns), updating the disaplyed row totals in the summary line. The function also
#' @param data A dataframe containing columns and rows of data.
#' @param titlefont_family Font family for the title text. Default is 'sans-serif'.
#' @param titlefont_size Font size for the title text. Units must be specified. 
#' Default is '20px'.
#' @param titlefont_weight Font weight for the title text. Default is '400'.
#' @param emphasisfont_colour Colour code for the row count and search terms. Default 
#' is '#938D69'.
#' @param tablefont_family Font family for the table text. Default is 'sans-serif'.
#' @param tablefont_size Font size for the table text. Units must be specified. 
#' Default is '20px'.
#' @param table_width Width of the table. Units must be specified. Default is '100%'. 
#' For wider tables featuring extended text (such as URLs or abstracts), the width 
#' can be set in pixels (e.g. '6000px' may be necessary for 24 columns, two of which 
#' are abstract and URL; see example).
#' @param theadbg_colour Colour code for the table header background. Default is 
#' '#c6c09c'.
#' @param theadtext_colour Colour code for the table header text. Default is '#fff'.
#' @param tooltips Vector of strings to be used as tooltips on table head mouseover. 
#' Default is not to display them.
#' @param text_align Text alignment for the table text. Default is 'left'.
#' @param hoverbg_colour Colour code for the hover over colour emphasis for rows. 
#' Default is '#f4f3ed'.
#' @param other_CSS Optional additional CSS arguments. Can be supplied as '<script>' 
#' references to CSS libraries or class styles for the following: 'table_class'; 
#' 'thead_class', or 'tbody_class'. Additional classes can be assigned by editing 
#' the output HTML file directly.
#' @param search_bar If 'hidden', search_bar will be hidden from view. Otherwise, the 
#' search bar will be displayed at the top of the table and responds to 'keyup' 
#' changes in the input field to search for exact matches across all columns. Search 
#' can also be performed by appending '?q=' and the search terms to the URL of the 
#' final output HTML.
#' @param hyperlinks If TRUE, the entire contents of any column with cell values 
#' starting with 'www.' or http' are converted to hyperlink objects using '<a href="" 
#' target="_blank">', directing the hyperlink to open in a new tab. Default is 'TRUE'. 
#' If set to 'FALSE', hyperlinks are ignored and eill appear as plain text.
#' @return an HTML object containing the full HTML code for the webpage. The function 
#' also saves the HTML file to the working directory.
#' @example 
#' \donttest{
#'     data <- read.csv(file.choose());
#'     attach(data);
#'     tooltips <- c("id: some extra text", "loc: some extra text", "inst: some extra text", 
#'         "outcome: some extra text", "abs: some extra text", "title: some extra text", 
#'         "url: some extra text", "year: some extra text", "appr: some extra text", 
#'         "delv: some extra text", "dur: some extra text", "outcome2: some extra text", 
#'         "outcome3: some extra text", "trial: some extra text", "size: some extra text", 
#'         "cluster: some extra text", "effect: some extra text", "analysis: some extra text", 
#'         "long: some extra text", "genr: some extra text", "qual: some extra text", 
#'         "theor: some extra text", "refle: some extra text", "search: some extra text")
#'     html <- dataframe2html(data,
#'         tooltips = tooltips,
#'         table_width = '6000px',
#'         hyperlinks = 'TRUE')
#'  write(output, 'outputs/postEvent_talksTable.html')
#' }
#' @export
dataframe2html <- function(data,
                           titlefont_family = 'sans-serif',
                           titlefont_size = '16px',
                           titlefont_weight = '400',
                           emphasisfont_colour = '#938D69',
                           tablefont_family = 'sans-serif',
                           tablefont_size = '14px',
                           table_width = '100%',
                           theadbg_colour = '#4fb4a8',
                           theadtext_colour = '#fff',
                           tooltips = '',
                           text_align = 'left',
                           hoverbg_colour = '#cfece9',
                           other_CSS = '',
                           search_bar = 'hidden',
                           hyperlinks = 'TRUE'
                           ){
  htmlleading <- paste('<!DOCTYPE html>\n <html>\n <head>\n \t\n\t<meta name="viewport" content="width=device-width, initial-scale=2">\n \t\n \t<style type="text/css">\n .titletext {\n \tfont-weight: 400;\n \tfont-family: ',
                       titlefont_family,
                       ';\n \tfont-size: ',
                       titlefont_size,
                       ';\n }\n \n table {\n \t table-layout: fixed;\n \tfont-weight: ',
                       titlefont_weight,
                       ';\n \tline-height: 1.5;\n \tcolor: #212529;\n \tfont-family: ', 
                       tablefont_family, 
                       ';\n \tmargin: 0px;\n \tpadding: 0px;\n \tbox-sizing: border-box;\n \tmargin-bottom: 110px;\n \tbackground-color: #fff;\n \tpadding-top: 5px;\n \tfont-size: ',
                       tablefont_size,
                       ';\n \twidth: ',
                       table_width,
                       ';\n \tword-wrap: break-word;\n }\n \n th.title_abstract{width: 40%;}\n \n th.presenter {\n \twidth: 15%;\n}\n \n th.guests {\n \twidth: 30%;\n}\n \n th.YouTube{\n \t text-align: center;\n \twidth: 15%;\n}\n \n th {\n \tposition:sticky;\n \tpadding:5px;\n \ttop:0px;\n \tbackground:',
                       theadbg_colour,
                       ';\n \tcolor:',
                       theadtext_colour,
                       ';\n \t\n }\n \n td {\n \ttext-align: ',
                       text_align,
                       ';\n \tpadding: 20px;\n }\n \n tr {\n \tborder-bottom: 1px solid #ddd;\n }\n \n tr.header, tr:hover {\n \tbackground-color: ',
                       hoverbg_colour,
                       ';\n }\n\n',
                       other_CSS,
                       '#overlay {
      position: fixed;
      display: none;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: rgba(0,0,0,0.5);
      z-index: 2;
      cursor: pointer;
    }

    #text2 {
      position: absolute;
      top: 50%;
      left: 50%;
      font-size: 50px;
      color: white;
      transform: translate(-50%,-50%);
      -ms-transform: translate(-50%,-50%);
    }
                       </style>\n \t\n </head>\n <body>\n \t<span id="selection" style="color:',
                       emphasisfont_colour,
                       '"></span></p>\n\n',
                       sep = '')
  htmltrailing <- '\n
    <script>
function on() {
  document.getElementById("overlay").style.display = "block";
}

function off() {
  document.getElementById("overlay").style.display = "none";
}
</script>
</body>\n</html>\n'
  
  if(hyperlinks == TRUE) {
      data[,grep('www.|http', substr(data[1,], 1, 4))] <- gsub('\n', 
                                                               '',
                                                               paste('<a href="',
                                                                     data[,grep('www.|http', substr(data[1,], 1, 4))],
                                                                     '" target="_blank">',
                                                                     data[,grep('www.|http', substr(data[1,], 1, 4))],
                                                                     '</a>',
                                                                     sep = '')
                                                               )
  }
  
  part1 <- paste('<table id="table_id" class="table_class">\n\t<thead id="thead_id" class="thead_class">\n\t\t<tr>\n',
                 if(length(tooltips) > 1){
                   df <- data.frame(tooltips = tooltips, colname = names(data))
                   x <- paste(paste('\t\t\t<th title="',
                                    df$tooltips,
                                    '">',
                                    df$colname,
                                    '</th>\n',
                                    sep = ''), 
                              collapse = '')
                   x
                 } else {
                   x <- paste(paste0('<th class="', names(data), '">', gsub('_', ' and ', tools::toTitleCase(names(data))), '</th>'), collapse = '')
                   x
                 },
                 '\t\t</tr>\n\t</thead>\n\t<tbody id="tbody_id" class="tbody_class">\n',
                 sep = '')
  
  x <- tidyr::unite(data, 
                    'new',
                    colnames(data),
                    sep = '</td>\n\t\t\t<td>')
  part2 <- paste('\t\t<tr>\n',
                 paste(sapply(x, 
                        function(x) paste('\t\t\t<td>', 
                                          x, 
                                          '\t\t\t</td>\n', 
                                          sep = '')),
                 collapse = '\t\t</tr>\n\t\t<tr>'),
                 '\t\t</tr>\n',
                 sep = '')
  
  part3 <- paste('\t</tbody>\n</table>\n',
                 sep = '')
  
  output <- paste(htmlleading,
        part1,
        part2,
        part3,
        htmltrailing,
        sep = ''
        )
  return(output)
}

