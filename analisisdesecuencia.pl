#!/usr/bin/perl
use strict;
use warnings;

#variable para almacenar informacion de la secuencia
my $secuencia = "ATGCCGCGCGCCCGGGGTTTGTGTGCGATCGTATACT" ;
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

# Verificar patrón en la cadena complementaria
if ($complemento =~ /$patron/) {
    print "El patrón '$patron' está presente en la cadena complementaria.\n";
} else {
    print "El patrón '$patron' no está presente en la cadena complementaria.\n";


exit;




