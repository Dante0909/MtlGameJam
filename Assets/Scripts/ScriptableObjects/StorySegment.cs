using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "StorySegment", menuName = "StorySegments")]
public class StorySegment : ScriptableObject
{
    public int id;
    public string storyName;
    public TextAsset textAsset;
    public List<GameObject> backgrounds;
}
