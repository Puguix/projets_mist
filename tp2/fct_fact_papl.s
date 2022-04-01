/*
uint32_t fact_papl(uint32_t n)
{
    if (n <= 1) {
        return 1;
    } else {
        uint64_t tmp = n*fact_papl(n-1);
        if ((tmp >> 32) > 0)
            erreur_fact(n);
        return (uint32_t)tmp;
    }
}
*/

    .text
    .globl fact_papl
    /* uint32_t fact_papl(uint32_t n) */
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
fact_papl:
/* A compléter */
fact_papl_fin_prologue:
fact_papl_debut_epilogue:
    ret
