$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
$out_dir = 'build';
$aux_dir = 'build';
$pdflatex = 'lualatex -interaction nonstopmode %O %S';
@default_files = ( 'mscthesis.tex' );
