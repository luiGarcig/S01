
using System;
using System.Collections.Generic;

public class MonstroSombrio
{
    protected string nome { get; set; }

    public MonstroSombrio(string nome)
    {
        this.nome = nome;
    }
    
    public virtual void mover()
    {
        Console.WriteLine($"funcao monstro\n");
    }
}

public class Zumbi: MonstroSombrio
{
    public Zumbi(string nome) : base(nome){}

    public override void mover(){
        Console.WriteLine($"funcao dos {nome}\n");
    }
}

public class Espectro: MonstroSombrio
{
    public Espectro(string nome) : base(nome){}

    public override void mover(){
        Console.WriteLine($"funcao dos {nome}\n");
    }
    
}


public class Ex04
{
    public static void Main(string[] args)
    {
        var monstros = new List<MonstroSombrio>();
    
        monstros.Add(new Zumbi("zumbi"));
        monstros.Add(new Espectro("espectro"));
        
        foreach(var monstro in monstros){
            monstro.mover();
        }
    


    }
}


