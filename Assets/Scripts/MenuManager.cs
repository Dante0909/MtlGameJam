using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{
    public void PlayGame(){
        SceneManager.LoadScene("SampleScene");
    }
    public void QuitGame(){
        Application.Quit();
        Debug.Log("Quit game");
    }
    public void ReturnMenu(){
        SceneManager.LoadScene("MainMenu");
    }
}
