#!/usr/bin/perl
use strict;
use warnings;
# Nombre del archivo que contiene la secuencia en formato fasta, .fas, .txt; 
my $archivo = 'archivos_secuencias/secuencias.txt';  # Se Ajusta la ruta según el nombre de tu carpeta

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

# 2. Contar el número de ocurrencias del patrón
my $cont_patron = () = $secuencia =~ /$patron/g;
print "El patrón '$patron' aparece $cont_patron veces en la secuencia.\n";

# 3. Contar las apariciones de un nucleótido específico
my $cont_nucleotido = () = $secuencia =~ /$nucleotido/g;
print "El nucleótido '$nucleotido' aparece $cont_nucleotido veces en la secuencia.\n";

# 4. Verificar patrón en la cadena complementaria
if ($complemento =~ /$patron/) {
    print "El patrón '$patron' está presente en la cadena complementaria.\n";
} else {
    print "El patrón '$patron' no está presente en la cadena complementaria.\n";

# 5. Buscar un patrón dentro de la secuencia
my $posicion_patron = index($secuencia, $patron);
if ($posicion_patron != -1) {
    print "El patrón '$patron' se encuentra en la posición $posicion_patron de la secuencia.\n";
} else {
    print "El patrón '$patron' no se encuentra en la secuencia.\n";
}

# 6. Extraer una subsecuencia específica
my $subsecuencia = substr($secuencia, $start, $length);
print "La subsecuencia extraída desde la posición $start con una longitud de $length es: $subsecuencia\n";


exit;
