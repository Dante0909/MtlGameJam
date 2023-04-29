using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{
    [SerializeField] private TextDisplayer m_textDisplayer = null;
    public static GameManager instance = null;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }

    [SerializeField] private List<StorySegment> storySegments;
    // Start is called before the first frame update
    void Start()
    {
        LoadNextScene("TroncCommun");
    }

    public void LoadNextScene(string sceneName)
    {
        StorySegment ss = storySegments.Find(x => x.storyName == sceneName);
        m_textDisplayer?.SetNewScript(ss);
    }
    // Update is called once per frame
    void Update()
    {
        
    }
}
