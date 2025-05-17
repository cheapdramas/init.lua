local banner_cat_1 = {
  "       _                         ", 
  "       \\`*-.                    ", 
  "        )  _`-.                  ", 
  "       .  : `. .                 ", 
  "       : _   '  \\               ", 
  "       ; *` _.   `*-._           ", 
  "       `-.-'          `-.        ", 
  "         ;       `       `.      ", 
  "         :.       .        \\    ", 
  "         . \\  .   :   .-'   .   ", 
  "         '  `+.;  ;  '      :    ", 
  "         :  '  |    ;       ;-.  ", 
  "         ; '   : :`-:     _.`* ; ", 
  "      .*' /  .*' ; .*`- +'  `*'  ", 
  "      `*-*   `*-*  `*-*'         "
}

require('dashboard').setup({
  theme = 'doom',
  config = {
    header = banner_cat_1,
    -- don't set center or footer
  }
})
