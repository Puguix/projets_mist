/*
void inverse_liste(struct cellule_t **l)
{
   struct cellule_t *res, *suiv;
   res = NULL;
   while (*l != NULL) {
       suiv = (*l)->suiv;
       (*l)->suiv = res;
       res = *l;
       *l = suiv;
   }
   *l = res;
}
*/
    .text
    .globl inverse_liste
/* void inverse_liste(struct cellule_t **l) */
/* DEBUT DU CONTEXTE
fonction :
     inverse_liste  : feuille
contexte :
     l      : registre a0
     res    : registre t0
     suiv   : registre t1
 */
inverse_liste:
inverse_liste_fin_prologue:
    li t0, 0
while:
    sw t6, 0(a0)
    beqz t6, fin
    /* t2 c'est le pointeur pointé par l*/
    lw t2, 0(a0)
    /*t3 est le suivant*/
    lw t1, 4(t2)
    sw t0, 4(t2)
    lw t0, 0(a0)
    sw t1, 0(a0)
fin:
    lw t0, 0(a0)
inverse_liste_debut_epilogue:
    ret
