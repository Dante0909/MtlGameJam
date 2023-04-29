EXTERNAL GivePoints(character, points)
EXTERNAL ChangeBackground(backgroundName)
EXTERNAL ChangeScene(sceneName)
EXTERNAL CCS(characterName, spriteIndex)
EXTERNAL CCP(characterName, pos) 

-> Tronc_commun
=== Tronc_commun ===
{ChangeBackground("outside")}
\*Inspire* Ça y est… Après un long voyage de presque trois mois sur L’Espérance, me voilà enfin en Nouvelle-France. # Marie-Marie
Ce fût dur. Plusieurs d’entre nous n’ont pas survécu.
À vrai dire, je suis la dernière. Toutes les autres Filles du Roy ont péri durant la traversée de l’Atlantique. Quant à ce que ça veut dire pour moi… 
Nous approchons de la terre, douce Marie-Marie. Faites-vous belle pour nos fiers colons. # Jean-Baptiste Colbert
{ChangeBackground("outside")}
L’Espérance a touché terre!! Les Filles du Roy arrivent! Dieu merci! # Pistolois
Citoyens de la Nouvelle-France, je vous salue! J’arrive de Paris dans le but de vous faire parvenir les plus belles femmes du pays pour vous marier. # Jean-Baptiste Colbert
Hourra!!! # Pistolois
Cependant, la mer a été rude, et le scorbut a frappé fort. Seule émergente de cette épreuve, je vous présente Marie-Marie, Fille du Roy. # Jean-Baptiste Colbert
 Bonjour à tous, c’est un plaisir d’être enfin parmi vous aujourd’hui. # Marie-Marie
 Bien le bonjour jeune femme! Je suis Joseph, fermier, bûcheron et homme à tout faire! Bienvenue à Trois-Pistoles! C’est un petit village, mais on sait bien y vivre! # Joseph
 Bienvenue, Marie-Marie. Je regrette d’apprendre que la traversée fût si difficile. Je m’appelle François, je suis marchand. Ma famille possède une compagnie de traite, que je dirige depuis la mort de mon frère aîné. J’attendais avec impatience L’Espérance afin d’envoyer des fourrures en France. # François
 Pierre-Esprit, coureur des bois. C’est terrible, autant de Filles du Roy perdues ainsi… # Pierre-Esprit
*   [Enchantée, Joseph! Je vous remercie pour l’accueil chaleureux.]
    {GivePoints("J",1)} ->after_first_choice
*   [J’apprécie le sentiment, François.]
    {GivePoints("F",1)} ->after_first_choice
*   [Si seulement vous saviez, Pierre-Esprit…]
    {GivePoints("P",1)} ->after_first_choice
= after_first_choice
Au vu de la situation actuelle, je décrète, sous l’autorité de Louis XIV, que la décision du futur époux de Marie-Marie revient à elle. Elle aura quelques jours pour faire connaissance avec vous avant de choisir un mari. # Jean-Baptiste Colbert
\*Se tournent vers Marie-Marie* # Pistolois
M-moi? # Marie-Marie


-> END

=== function GivePoints(character, points) ===
    ~ return

 === function ChangeBackground(backgroundName) ===
    ~ return

 === function ChangeScene(sceneName) ===
    ~ return
    
 === function CCS(characterName, spriteIndex) ===
    ~ return
    
 === function CCP(characterName, pos) ===
    ~ return