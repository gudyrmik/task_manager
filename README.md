Aplikace by měla umožnit uživateli následující (User Stories):

1. Jako uživatel se mohu přihlásit
[+] Pomoci Devise

2. Jako uživatel se mohu zaregistrovat a zvolit svůj e-mail, heslo, křestní jméno a příjmení
[+] Pomoci Devise

3. Jako uživatel mohu upravit své nastavení e-mail, heslo, křestní jméno a příjmení
[+] Pomoci Devise

4. Jako uživatel (po přihlášení) vidím pouze svá data v aplikaci (své úkoly, projekty a tagy). Nikdy nevidím cizí data
[+] Zajistuje datovy model a asociace

5. Jako uživatel vidím seznam svých úkolů (včetně atributů, projektu a tagů)
[+] hlavni stranka, index

6. Jako uživatel vidím seznam svých projektů
[+] odkaz z hlavni stranky, index

7. Jako uživatel vidím seznam svých tagů
[+] odkaz z hlavni stranky, index

8. Jako uživatel vidím detail jednoho úkolu
[+] hlavni stranka, show

9. Jako uživatel si mohu zobrazit seznam úkolů v projektu (vyfiltrovat seznam úkolů dle jednoho projektu)
[+] datovy model/asociace a stranka /projects

10. Jako uživatel mohu vyhledávat. Prohledává se title v úkolech, projektech i tazích. Hledaná fráze se mi ve výsledcích vyhledávání ​vyznačí​ (třeba žlutě)
[+] gem pg_search, multisearch, highlight helper

11. Jako uživatel mohu ze seznamu nebo detailu úkolů označit nehotový úkol jako hotový, nebo hotový úkol jako nehotový
[+] hlavni stranka, edit

12. Jako uživatel mohu ze seznamu nebo detailu úkolů přejít na editaci úkolu
[+] hlavni stranka, show -> edit

13. Jako uživatel mohu ze seznamu nebo detailu úkolů přejít na vytvoření nového úkolu
[+] hlavni stranka, index -> new

14. Jako uživatel mohu ze seznamu nebo detailu úkolů vybraný úkol smazat (s potvrzením, zda jsem si opravdu jistý)
[+] hlavni stranka, show -> delete

15. Jako uživatel mohu v seznamu svých úkolů přepínat scope mezi Všechny, Hotové a Nehotové
[-]

16. Jako uživatel vidím seznam svých úkolů, projektů a tagů ​stránkovaně
[+] gem pagy

17. Jako uživatel mohu ze seznamu projektů smazat vybraný projekt (s ověřením, tím se smažou i všechny přiřazené úkoly k projektu)
[+] /projects -> delete

18. Jako uživatel mohu ze seznamu tagů smazat vybraný tag (s ověřením), přitom se NESMAŽOU i úkoly, které daný tag mají přiřazen, pouze se jim tag odebere
[+] /tags -> delete

19. Volitelně: Jako uživatel si mohu zobrazit seznam úkolů s určitou kombinací jednoho, nebo více tagů (vyfiltrovat seznam projektů dle jednoho nebo více tagů)
[-]

20. Volitelně: Jako uživatel mohu ve svém nastavení smazat svůj účet (s ověřením), včetně všech mých úkolů, projektů a tagů (GDPR ;-))
[+] Account settings -> Cancel my account, zbytek zajistuji asociace

