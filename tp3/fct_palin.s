/*
bool palin(const char *ch)
{
    uint32_t inf, sup;
    inf = 0;
    sup = strlen(ch) - 1;
    while (inf < sup && ch[inf] == ch[sup]) {
        inf++;
        sup--;
    }
    return inf >= sup;
}
*/
    .text
    .globl palin
    /* bool palin(char *ch) */
/* DEBUT DU CONTEXTE
fonction :
     nom_de_fonction  : feuille ou non feuille
contexte :
     parametre_0      : registre a0
     parametre_1      : registre ai; pile *(sp+n)
     variable_locale0 : registre t0
     variable_locale1 : pile *(sp+k)
     ra               : pile *(sp+p)
     variable_globale : memoire [section nom_de_section]
 */
palin:
palin_fin_prologue:
palin_debut_epilogue:
    ret
