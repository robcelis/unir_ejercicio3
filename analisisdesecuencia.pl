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

# 2. Contar la cantidad de un nucleótido específico en la secuencia
my $count_nucleotido = ($secuencia =~ s/$nucleotido/$nucleotido/g);
print "La cantidad de nucleótidos '$nucleotido' en la secuencia es: $count_nucleotido\n";

# 3. Buscar un patrón dentro de la secuencia
my $posicion_patron = index($secuencia, $patron);
if ($posicion_patron != -1) {
    print "El patrón '$patron' se encuentra en la posición $posicion_patron de la secuencia.\n";
} else {
    print "El patrón '$patron' no se encuentra en la secuencia.\n";
}

# 4. Extraer una subsecuencia específica
my $subsecuencia = substr($secuencia, $start, $length);
print "La subsecuencia extraída desde la posición $start con una longitud de $length es: $subsecuencia\n";


exit;




