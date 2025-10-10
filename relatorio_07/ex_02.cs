
using System;
using System.Collections.Generic;

public class Pokemon
{
    protected string nome { get; set; }

    public Pokemon(string nome)
    {
        this.nome = nome;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"Pokémon {nome} atacou!");
        Console.WriteLine();
    }
}

public class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) {}

    public override void Atacar()
    {
        Console.WriteLine($"Pokémon {nome} lançou um bafo de fogo!");
        Console.WriteLine();
    }
}

public class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) {}

    public override void Atacar()
    {
        Console.WriteLine($"Pokémon {nome} lançou um jato de água!");
        Console.WriteLine();
    }
}

public class Ex02
{
    public static void Main(string[] args)
    {
        List<Pokemon> pokemons = new List<Pokemon>();

        pokemons.Add(new PokemonDeFogo("Charizard"));
        pokemons.Add(new PokemonDeAgua("Blastoise"));

        foreach (Pokemon pokemon in pokemons)
        {
            pokemon.Atacar();
        }
    }
}

