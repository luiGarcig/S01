#include <iostream>
#include <vector>

float somarArray(float arr[], int tamanho){
    
    int soma = 0;
    for(int i = 0; i < tamanho; i++){
        soma = soma + arr[i];
    }
    
    return soma;
}
int main()
{
    int tamanho;
    std::cout << "Digite o tamanho: " << std::endl;
    std::cin >> tamanho;
    
    std::vector<float> arr(tamanho);

    std::cout << "Digite os valores do array: " << std::endl;
    for(int i = 0; i < tamanho; i++){
        std::cin >> arr[i];
    }
    
    float result = somarArray(arr.data(), tamanho);
    
    std::cout << "resultado: " << result;
    return 0;
}
