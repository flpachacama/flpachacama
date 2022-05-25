#include <iostream>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>

char ingresarDato(char);
char *ingresarDatosEnteros(char *msg){
	char dato[10];
	char c;
	int i=0;
	printf("%s\n",msg);
	while((c=getch())!=13){
		if(c>='0' && c<='9'){
			printf("%c",c);
			dato[i++]=c;
		}
	}
	dato[i]='\0';
	return dato;
}

int main(int argc, char** argv) {
	char dato[10];
	int valor;
	strcpy(dato,ingresarDatosEnteros("Ingrese el valor numerico entero"));
	valor=atoi(dato);
	return 0;
}
