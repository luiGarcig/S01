#include <iostream>
#include <vector>

int main()
{
    int n;
    float soma = 0;
    std::cout << "Digite o numero de notas voce ira inserir: " << std::endl;
    std::cin >> n;
    
    
    for(int i = 0; i < n; i++){
        std::cout << "Digite a "<< (i+1) << "° nota: " << std::endl;
        float n;
        do{
            std::cin >> n;
        }while(n < 0 || n >10);
        soma += n;
    }
    
    float media = soma / n;
    
    if(media >= 7){
        std::cout << "Aluno aprovado, media: " << media << std::endl;
    }else{
        std::cout << "Aluno reprovado, media: " << media << std::endl;
    }
    
    return 0;
}
