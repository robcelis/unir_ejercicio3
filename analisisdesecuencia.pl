#!/usr/bin/perl
use strict;
use warnings;
# Nombre del archivo que contiene la secuencia en formato fasta
my $archivo = 'archivos_secuencias/secuencias.txt';  # Ajusta la ruta según el nombre de tu carpeta

# Variable para almacenar la secuencia
my $secuencia = '';

# Abrir el archivo y leer la secuencia txt o fasta
open(my $fh, '<', $archivo) or die "No se puede abrir el archivo '$archivo' $!";
while (my $linea = <$fh>) {
    chomp $linea;
    # Ignorar la línea de encabezado que comienza con '>'
    next if $linea =~ /^>/;
    $secuencia .= $linea;
}
close($fh);

#variable para almacenar informacion de la secuencia
#my $secuencia = "ATGCCGCGCGCCCGGGGTTTGTGTGCGATCGTATACT" ;
my $patron = "GCC" ;
my $nucleotido = "A";# nucleotido que se desea contar
my $start= 2; # posicion de inicio
my $length= 10; # largo de la secuencia

# 1. obtener la longitud de la secuencia
my $longitud  = length($secuencia);
print "La longitud de la secuencia es : $longitud\n" ;

exit;




