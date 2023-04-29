using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character
{
    public string Name { get; private set; }
    public int Affection { get; private set; }

    private CharacterSpriteController character;

    public Character(string name, CharacterSpriteController csc)
    {
        Name = name;
        Affection = 0;
        character = csc;
    }
    public int GiveAffection(int affection)
    {
        Affection += affection;
        return Affection;
    }
    public void SetPosition(int posIndex)
    {
        character.SetPos(posIndex);
    }
    public void SetSprite(int spriteIndex)
    {
        character.SetSprite(spriteIndex);
    }
}
