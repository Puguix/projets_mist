/*
uint8_t res8;

uint8_t somme8(void)
{
    uint8_t i;
    res8 = 0;
    for (i = 1; i <= 24; i++) {
        res8 = res8 + i;
    }
    return res8;
}
*/

    .globl somme8
/* DEBUT DU CONTEXTE
fonction :
     somme8  : feuille
contexte :
     res8       : mémoire allouée par somme8.c
     i          : registre t1
 */
somme8:
somme8_fin_prologue:
/* A compléter */
    li t1, 1
    li t0, 0
    sb a0, res8, t6
    li t2, 24
for:
    bgt t1, t2, somme8_debut_epilogue 
    lbu a0, res8
    add a0, a0, t1
    addi t1, t1, 1
    sb a0, res8, t6
    j for
somme8_debut_epilogue:
    ret

    .data
.comm res8, 1
/* uint8_t res8;
 la variable globale res8 étant définie dans ce fichier, il est nécessaire de
 la définir dans la section .data du programme assembleur : par exemple, avec
 la directive .comm vu qu'elle n'est pas initialisée
*/
