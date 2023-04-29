using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSpriteController : MonoBehaviour
{
    private const int PosXModifier = 6;
    private static readonly Vector3 LeftPos = new Vector3(-PosXModifier, 0, 0);
    private static readonly Vector3 RightPos = new Vector3(PosXModifier, 0, 0);
    private static readonly Vector3 OffScreen = new Vector3(PosXModifier * 5, 0, 0);
    private SpriteRenderer spriteRenderer;
    [SerializeField] private List<Sprite> sprites;
    public Pos Position { get; set; }
    public enum Pos
    {
        L = 0,
        C = 1,
        R = 2,
        O = 3
    }

    public void SetSprite(int spriteIndex)
    {
        spriteRenderer.sprite = sprites[spriteIndex];
    }
    public void SetPos(int posIndex)
    {
        Position = (Pos)posIndex;
        switch (Position)
        {
            case Pos.L:
                transform.position = LeftPos;
                break;
            case Pos.R:
                transform.position = RightPos;
                break;
            case Pos.C:
                transform.position = Vector3.zero;
                break;
            default:
                SetSprite(0);
                transform.position = OffScreen;
                break;
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }
    private void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }
}
