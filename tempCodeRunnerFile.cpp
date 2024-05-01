#include<iostream>
using namespace std;
int main (){
    int n,arr[10];
    cout<<"enter the element you want to insert in array "<<endl;
    cin>>n;
    for(int i=0;i<10;i++){
        arr[i]=n;
    }
    for(int i=0;i<10;i++){
        cout<<arr[i];
    }
}