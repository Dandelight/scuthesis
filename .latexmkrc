# Compile with xelatex

$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode %O %S';
$xelatex = $pdflatex;
$latex = $pdflatex;

$pdf_mode = 1;
$aux_dir = '.aux';
$out_dir = '.';
