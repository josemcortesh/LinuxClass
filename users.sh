#!/usr/bin/env bash
#valida que un usuario este conectado
usuarios=$( who | cut -d ' ' -f 1 | uniq )

#busca el ultima vez que se logueo el usuario aparte de la sesion en curso
#solo funciona con usuario de tamaño de 8 caracters
for i in $(echo ${usuarios}); do
	output=$( last | grep ${i} | grep -v logged | head -1 )
	echo ${output}
done
