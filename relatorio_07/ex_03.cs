
using System;
using System.Collections.Generic;

public class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        Nome = nome;
    }
}

public class Grimorio
{
    public List<Feitico> Feiticos { get; set; }

    public Grimorio()
    {
        Feiticos = new List<Feitico>();
    }
}

public class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        Nome = nome;
    }
}

public class Maga
{
    public Grimorio Grimorio { get; set; }
    public List<Ferramenta> Ferramentas { get; set; }

    public Maga()
    {
        Grimorio = new Grimorio();
        Ferramentas = new List<Ferramenta>();
    }

    public Maga(IEnumerable<Ferramenta> ferramentas) : this()
    {
        Ferramentas.AddRange(ferramentas);
    }
}

public class Ex03
{
    public static void Main(string[] args)
    {
        var ferramentas = new List<Ferramenta>();

        ferramentas.Add(new Ferramenta("Capacete"));
        ferramentas.Add(new Ferramenta("Lanterna"));

        Maga frieren = new Maga(ferramentas);

        frieren.Grimorio.Feiticos.Add(new Feitico("Bola de Fogo"));
        frieren.Grimorio.Feiticos.Add(new Feitico("Escudo Mágico"));

        foreach (var ferramenta in frieren.Ferramentas)
        {
            Console.WriteLine($"Ferramenta: {ferramenta.Nome}");
        }

    }
}


