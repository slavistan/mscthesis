$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
$out_dir = 'build';
$aux_dir = 'build';
$pdflatex = 'lualatex --shell-escape --output-directory=build -interaction nonstopmode %O %S';
@default_files = ( 'mscthesis.tex' );
