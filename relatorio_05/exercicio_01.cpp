#include <iostream>

int fibonacci(int n){
    
    if(n == 0){
        return 0;
    }else if(n == 1){
        return 1;
    }else{
        return fibonacci(n-1) + fibonacci(n-2);
    }
}
int main()
{
    int n;
    std::cout << "Digite um numero: " << std::endl;
    std::cin >> n;
    
    int result = fibonacci(n);
    
    std::cout << "resultado: " << result;
    return 0;
}
