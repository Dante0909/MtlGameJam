EXTERNAL ChangeBackground(backgroundName)
EXTERNAL ChangeScene(sceneName)
EXTERNAL CCS(characterName, spriteIndex)
EXTERNAL CCP(characterName, pos)
EXTERNAL Francois()
EXTERNAL MainMenu()
VAR J_points = 0
VAR F_points = 0
VAR P_points = 0

-> Tronc_commun
=== Tronc_commun ===
{ResetPoints()}
{ChangeBackground("boat")}
\*Inspire* Ça y est... Après un long voyage de presque trois mois sur <i>L’Espérance</i>, me voilà enfin en Nouvelle-France. # Marie-Marie
Ce fût dur. Plusieurs d’entre nous n’ont pas survécu.
À vrai dire, je suis la dernière. Toutes les autres Filles du Roy ont péri durant la traversée de l’Atlantique. Quant à ce que ça veut dire pour moi...
Nous approchons de la terre, douce Marie-Marie. Faites-vous belle pour nos fiers colons. # Jean-Baptiste Colbert
{ChangeBackground("port")}
<i>L’Espérance</i> a touché terre!! Les Filles du Roy arrivent! Dieu merci! # Pistolois
Citoyens de la Nouvelle-France, je vous salue! J’arrive de Paris dans le but de vous faire parvenir les plus belles femmes du pays pour vous marier. # Jean-Baptiste Colbert
Hourra!!! # Pistolois
Cependant, la mer a été rude, et le scorbut a frappé fort. Seule émergente de cette épreuve, je vous présente Marie-Marie, Fille du Roy. # Jean-Baptiste Colbert
 Bonjour à tous, c’est un plaisir d’être enfin parmi vous aujourd’hui. # Marie-Marie
{CCP("J",0)}
{CCS("J",1)}
 Bien le bonjour jeune femme! Je suis Joseph, fermier, bûcheron et homme à tout faire! Bienvenue à Trois-Pistoles! C’est un petit village, mais on sait bien y vivre! # Joseph
{CCP("F",1)}
 Bienvenue, Marie-Marie. Je regrette d’apprendre que la traversée fût si difficile. Je m’appelle François, je suis marchand. Ma famille possède une compagnie de traite, que je dirige depuis la mort de mon frère aîné. J’attendais avec impatience L’Espérance afin d’envoyer des fourrures en France. # François
{CCP("P",2)}
{CCS("J",1)}
 Pierre-Esprit, coureur des bois. C’est terrible, une telle perte... # Pierre-Esprit
*   [Enchantée, Joseph! Je vous remercie pour l’accueil chaleureux.]
    {GivePoints("J",1)} ->after_first_choice
*   [J’apprécie le sentiment, François.]
    {GivePoints("F",1)} ->after_first_choice
*   [Si seulement vous saviez, Pierre-Esprit...]
    {GivePoints("P",1)} ->after_first_choice
= after_first_choice
{CCS("J",0)}
{CCS("P",0)}
Au vu de la situation actuelle, je décrète, sous l’autorité de Louis XIV, que la décision du futur époux de Marie-Marie revient à elle. Elle aura quelques jours pour faire connaissance avec vous avant de choisir un mari. # Jean-Baptiste Colbert
\*Se tournent vers Marie-Marie* # Pistolois
M-moi? # Marie-Marie
{CCS("J",1)}
Ça alors, c’est du jamais vu! # Joseph
{CCS("F",1)}
Héhé... Intéressant! # François
{CCS("P",3)}
Mais enfin, ça n’a pas de sens! # Pierre-Esprit
Et qui êtes-vous pour contredire l’autorité du Roy? # François
Grrrrrr... # Pierre-Esprit
{CCS("J",3)}
Enfin, tous, elle vient à peine d’arriver, attendez un peu avant de vous disputer! Nous tenons une fête ce soir à la maison du village pour célébrer, tu nous rejoindras, j’espère? # Joseph
Avec Plaisir! #Marie-Marie
Il me fait plaisir de vous voir prendre votre place dans ce village, chère. Je resterai quelques jours avant de repartir pour la France. J’espère avoir la chance de vous voir prendre votre décision! # Jean-Baptiste Colbert
{ChangeBackground("town_hall")}
{CCP("J",1)}
{CCP("P",0)}
Wow, tout le village est là! # Marie-Marie
{CCS("J",3)}
 C’est pour te rencontrer qu’ils sont venus, ma belle! Ce n’est pas tous les jours qu’on reçoit des Filles du Roy à Trois-Pistoles. # Joseph
 Nous sommes tous ici pour te voir. # Pierre-Esprit
 Marie-Marie! Marie-Marie! Viens danser avec nous! # Pistolois
 Très bien, j’arrive! # Marie-Marie
 {ChangeBackground("town_hall")}
 <i>Plus tard...</i> # null
{CCP("J",1)}
 Ah, je suis épuisée! Après un tel voyage, je n’ai pas la force de danser autant. # Marie-Marie
 {CCS("J",1)}
 Héhé, tu es populaire à ce que je vois! Tu apprécies la soirée malgré tout, j’espère? # Joseph
 Oh oui, c’est très agréable d’avoir autant d’attention! C’est toi qui as joué de la cuillère toute la soirée, n’est-ce pas? # Marie-Marie
 {CCS("J",0)}
 Yep! J’en joue depuis que je suis tout petit, c’est mon père qui m’a appris. Tu aimes? # Joseph
 Oui, c’est magnifique! Ça met vraiment dans l’ambiance. Il n’y a pas vraiment d’instruments de musique en Nouvelle-France, n’est-ce pas? # Marie-Marie
 Exact, alors on fait avec ce qu’on a. # Joseph
 *  [C’est tout aussi beau que la musique qu’on entend en France.]
    {CCS("J",1)}
    Ça me fait plaisir de l’entendre, parce que ce n’est pas la dernière fois que j’en jouerai! # Joseph
    Je l’espère! # Marie-Marie
    {GivePoints("J",1)}
    ->after_second_choice
*   [Je suis sûre que tu aimerais avoir un vrai instrument...]
    {CCS("J",4)}
    Pas du tout, j’adore jouer de la cuillère, c’est simple et complexe à la fois. Je ne sais pas jouer d’un autre instrument de toute façon! # Joseph
    Je comprends, tu as raison. # Marie-Marie
    ->after_second_choice
= after_second_choice
Je vais retourner faire un tour. À plus tard, Joseph! # Marie-Marie
{ChangeBackground("town_hall")}
Aye! # Marie-Marie
{CCP("P",1)}
{CCS("P",3)}
Attention où tu marches, personne ici ne voudrait que tu te blesses. # Pierre-Esprit
Merci de m’avoir rattrapée, Pierre-Esprit. Je ne regardais pas où j’allais. # Marie-Marie
{CCS("P",0)}
J’ai bien vu ça. Après cette longue journée, tu n’as plus d’énergie? # Pierre-Esprit
J’avoue que je suis plutôt épuisée, mais je ne peux pas quitter cette fête tenue pour moi. # Marie-Marie
{CCS("P",4)}
Oh, tu sais, on en organise assez souvent. # Pierre-Esprit
Oh, je vois... # Marie-Marie
{CCS("P",0)}
Mais j’avoue que c’est rarement aussi vivant. Veux-tu de l’eau-de-vie? # Pierre-Esprit
*   [Je peux bien goûter un petit peu.]
    {CCS("P",1)}
    Tu n’as jamais essayé? Ça risque d’être un peu fort pour toi alors. # Pierre-Esprit
     \*Tousse* *Tousse* Ça chauffe! # Marie-Marie
     Haha, il faut s’habituer! Tu finiras par l’apprécier. # Pierre-Esprit
     {GivePoints("P",1)} ->after_third_choice
*   [Non merci, je ne bois pas.]
    {CCS("P",0)}
    Bien dommage, tu manques quelque chose! # Pierre-Esprit
    ->after_third_choice
=after_third_choice
Je vais te laisser profiter de ta bouteille, alors. # Marie-Marie
{ChangeBackground("town_hall")}
{CCP("F",1)}
Bonsoir, Marie-Marie. # François
Oh, bonsoir François. Que lis-tu? # Marie-Marie
C’est un roman médiéval intitulé <i>Le Roman de Silence</i>. Ça raconte l’histoire d’une femme que la famille élève en garçon pour conserver son héritage.
Je n’en ai jamais entendu parler. # Marie-Marie
C’est un livre très rare. Je l’ai fait venir de France, et il s’agit d’un des seuls exemplaires existants. # François
*   [C’est si impressionnant que tu lises de tels livres!]
    {CCS("F",3)}
    Oh, ce n’est rien de spécial pour quelqu’un de mon milieu. Il y a peu de livres en Nouvelle-France, mais c’est un passe-temps assez commun chez les gens plus nantis. # François
    Tout de même! Il ne doit pas y avoir beaucoup de lecteurs à Trois-Pistoles. # Marie-Marie
    En effet, c’est un petit village. J’aimais beaucoup discuter de littérature avec... mon frère... avant son décès. # François
    Je vois. # Marie-Marie
    ->after_fourth_choice
*   [Ça a l’air très intéressant, j’aimerais pouvoir lire aussi.]
    {CCS("F",1)}
    Je pourrais t’apprendre, si tu veux. Je suis un homme occupé, mais c'est avec plaisir que je t'introduirais au monde de la littérature. Apprendre à lire prend du temps, mais ça en vaut la peine, je te le garantis. # François
    J’adorerais. Ça doit être difficile d’être une des seules personnes à savoir lire dans tout le village. # Marie-Marie
    {CCS("F",0)}
    ...Ça l’est, parfois. C’est mon frère qui m’a appris, et c’est lui qui m’a fait découvrir la magie de la lecture. Il me manque terriblement. # François
    Je suis désolée, ça doit être difficile de perdre quelqu’un de si cher. # Marie-Marie
    {CCS("F",2)}
    J’apprécie le sentiment. # François
    {GivePoints("P",1)}
    ->after_fourth_choice
=after_fourth_choice
{ChangeBackground("town_hall")}
{CCP("J",1)}
Chers amis, il est l’heure de la danse! # Joseph
Hourra!! # Pistolois
{CCS("J",3)}
Et toi, Marie-Marie? Avec qui danseras-tu? # Joseph
{CCP("F",0)}
{CCS("F",1)}
Je me demande... # François
{CCP("P",2)}
Choisis bien. # Pierre-Esprit
*   [J’adorerais danser avec toi, Joseph.]
    {CCS("J",1)}
    {CCS("F",3)}
    {CCS("P",4)}
    J’adorerais ça aussi! # Joseph
    {GivePoints("J",2)}
    ->after_dance_choice
*   [François, m’accorderez-vous cette danse?]
    {CCS("J",4)}
    {CCS("F",2)}
    {CCS("P",4)}
    Avec plaisir, ma chère. # François
    {GivePoints("F",2)}
    ->after_dance_choice
*   [Pierre-Esprit, apprends-moi comment bien faire.]
    {CCS("J",4)}
    {CCS("F",3)}
    {CCS("P",0)}
    Je vais te montrer ce qu’est une vraie danse. # Pierre-Esprit
    {GivePoints("P",2)}
    ->after_dance_choice
    
=after_dance_choice
{ChangeBackground("town_hall")}
<i>Et ils furent le centre de l’attention pour le reste de la soirée.</i> # null
 \*Baille* Il se fait tard, je pense que je vais aller me coucher. Merci tout le monde pour cette agréable soirée. # Marie-Marie
 {CCP("J",0)}
 Bonne nuit, j’espère que tu t’es bien amusée. # Joseph
 {CCP("P",1)}
 Bonne nuit. # Pierre-Esprit
 {CCP("F",2)}
 Dors bien. # François
 Bonne nuit, Marie-Marie! # Pistolois
 -> Choix
 
=== Choix ===
{ChangeBackground("port")}
{Choix == 1:
    Ma première journée complète à Trois-Pistoles... Je vais bientôt devoir choisir un mari, je dois donc apprendre à connaître les candidats. Aujourd’hui, je vais passer du temps avec... # Marie-Marie
}
{Choix == 2:
    Un nouveau jour se lève. Aujourd’hui, je vais aller voir... # Marie-Marie
}
{Choix == 3:
    Il ne me reste qu’un candidat à rencontrer. Je vais retrouver... # Marie-Marie
}
{Choix > 3:
    ->apres_activites
}

*   [Joseph]
    ->activite_joseph
*   [François]
    ->activite_francois
*   [Pierre-Esprit]
    ->activite_pierre_esprit

->Choix

=== activite_joseph ===
{CCP("J",1)}
Bonsoir Joseph, comment s'est passée ta journée ? # Marie-Marie
Bonsoir Marie-Marie. Elle a été difficile comme d'habitude, mais j'ai réussi à couper suffisamment de bois pour le prochain hiver. # Joseph
C'est formidable. Je suis venu te voir parce que je voulais prendre une marche et j'ai pensé que tu pourrais m'accompagner. # Marie-Marie
{CCS("J",3)}
Bien sûr, je serais ravi de t'accompagner. Passons par mon champ de blé d'Inde pour aller à la forêt. # Joseph
{ChangeBackground("foret")}
{CCP("J",1)}
{CCS("J",1)}
Tu sais, Marie-Marie, nous nous connaissons depuis peu, mais je t’apprécie et aime passer du temps avec toi. Tu es une personne formidable. # Joseph
Merci, Joseph, toi aussi tu es un homme incroyable. J'apprécie beaucoup ta présence à mes côtés. # Marie-Marie
{CCS("J",3)}
Ah! Voilà! C'est ici que je fais pousser du blé d'Inde. # Joseph
C'est vraiment impressionnant. J'adore la nature, mais je n'ai aucune expérience en agriculture.# Marie-Marie
{CCS("J",0)}
Ce n'est pas grave. Il y a beaucoup à apprendre, mais c'est une vie simple et satisfaisante. # Joseph
* [Ça doit être agréable comme vie.]
    {CCS("J",3)}
    Ça oui. J'aime le calme de la campagne, loin des maisons et du port. # Joseph
{GivePoints("J",1)}->choice_Joseph_activity_one
*[Tu dois t'ennuyer sans voisins.]
    {CCS("J",4)}
    En fait, j’aime le calme de la campagne, loin du bruit et du chaos du port. # Joseph
{GivePoints("J",0)}->choice_Joseph_activity_one
=choice_Joseph_activity_one
{CCS("J",2)}
<i>Leurs mains se touchent par accident.</i> # null
Oh! # Marie-Marie
... *Rougit*
<i>(Quand nos mains se sont touchées, j'ai ressenti un frisson... Je me demande s’il a ressenti la même chose.)</i>
Oh, pardon!... Je suis vraiment désolé... # Joseph
Non non! Je t’assure, c’est sans soucis! *Rougit* # Marie-Marie
\*Continuent à marcher comme si rien ne s’était passé* # Joseph # Marie-Marie
Tes mains sont bien abîmées, Joseph. C'est dur d'être fermier, n'est-ce pas ? # Marie-Marie
{CCS("J",0)}
Oui, ça peut être difficile. Mais j'aime le travail manuel et la nature. # Joseph
*[Tu dois aimer te retrouver dans la forêt pour bûcher.]
{CCS("J",4)}
Ça m’attriste de devoir couper des arbres l’hiver, mais c’est le seul métier que je peux faire quand il fait froid... # Joseph
{GivePoints("J",0)}->choice_Joseph_activity_two
*[Oh, ça doit être difficile, mais gratifiant de cultiver la terre.]
{CCS("J",1)}
Oui, voir mes plantes grandir est l’une des choses que j’apprécie le plus. # Joseph
{GivePoints("J",1)}->choice_Joseph_activity_two
=choice_Joseph_activity_two
<i>Une froide brise se fait ressentir alors que le soleil commence à descendre.</i> # null 
On devrait peut-être retourner au village, il commence à se faire tard. # Marie-Marie
{CCS("J",2)}
Oh! C’est vrai, je n’ai pas vu le temps passer. #Joseph
\*Commencent à marcher en silence* # Joseph #Marie-Marie
... #Marie-Marie
\*se prennent la main en silence* #Joseph # Marie-Marie
... # Joseph
\*Continuent à marcher en silence* # Joseph # Marie-Marie
<i>(Je suis triste que notre promenade soit terminée. J'ai apprécié chaque moment passé avec Joseph.)</i> # Marie-Marie
->Choix

=== activite_francois ===
\*Toque toque* # Marie-Marie
...
François? *Toque toque*
{CCP("F",1)}
Oh, Marie-Marie! Pardon de t’avoir fait attendre, j’étais absorbé par mon travail. Entre, je vais te servir du thé pour te réchauffer. # François
Merci, c’est très apprécié! Je viens tout juste d’arriver, ne t’inquiète pas. # Marie-Marie
{ChangeBackground("bureau")}
{CCP("F",1)}
Je suis soulagé de l’entendre. Je suis désolé de ne pas pouvoir te proposer une activité plus intéressante, mais je ne peux pas me permettre de quitter mon bureau. # François
Je ne peux qu’imaginer à quel point c’est difficile de gérer une compagnie seul. # Marie-Marie
Ça l’est, mais ça vient avec ses avantages. Sans cela, je ne pourrais pas me permettre mon mode de vie. # François
Je suppose que ça doit être dur de s’en séparer. Que dois-tu faire pour ton travail?# Marie-Marie
Tant de choses. D’abord, je dois m’assurer que les coureurs des bois fassent bien leur travail et ramènent des fourrures de qualité. Je dois ensuite les traiter afin de les rendre propres à la vente. Il faut aussi que je marchande avec les navigateurs qui se rendent en France. Finalement, il faut que je m’occupe de gérer la comptabilité de la compagnie.# François
Ça doit demander beaucoup de temps! # Marie-Marie
*[C’est dommage que tu doives en faire autant seul.]
{CCS("F",3)}
Ça ne me dérange pas, cela me fait me sentir utile. Ce n’est pas comme si j’avais autre chose à faire, de toute façon.# François
{GivePoints("F",0)}->choice_Francois_activity_one
*[C’est impressionnant tout ce que tu arrives à faire.]
{CCS("F",1)}
Merci, je travaille fort pour maintenir la compagnie. C’est ma plus grande fierté. J’espère un jour avoir un descendant à qui je pourrai la léguer. # François
\*Rougit* ... # Marie-Marie
{GivePoints("F",1)}->choice_Francois_activity_one
=choice_Francois_activity_one
{CCS("F",0)}
Le thé est prêt, voilà ta tasse. # François
Merci! # Marie-Marie
! Il est délicieux!
Je suis ravi de l’entendre. J’espère que tu ne regrettes pas trop le voyage? # François
Je suis bien heureuse qu’il soit enfin terminé, mais je n’ai pas laissé grand-chose en France. Ma famille était pauvre et mon père n’a pas hésité à prendre la dot pour m’envoyer ici.# Marie-Marie
{CCS("F",1)}
C’est souvent le cas. Je suis sûre que tu seras bien traitée ici, peu importe ton choix. *Mets sa main sur celle de Marie-Marie* # François
{CCS("F",2)}
\*Rougit* Oh! # Marie-Marie
*[*Laisser sa main*]
Tu sais, Marie-Marie, tu es une femme intelligente. On se connaît depuis peu, mais j’apprécie particulièrement ta présence. J’espère qu’un jour, il n’y aura plus de secrets entre nous. # François
Oh, merci François! Je suis touchée. Je l’espère aussi. # Marie-Marie
 Merci de me tenir compagnie aujourd’hui.# François
{GivePoints("F",1)}->choice_Francois_activity_two
*[*Retirer sa main*]
{CCS("F",3)}
Pardonne-moi, c’était impoli, je n’aurais pas dû. # François
Ce n’est pas cela, j’ai juste été surprise... # Marie-Marie
Non, je comprends. Arriver dans un nouveau village et être entourée d’inconnus qui cherchent à s’attirer tes faveurs... Ça ne peut pas être facile. # François
{GivePoints("F",0)}->choice_Francois_activity_two
=choice_Francois_activity_two
{CCS("F",0)}
J’espère que ça ne te dérange pas, mais je dois continuer à travailler.# François
Je comprends. Que fais-tu aujourd’hui? # Marie-Marie
Je fais les comptes de la compagnie, regarde. # François
Tant de chiffres! Qu’est-ce que ça représente? # Marie-Marie
{CCS("F",1)}
Ce sont les dépenses et les revenus. Ici, par exemple, ce sont les salaires des coureurs des bois. Ici, l’argent que j’ai fait en vendant mes fourrures aux navigateurs français. Tu vois que ce montant est plus grand, ça veut dire que je gagne de l’argent.# François
Et tu comprends tout ça? # Marie-Marie
Ça m’a pris du temps à apprendre, mais oui. Je suis sûr qu’avec assez de temps, tu saurais le faire aussi. # François
J’arrive à peine à l’imaginer! Il se fait tard et tu sembles bien occupé, je te laisse tranquille. À la prochaine, François! # Marie-Marie
{CCS("F",0)}
Bonne fin de journée, Marie-Marie. # François
->Choix

=== activite_pierre_esprit ===
{ChangeBackground("foret_deep")}
{CCP("P",1)}
Bonjour, Pierre-Esprit! J’ai bien hâte de- # Marie-Marie
Prête pour notre partie de chasse? # Pierre-Esprit
Oui! Justem- # Marie-Marie
Je vais te montrer comment faire! Tu n’auras qu'à faire comme moi, Marie-Marie. Allez, aucun temps à perdre, j’ai terminé de me préparer. Allons-y! # Pierre-Esprit
\*Essoufflée* Attends, Pierre-Esprit, je ne peux pas suivre ton- ton rythme. # Marie-Marie
\*Chuchote agressivement* On ne peut pas ralentir maintenant! on va manquer notre chance. # Pierre-Esprit
*[*Chuchote* D’accord, je ferai de mon mieux.]
\*Hochement de tête* Parfait! Continuons. # Pierre-Esprit
{GivePoints("P",1)}->choice_Pierre_Esprit_activity_one
*[J’ai dit de m'attendre, Pierre-Esprit!]
{CCS("P",3)}
Tu devrais faire un peu d'exercice avant de venir chasser, Marie-Marie *Soupir* Je ne peux pas ralentir pour toi. # Pierre-Esprit
\*Essoufflée* D’accord, je ferai de mon mieux... # Marie-Marie
{GivePoints("P",0)}->choice_Pierre_Esprit_activity_one
=choice_Pierre_Esprit_activity_one
{CCS("P",0)}
Allons par là! Je connais une cachette parfaite pour deux. # Pierre-Esprit
Nous y voilà. Installons-nous dans ce creux derrière ces buissons. Nous serons à l'abri et bien camouflés ici.
Mais... On ne rentrera jamais tous les deux dans cette cachette!? # Marie-Marie
Que oui nous rentrons! # Pierre-Esprit
Euh... d’accord... # Marie-Marie
\*Chuchote* Voilà. Maintenant, regarde par là. Il y a un appât près des trois épinettes. # Pierre-Esprit
\*Regardent attentivement en silence en direction des épinettes* # Pierre-Esprit # Marie-Marie
{CCP("P",5)}
<i>Quelques heures de silence plus tard...</i> #null 
<i>(Le vent fait bruire les feuilles et les oiseaux chantent. Je me sens en paix, comme si la nature elle-même me rassurait. À moins que ce soit la présence de Pierre-Esprit?)</i> # Marie-Marie
\*Rougit* <i>(Mais non voyons. J'aime simplement être ici, en harmonie avec la nature de la Nouvelle-Fran-)</i>
{CCP("P",1)}
Ah! Regarde, il y a un cerf là-bas... # Pierre-Esprit
{CCS("P",3)}
Merde, on n’a pas l’angle pour tirer. Je dois aller derrière ce sapin rapidement!
{CCP("P",5)}
\*Splat!* #null 
Oh mon dieu, Pierre-Esprit! Est-ce que ça va? # Marie-Marie
J’arrive!
\*Splat!*
AYE !! # Pierre-Esprit # Marie-Marie
Ah c@/!$$3! Il s'est enfui! # Pierre-Esprit
Ce n’est pas grave, ça arrive Pier- # Marie-Marie
 ... # Pierre-Esprit
 ... # Marie-Marie
 Mais relève-toi! je peux sûrement le rattraper. # Pierre-Esprit
 \*Rougit* ... # Marie-Marie
 Oui oui, je me relève tout de suite!
 {CCP("P", 1)}
 {CCS("P",2)}
 Ah! Il est trop loin maintenant... Pas de chance à la chasse aujourd’hui...  # Pierre-Esprit
 Mais... Qu’est-ce que l’on va faire, alors? # Marie-Marie
 {CCS("P",4)}
 Retournons chez moi, j’ai une idée... Mais garde ce qu’on a fait aujourd’hui un secret. Quelle honte... # Pierre-Esprit
{ChangeBackground("maison_vetement")}
 {CCP("P",1)}
 {CCS("P",2)}
 Voilà ce que je voulais te montrer. Mais souviens-toi! C’est un secret.
 Wooooow! Pierre-Esprit, c’est toi qui as fait tout ça? # Marie-Marie
 {CCS("P",4)}
 Hélas, oui... J’adore ça, faire des vêtements chics et des chapeaux en peau de castor. # Pierre-Esprit
 {CCS("P",2)}
 En fait, je n’aime pas trop la chasse. J’apprécie l'ambiance de la nature, mais c’est long et on revient toujours sale. Je préfère créer mes propres vêtements pour m’exprimer et, dans ces vêtements de chasseur, je me sens obligé d’agir ainsi...
*[Mais ce n’est pas une raison d’agir ainsi voyons!]
{CCS("P",4)}
... # Pierre-Esprit
{GivePoints("P",0)}->choice_Pierre_Esprit_activity_two
*[Wow, Pierre-Esprit, je suis impressionnée!]
 Je ne m’attendais pas à ce que tu te confies à moi comme ça... Et que tu sois un si bon artisan. Ton secret est en sécurité avec moi. # Marie-Marie
 {CCS("P",2)}
... # Pierre-Esprit
{GivePoints("P",1)}->choice_Pierre_Esprit_activity_two
=choice_Pierre_Esprit_activity_two
Il commence à se faire tard, je dois rentrer. Merci pour la journée! # Marie-Marie
->Choix

=== apres_activites ===
{ChangeBackground("port")}
J'ai pu passer du temps avec les trois hommes... Mais je ne suis toujours pas  certaine qui choisir comme époux. Je me demande avec qui je vais passer du temps aujourd'hui. # Marie-Marie
Marie-Marie! Je vous cherchais justement. # Jean-Baptiste Colbert
Sir Colbert! N'êtes-vous pas reparti en France? # Marie-Marie
Non, je repars plus tard aujourd'hui. C'est pourquoi je voulais avoir votre réponse officielle quant au choix de votre époux. # Jean-Baptiste Colbert
J-je dois choisir maintenant? Mais enfin, j'ai à peine eu le temps de les connaître! # Marie-Marie
Soyez heureuse d'avoir la liberté de choisir. Je réunirai le village dans une heure, assurez-vous d'avoir pris votre décision d'ici là. # Jean-Baptiste Colbert
Je n'y crois pas... Je dois choisir d'ici UNE HEURE!? # Marie-Marie
{ChangeBackground("port")}
<i>Une heure plus tard...</i> # null
Pistolois, votre accueil fût chaleureux et je vous en remercie. Je repars pour la France sous peu, cependant je dois m'assurer que votre Fille du Roy s'est bien mariée. C'est pourquoi notre chère Marie-Marie vous annoncera désormais l'identité de son futur époux. # Jean-Baptiste Colbert
B-Bonjour. Mon futur époux sera... # Marie-Marie

*   [Joseph]
    {CCP("J",1)}
    {J_points > 3:
        {CCS("J",1)}
        Je n'y crois pas! J'accepte avec plaisir! # Joseph
        ->joseph_route
    - else:
        {CCS("J",5)}
        Oh! Hahahah... ok alors... # Joseph
        -> bad_end
    }
*   [François]
    {CCP("F",1)}
    {F_points > 3:
        {CCS("F",2)}
        Je suis ravi de l'apprendre. # François
        ->francois_route
    - else:
        {CCS("F",3)}
        Je... Je vois. Très bien. C’est votre décision après tout. # François
        -> bad_end
    }
*   [Pierre-Esprit]
    {CCP("P",1)}
    {P_points > 3:
        {CCS("P",2)}
        Héhé, évidemment, c'est le meilleur choix! # Pierre-Esprit
        ->pierre_esprit_route
    - else:
        {CCS("P",4)}
        Ah! Bien sûr que j’allais être choisi ! *marmonne* J’aurais pu avoir mieux... # Pierre-Esprit
        -> bad_end
    }

=== bad_end ===
{ChangeBackground("black")}
Vous avez choisi un mari qui est incompatible avec vous. Votre mariage n’est pas réussi... vous vivez malheureux ensemble et n’avez pas beaucoup d'enfants. # null

Est-il possible pour Marie-Marie d'être plus heureuse?
{MainMenu()}

->END

=== joseph_route ===
{ChangeBackground("black")}
<i>Quelques mois plus tard...</i> # null
{ChangeBackground("cabin")}
{CCP("J",1)}
Chérie... L'hiver approche. Je vais devoir partir au camp pour l'hiver. # Joseph
Joseph, non! Que vais-je faire ici toute seule tout l'hiver? Amène-moi avec toi! # Marie-Marie
{CCS("J",4)}
Enfin, ma douce, tu sais bien que c'est un travail d'homme de bûcher! # Joseph
Mais vous devez bien manger, n'est-ce pas? Je cuisinerai! # Marie-Marie
{CCS("J",2)}
Marie-Marie... Je ne pensais pas que tu t'ennuierais autant de moi. # Joseph
{CCS("J",1)}
Ça me ferait plaisir que tu m'accompagnes dans ce cas.
Oh, merci, Joseph! # Marie-Marie
{ChangeBackground("cabin")}
<i> Au camp de bûcherons, pendant l'hiver... </i> # null
{CCP("J",1)}
{CCS("J",5)}
Tout le monde, je vous présente Marie-Marie qui cuisinera pour nous cet hiver... C'est ma femme. # Joseph
Wow, le petit Joseph s'est trouvé une femme! J'en tombe de ma chaise! # Bûcheron
S'il-vous-plait, vous me gênez... # Joseph
J'aurais jamais cru voir ça arriver! Si il a réussit, je peux pas croire que je m'en trouverai pas une aussi! # Bûcheron
{CCS("J",2)}
Joseph est un homme impressionnant et sensible! # Marie-Marie
C'est moi qui ait choisi de l'épouser, et je n'ai jamais regretté mon choix!
Peut-être que si vous étiez un peu plus agréables, vous seriez déjà mariés!
{CCS("J",5)}
Marie-Marie, tu n'as pas à en faire tout un plat... # Joseph
Je ne les laisserai pas se moquer de toi ainsi! # Marie-Marie
C'est décidé, si j'entend quiconque se moquer de mon mari, il n'aura rien à manger ce jour-là!
... # Bûcherons
Elle a des crocs, cette femme... # Bûcheron
Marie-Marie, revient! # Joseph
{ChangeBackground("bedroom")}
\*Sanglote* # Marie-Marie
J'aurais dû rester à Trois-Pistoles...
{CCP("J",1)}
{CCS("J",4)}
Marie-Marie... # Joseph
Ne t'en fais pas... Ils sont toujours comme ça, ils ne sont pas méchants.
Mais pourquoi tu te laisses faire? # Marie-Marie
{CCS("J",0)}
Ce qu'ils disent ne me blesse pas. # Joseph
Pourquoi?? # Marie-Marie
Ils peuvent penser ce qu'ils veulent, mais ça n'a pas d'importance. # Joseph
{CCS("J",3)}
Au final, ce qui compte, c'est d'avoir bûché.
Mais ils disent des choses si méchantes envers toi! # Marie-Marie
{CCS("J",0)}
Ça ne me dérange pas. Ces hommes, ce ne sont pas mes amis. Je ne les vois que quelques mois pendant l'hiver, et on fait notre travail, rien de plus. # Joseph
{CCS("J",1)}
Et comment je peux me laisser affecter par ce qu'ils disent quand je sais que tu es à mes côtés et que tu m'aimes?
Joseph! Mon amour! # Marie-Marie
{CCS("J",3)}
L'hiver sera long, ma douce, mais ensemble, je suis sûr qu'on s'en sortira. # Joseph
{ChangeBackground("cabin")}
<i> À l'arrivée du printemps... </i> # null
Théodore! Ce n'est pas parce que c'est la dernière journée que tu passes au campement que tu peux te permettre de laisser traîner ta vaisselle! Ramasse-la tout de suite! # Marie-Marie
O-oui, Marie-Marie, pardon... # Théodore
Et Elzéar! Plie ta couette avant de partir! # Marie-Marie
Tout de suite, Marie-Marie... # Elzéar
{CCP("J",1)}
{CCS("J",2)}
Bon sang, Marie-Marie, tu tiens complètement leurs rênes! # Joseph
{CCS("J",1)}
C'est ma femme, tout le monde, n'oubliez pas!
{CCS("J",3)}
Mwah! Tu es parfaite.
{CCS("J",2)}
Ne pense pas que tu peux te sauver de tes tâches juste parce que tu es mon mari! Range tes affaires! # Marie-Marie
Évidemment, j'étais justement sur le point de le faire... # Joseph
Bien sûr, mon doux. # Marie-Marie
{CCS("J",0)}
Comment as-tu trouvé ton hiver au camp? Ça n'a pas été de tout repos, mais je trouve que tu t'en es bien sortie! # Joseph
Tu as bien raison. Et tu sais quoi? # Marie-Marie
Je pense que je reviendrai l'an prochain.
{CCS("J",1)}
Rien ne me rendrait plus heureux! # Joseph
{CCS("J",0)}
Mais tu sais... Je pense que cette année, je terminerai de défricher notre terre. Je pourrais trouver de quoi acheter du bétail...
{CCS("J",3)}
Nous n'aurons peut-être pas à revenir.
Joseph, c'est incroyable! Tu pourras enfin enterrer ta hache! # Marie-Marie
{CCS("J",0)}
J'y compte. Toi, moi, notre ferme à nous deux... Ce serait la belle vie, n'est-ce pas? # Joseph
{CCS("J",1)}
Ce sera la fin de Joseph le bûcheron, et le début de Joseph le fermier.
{ChangeBackground("joseph_cg")}
... # cg

->fin_felicitation_J
->END

=== francois_route ===
{ChangeBackground("black")}
<i>Quelques mois plus tard...</i> # null
{ChangeBackground("bureau")}
{CCP("F",1)}
Oh, tu as fait une erreur ici, c'est 6, pas 4. # Marie-Marie
{CCS("F",1)}
Bien vu! Dis-donc, tu deviens très bonne à ce travail! # François
Héhé, ce n'est rien, j'ai appris du meilleur! # Marie-Marie
Non seulement cela, tu as appris à lire et écrire en un mois seulement! C'est franchement impressionnant. # François
Oh, tu me flattes! J'essaie seulement de me rendre utile. # Marie-Marie
{CCS("F",0)}
Et tu n'as pas idée à quel point tu l'es. Avant ton arrivée, j'étais satisfait dans la solitude. Maintenant, cependant, je ne peux plus me passer de ta présence. # François
François... # Marie-Marie
{CCS("F",2)}
Marie-Marie, je suis si heureux que tu m'aies choisi comme époux. Et je t'aime plus que quiconque dans cette colonie. # François
{CCS("F",3)}
Tu dois te demander alors pourquoi nous ne dormons pas dans la même chambre.
Je... Je n'oserais pas... # Marie-Marie
Tu es ma femme, tu as le droit de savoir. Tu <b>dois</b> savoir. # François
{CCS("F",0)}
Tu sais que j'ai hérité il y a quelques années de la compagnie de mon frère aîné après son décès?
Évidemment. # Marie-Marie
Et bien en fait, ce n'est pas tout à fait la vérité. # François
J'ai bien hérité la compagnie après le décès de son dirigeant précédent. Cependant, ce n'était pas mon frère.
{CCS("F",3)}
C'était mon époux.
Q-Quoi? Tu es... homosexuel?? # Marie-Marie
{CCS("F",2)}
C'est plus compliqué que cela. Je t'aime tout autant que j'ai aimé cet homme. # François
{CCS("F",3)}
Cependant... Ce n'est pas toute l'histoire.
Il y a plus!? #Marie-Marie
Oui... Car la situation qui m'a amené à marier cet homme est bien similaire à celle qui t'a amené à m'épouser. # François
{CCS("F",2)}
J'ai été, moi aussi, une Fille du Roy, auparavant.
Je... suis une femme.
Quoi?? Mais... Comment? Pourquoi?? Je suis si confuse! # Marie-Marie
{CCS("F",0)}
Je comprends, c'est beaucoup à avaler. # François
J'ai immigré il y a 8 ans, en tant que Fille du Roy, tout comme toi. J'ai marié un riche marchand à qui je faisais de l'oeil.
{CCS("F",1)}
Il m'a appris son métier, et je l'aidais dans ses tâches quotidiennes. J'étais tout aussi responsable de la compagnie que lui. Jusqu'à...
{CCS("F",3)}
...ce qu'il tombe malade.
Ce fût si rapide. En seulement quelques semaines, je suis passée d'épouse d'un marchand fructueux à veuve.
{CCS("F",0)}
Je refusais de perdre la compagnie et le mode de vie qui vient avec... mais une femme n'a pas le droit à l'héritage, et nous n'avions pas de descendant.
J'ai donc prétendu être le frère cadet de mon époux afin d'en hériter. C'est l'identité que j'ai adopté ce jour là, et que j'utilise depuis.
... # Marie-Marie
{CCS("F",3)}
Je suis désolée... Je comprendrais si tu ne m'aimes plus, et je prendrai tout de même soin de toi. # François
... # Marie-Marie
...Quel est ton vrai nom?
{Francois()}
...Françoise. Je ne voulais pas trop... me distancer. # Françoise
...Françoise... # Marie-Marie
... Je suis sous le choc, et j'ai tant de questions.
Cependant, une chose reste claire pour moi.
{CCS("F",2)}
Je t'aime, Françoise.
Marie-Marie... # Françoise
{CCS("F",4)}
Merci, sincèrement. J'admire ta résilience.
Allez, il nous reste beaucoup de travail à faire.
{ChangeBackground("bureau")}
{CCP("F",1)}
{CCS("F",4)}
Une autre belle journée de travail.
Si jamais je tombe malade, tu pourrais me remplacer sans problème.
Ne fais pas de telles blagues! # Marie-Marie
Pardon, pardon, je ne le referai plus. Je ne vis plus dans l'ombre de mon mari maintenant. Je vis pour toi. # Françoise
Oh, ma douce! # Marie-Marie
Suis-moi. Ce soir, nous déplaçons tes affaires dans ma chambre. Je n'ai plus rien à te cacher désormais. # Françoise
{ChangeBackground("francois_cg")}
... # cg
->fin_felicitation_F

->END

=== pierre_esprit_route ===
{ChangeBackground("black")}
<i>Quelques mois plus tard...</i> # null
{ChangeBackground("maison_vetement")}
La La La~ # Marie-Marie
Voilà, cet arrangement est parfait! Ça fait vraiment ressortir les couleurs des vêtements.
\*Slam!* # null
{CCP("P",1)}
Marie-Marie, je suis rentré. # Pierre-Esprit
Pierre-Esprit, te voilà enfin! Tu arrives tard. Tu n'étais pas en train de boire tout de même? # Marie-Marie
{CCS("P",4)}
Mais non, mais non... # Pierre-Esprit
Où étais-tu, alors? # Marie-Marie
...Je me lavais dans la rivière. # Pierre-Esprit
{CCS("P",2)}
Oh, je vois! Je suis fière de toi. # Marie-Marie
{CCS("P",4)}
Je ne suis pas un si mauvais mari, tout de même. # Pierre-Esprit
Oh! Regarde ce que j'ai fait! J'ai arrangé tous tes vêtements sur les étagères pour les mettre en valeur! # Marie-Marie
{CCS("P",2)}
...! # Pierre-Esprit
Tu es content? # Marie-Marie
Marie-Marie... # Pierre-Esprit
{CCS("P",3)}
Tu penses encore à me faire ouvrir ce magasin?
...! Mais Pierre-Esprit! Tu sais que c'est ce qui te rendrait heureux! # Marie-Marie
Marie-Marie. Je ne peux pas. # Pierre-Esprit
{CCS("P",4)}
Je suis un coureur des bois, pas un couturier.
C'est faux! Tous ces vêtements faits de ta main sont d'excellente qualité! Ce sont les plus beaux vêtements que j'ai vu depuis mon arrivée en Nouvelle-France. # Marie-Marie
S'il-te-plaît, essaie, au moins. Tu n'as rien à perdre, non?
Je ne peux pas arrêter de travailler pour un tel risque... # Pierre-Esprit
Je peux m'occuper de la boutique pendant le jour! Et quand elle aura du succès, tu pourras arrêter de courir les bois pour de bon. # Marie-Marie
... D'accord. C'est bien pour toi que j'accepte. # Pierre-Esprit
{CCS("P",2)}
Merci, mon chou! Tu ne le regretteras pas! # Marie-Marie
{ChangeBackground("maison_vetement")}
<i>Une semaine plus tard...</i> # null
Voilà, cela fera 10 sols! # Marie-Marie
Tiens, Marie-Marie. # Pistolois
Haaa, on a déjà vendu presque la moitié des vêtements. Il faudrait que Pierre-Esprit en couse d'autres. # Marie-Marie
\*Slam!* # null
{CCP("P",1)}
Marie-Marie, je suis rentré. # Pierre-Esprit
Oh, Pierre-Esprit, combien de fois je t'ai dit d'arrêter de claquer la porte en rentrant? # Marie-Marie
{CCS("P",4)}
P-pardon... # Pierre-Esprit
Tu sais, tes vêtements ont beaucoup de succès! # Marie-Marie
Ils ne peuvent pas être si populaires... Ils n'ont rien de spécial... # Pierre-Esprit
J'en ai déjà vendu presque la moitié! # Marie-Marie
{CCS("P",2)}
La-la moitié?!? <i> (Mes vêtements ont vraiment du potentiel...?)</i> # Pierre Esprit
Alors? Tu veux bien garder la boutique? Il faudrait que tu fasses de nouveaux habits. # Marie-Marie
Tu crois vraiment que je peux? Devenir couturier? # Pierre-Esprit
Mais bien sûr! Regarde comment les étagères se sont vidées dans les derniers jours! # Marie-Marie
Je... Je vais essayer, alors. # Pierre-Esprit
! #Marie-Marie
{CCS("P",1)}
Merci, Marie-Marie. De croire en moi. # Pierre-Esprit
{ChangeBackground("maison_vetement")}
<i>L'année suivante...</i> # null
{CCP("P",1)}
{CCS("P",1)}
{CCP("F",2)}
Tiens, François. Cette veste coûterait 15 sols, mais pour toi ça sera 12. # Pierre-Esprit
J'apprécie, mais tu mérites amplement toute la somme. # François
Merci, François. J'aurai bientôt terminé ton chapeau, tu pourras repasser dans quelques jours. # Pierre-Esprit
{CCS("F",1)}
J'ai bien hâte de le voir. # François
{CCP("F",4)}
{CCS("P",0)}
Pierre-Esprit! Peux-tu venir me donner un coup de main avec ce tissu? # Marie-Marie
Tout de suite, mon amour! # Pierre-Esprit
{ChangeBackground("maison_vetement")}
{CCP("P",1)}
Voilà! Tu devrais aussi le plier ici pour cacher la couture. # Pierre-Esprit
Oh merci, Pierre-Esprit! Tu as tellement de talent! # Marie-Marie
{CCS("P",2)}
Tu me flattes, Marie-Marie... # Pierre-Esprit
Mais c'est vrai! Tout le village le pense. Tout le monde s'habille de tes vêtements maintenant. Même François, qui porte toujours des vêtements de haute couture! # Marie-Marie
{CCS("P",1)}
Tout cela, c'est grâce à toi, Marie-Marie. Je n'aurais jamais osé suivre ma passion si tu ne m'avais pas encouragé. # Pierre-Esprit
Je n'ai pas toujours été le meilleur mari, mais tu m'as changé pour le mieux. Je n'ai plus honte d'être authentique, maintenant.
J'ai toujours cru en toi Pierre-Esprit. Dès notre première rencontre, j'ai vu le potentiel caché en toi. Je suis heureuse que tu sois enfin épanoui. # Marie-Marie
{CCS("P",0)}
Marie-Marie, je suis fier d'être ton mari. # Pierre-Esprit
{CCS("P",1)}
Et je suis fière d'être ta femme. # Marie-Marie
{ChangeBackground("pierre_esprit_cg")}
... # cg

->fin_felicitation_P
->END

=== fin_felicitation_J ===
{MainMenu()}
->END

=== fin_felicitation_F ===
{MainMenu()}
->END

=== fin_felicitation_P ===
{MainMenu()}
->END


=== function MainMenu()===
    ~ return
=== function GivePoints(character, points) ===
    {character == "J":
    ~ J_points += points
    }
    {character == "F":
    ~ F_points += points
    }
    {character == "P": 
    ~ P_points += points
    }
=== function ResetPoints() ===
    ~ J_points = 0
    ~ F_points = 0
    ~ P_points = 0

 === function ChangeBackground(backgroundName) ===
    ~ return

 === function ChangeScene(sceneName) ===
    ~ return
    
 === function CCS(characterName, spriteIndex) ===
    ~ return
    
 === function CCP(characterName, pos) ===
    ~ return
    
=== function Francois() ===
    ~ return