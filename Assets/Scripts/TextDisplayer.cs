using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using TMPro;
using System;

public class TextDisplayer : MonoBehaviour
{
    [SerializeField] private GameObject canvasGameObject;
    [SerializeField] private TextMeshProUGUI m_textBox;
    [SerializeField] private TextMeshProUGUI m_characterTextBox;
    [SerializeField] private Button button;
    [Range(0.0f, 1.0f)]
    [SerializeField] private float m_timeDelay = 1f;
    private Story m_story = null;
    private List<Choice> m_currentChoices = null;
    private string m_currentText;
    private List<string> m_currentTags = null;
    private bool isCoroutineRunning = false;
    private Coroutine m_textCoroutine;
    private List<GameObject> backgrounds;
    private GameObject currentBackground;

    [SerializeField] private List<CharacterSpriteController> characterPrefabs;

    private Character m_currentChar = null;
    private Character joseph;
    private Character francois;
    private Character pierreEsprit;

    // Start is called before the first frame update
    void Start()
    {
        joseph = new Character("Joseph", characterPrefabs[0]);
        francois = new Character("François", characterPrefabs[1]);
        pierreEsprit = new Character("Pierre-Esprit", characterPrefabs[2]);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0))
        {
            if(m_story != null)
            {
                TryRefresh();
            }
        }
    }

    public void SetNewScript(StorySegment story)
    {
        ClearText();
        m_story = new Story(story.textAsset.text);
        backgrounds = story.backgrounds;

        m_currentChoices = new List<Choice>();
        m_currentTags = new List<string>();

        Action<string, int> GivePointsFunc = GivePoints;
        Action<string> ChangeSceneFunc = ChangeScene;
        Action<string> ChangeBackgroundFunc = ChangeBackground;
        Action<string, int> ChangeCharacterPositionFunc = ChangeCharacterPosition;
        Action<string, int> ChangeCharacterSpriteFunc = ChangerCharacterSprite;
        Action<string> ToggleCharacterOff = ToggleOff;
        
        m_story.BindExternalFunction("GivePoints", GivePointsFunc);
        m_story.BindExternalFunction("ChangeScene", ChangeSceneFunc);
        m_story.BindExternalFunction("ChangeBackground", ChangeBackgroundFunc);
        m_story.BindExternalFunction("CCP", ChangeCharacterPositionFunc);
        m_story.BindExternalFunction("CCS", ChangeCharacterSpriteFunc);
        m_story.BindExternalFunction("ToggleCharOFf", ToggleCharacterOff);
        TryRefresh();
    }

    public void ToggleOff(string characterName = null)
    {

    }
    public void ChangerCharacterSprite(string characterName, int spriteIndex)
    {
        Character c = GetCharacterFromTag(characterName);
        c.SetSprite(spriteIndex);
    }
    public void ChangeCharacterPosition(string characterName, int pos)
    {
        Character c = GetCharacterFromTag(characterName);
        c.SetPosition(pos);
    }
    public void ChangeBackground(string name)
    {
        GameObject b = backgrounds.Find(x => x.name == name);
        if (b is not null)
        {
            //Add fade in
            if(b != currentBackground)
            {
                Destroy(currentBackground);
                currentBackground = Instantiate(b);
            }
        }

    }
    public void ChangeScene(string sceneName)
    {
        GameManager.instance.LoadNextScene(sceneName);
    }
    public void GivePoints(string characterTag, int affectionPoints)
    {
        Character c = GetCharacterFromTag(characterTag);
        c.GiveAffection(affectionPoints);
    }

    string speakingCharacter = "";
    private void TryRefresh()
    {
        if (isCoroutineRunning)
        {
            StopCoroutine(m_textCoroutine);
            
            m_textBox.text = m_currentText;
            DisplayChoices();
            isCoroutineRunning = false;
            return;
        }

        if (m_story.canContinue)
        {
            if(m_currentChoices.Count == 0)
            {
                ClearText();
                
                m_currentText = m_story.Continue();
                if(m_currentText == "\n" && m_story.canContinue)
                {
                    m_currentText = m_story.Continue();
                }
                m_textCoroutine = StartCoroutine(TextUpdate(m_currentText));
            }

            m_currentTags = m_story.currentTags;

            for(int i = 0; i < m_currentTags.Count; ++i)
            {
                speakingCharacter = "";
                if(i == 0)
                {
                    string t = m_currentTags[i];

                    if (t == "null")
                    {
                        m_currentChar = null;
                        break;
                    }
                    else if (IsACharacterFromTag(t))
                    {
                        m_currentChar = GetCharacterFromTag(t);
                        speakingCharacter += m_currentChar.Name;
                    }
                    else
                    {
                        speakingCharacter += t;
                    }
                }
                else
                {
                    speakingCharacter += ", " + m_currentTags[i];
                }
            }
            m_currentChoices = m_story.currentChoices;
            m_characterTextBox.text = speakingCharacter;
        }
    }
    private void OnClickChoiceButton(Choice choice)
    {
        m_story.ChooseChoiceIndex(choice.index);
        ClearText();
        TryRefresh();
    }
    private IEnumerator TextUpdate(string text)
    {
        isCoroutineRunning = true;
        for (int i = 0; i < text.Length; ++i)
        {
            yield return new WaitForSecondsRealtime(m_timeDelay);
            
            if(text[i] == '<')
            {
                int endIndex = text.IndexOf('>', i);
                int length = endIndex - i;
                string t = text.Substring(i, length + 1);
                m_textBox.text += t;
                i += length;
            }
            else
            {
                m_textBox.text += text[i];
            }
        }
        isCoroutineRunning = false;
        DisplayChoices();
    }
    private void DisplayChoices()
    {
        foreach (Choice choice in m_currentChoices)
        {
            Button choiceButton = Instantiate(button);
            choiceButton.transform.SetParent(canvasGameObject.transform, false);

            // Gets the text from the button prefab
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = " " + (choice.index + 1) + ". " + choice.text;

            // Set listener
            choiceButton.onClick.AddListener(delegate {
                OnClickChoiceButton(choice);
            });
        }
    }
    private void ClearText()
    {
        if (isCoroutineRunning)
        {
            StopCoroutine(m_textCoroutine);
            isCoroutineRunning = false;
        }
        
        foreach(Transform t in canvasGameObject.transform)
        {
            Destroy(t.gameObject);
        }
        m_currentChoices?.Clear();
        m_textBox.text = "";
    }

    private bool IsACharacterFromTag(string tag)
    {
        return tag == "J" || tag == "Joseph" || tag == "F" || tag == "François" || tag == "P" || tag == "Pierre-Esprit";
    }

    private Character GetCharacterFromTag(string tag)
    {
        Character c = m_currentChar;
        if (tag == "J" || tag == "Joseph") c = joseph;
        else if (tag == "F" || tag == "François") c = francois;
        else if (tag == "P" || tag == "Pierre-Esprit") c = pierreEsprit;
        return c;
    }
}
