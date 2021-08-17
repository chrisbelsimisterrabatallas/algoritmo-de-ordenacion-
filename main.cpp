#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <windows.h>
#include <time.h>
using namespace std;


/*** Actividad:
1) Cree un projecto nuevo
2) Pegue estos algoritmos de ordenación en el proyecto creado
3) En el main cree su vector y haga las llamadas necesarias para verificar que los algoritmos funcionan
4) Subir y compartir en github hasta el domingo 15 de agosto/2021 (23:00 horas)
***/

//impresion del vector
void imprime_vector(int vector[], int tamanio)
{
    for (int i=0; i<tamanio; i++)
    {
        cout<<endl<<"Ingrese el elemento # " << (i+1)<<" : " <<vector[i];
    }
}

void  vector_aletorio(int num[], int tamanio)
{
    srand(time(NULL));
    for(int i = 0; i<tamanio; i++)
    {
        num[i] = 1+ rand () % 1000;
    }
}

void intercambiar(int &a, int &b)
{
    int aux=a;
    a=b;
    b=aux;
}

void ordenSecuencial(int vector[], int total)
{
    for(int i=0; i<total; i++)
    {
        for(int j=i+1; j<total; j++)
        {
            if(vector[i]>vector[j])
                intercambiar(vector[i], vector[j]);
        }
    }
}


void OrdenamientoQuicksort(int a[], int primerValor, int ultimoValor)
{
    int central, i, j, pivote;
    central= (primerValor+ultimoValor)/2; //Posicion central del arreglo
    pivote= a[central]; //Capturar el valor medio del arreglo
    i = primerValor;
    j = ultimoValor;

    do{
        //Separando en dos partes el arreglo
        while(a[i] < pivote) i++; //Separando los valores menores al pivote
        while(a[j] > pivote) j--; //Separando los valores mayores al pivote
        if(i<=j){
            int temporal;
            //Intercambio de valores
            temporal = a[i];
            a[i] = a[j];
            a[j] = temporal;
            i++;
            j--;
        }
    }while(i<=j);
    if (primerValor < j)
        OrdenamientoQuicksort(a, primerValor, j);
    if (i < ultimoValor)
        OrdenamientoQuicksort(a, i, ultimoValor);
}


void ordenShell(int a[], int n){
    int ints,i,aux;
    bool band;
    ints=n;
    while(ints>1){
        ints=ints/2;
        band=true;
        while(band==true){
            band=false;
            i=0;
            while((i+ints)<n){
                if(a[i]>a[i + ints]){
                    aux=a[i];
                    a[i]=a[i + ints];
                    a[i + ints]=aux;
                    band=true;
                }
                i++;
            }
        }
    }
}



void ordenShell2(int a[], int n){//optimizado
    int i,j,inc;
    int temp;
    for(inc=1;inc<n;inc=inc*3+1);
    while(inc>0){
        for(i=inc;i<n;i++){
            j=i;
            temp=a[i];
            while((j>=inc)&&(a[j-inc]>temp)){
                a[j]=a[j-inc];
                j=j-inc;
            }
            a[j]=temp;
        }
        inc=inc/2;
    }
}

void ordenBurbuja(int v[], int n){
    int i=0,j=0;
    int aux;
    for(i=1;i<n;i++)
        for(j=0;j<(n-i);j++){
            if(v[j]>v[j+1]){
                aux=v[j];
                v[j]=v[j+1];
                v[j+1]=aux;
            }
        }
}

void burbujaMejorado(int arreglo[], int tamano)
{
    int comparaciones = tamano;
    bool termino = false;
    for (int i = 0; i<(tamano-1) ; i++)
    {
        if (termino)
            break;
        termino = true;
        for (int j = 0; j<comparaciones-1 ; j++)
            if(arreglo[j] > arreglo[j+1])
            {
                intercambiar(arreglo[j],arreglo[j+1]);
                termino = false;
            }
        comparaciones--;
    }
}

int main() {
    int arreglo[10] = {30, 40, 11, 80, -5, 66, 19, 10, 22, 30};
    int n;
    const int MAX=5;
    int num[MAX];

    vector_aletorio(num, MAX); //llenar el vecto con numeros aletorios
    imprime_vector(num, MAX);

    cout<<endl<<endl<<"VECTOR ORIGINAL";
    imprime_vector(num, MAX);

    cout<<endl<<endl<<"VECTOR ORDENADO";
    ordenSecuencial(num, MAX);
    imprime_vector(num, MAX);

    cout<<endl<<endl<<"Arreglo Ordenado Metodo de Ordenamiento Quick Sort";
    int i, j, pivote;
    OrdenamientoQuicksort(arreglo, 0, 100);
    cout<<endl<<endl<<"pivote: "<<pivote<<endl<<"primero: "<<i<<endl<<"ultimo: "<<j<<endl;


    cout<<endl<<endl<<"Arreglo Ordenado Metodo de Ordenamiento Shell";
    ordenShell(arreglo, 10);

    cout<<endl<<endl<<"Arreglo Ordenado Metodo de Ordenamiento Shell2";
    ordenShell2(arreglo, 10);

    cout<<endl<<endl<<"Arreglo Ordenado Metodo de Burbuja";
    ordenBurbuja(arreglo,MAX);

    cout<<endl<<endl<<"Arreglo Ordenado Metodo de burbuja mejorado";
    burbujaMejorado(arreglo, MAX);

    return 0;
}
