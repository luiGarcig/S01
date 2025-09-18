#include <iostream>
#include <vector>

double celsiusParaFehrenheit(double celsius){
    return (celsius *1.8) + 32;
}

double celsiusParaKelvin(double celsius){
    return celsius + 273.15;
}

int main()
{
    int n;
    do{
        double celsius;
        std::cout << "Digite uma das opções: " << std::endl;
        std::cout << "1 - converter para fahrenheit" << std::endl;
        std::cout << "2 - converter para kelvin: " << std::endl;
        std::cout << "3 - sair: " << std::endl;
        std::cin >> n;
        switch(n){
            case 1:{
                std::cout << "Digite o valor em celsius: " << std::endl;
                std::cin >> celsius;
                std::cout << "conversão: " << celsiusParaFehrenheit(celsius) << std::endl;
                break;
            }
            case 2:{
                std::cout << "Digite o valor em celsius: " << std::endl;
                std::cin >> celsius;
                std::cout << "conversão: " << celsiusParaKelvin(celsius) << std::endl;
                break;
            }
        }
    }while(n != 3);
    
    return 0;
}
