.class public Landroid/support/constraint/a/a/k;
.super Ljava/lang/Object;


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/a/a/k;->a:[Z

    return-void
.end method

.method static a(ILandroid/support/constraint/a/a/f;)V
    .locals 13

    const/4 v2, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->g()V

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v5

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v7

    and-int/lit8 v0, p0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v3, v3, v2

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v3, v8, :cond_6

    invoke-static {p1, v2}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/f;I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_1
    iget v8, v4, Landroid/support/constraint/a/a/m;->g:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget v8, v6, Landroid/support/constraint/a/a/m;->g:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v8, v8, v2

    sget-object v9, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-eq v8, v9, :cond_0

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->l()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_e

    :cond_0
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_8

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_8

    invoke-virtual {v4, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v6, v4, v1, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    :cond_1
    :goto_2
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v3, v3, v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v3, v4, :cond_2

    invoke-static {p1, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/f;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    iget v3, v5, Landroid/support/constraint/a/a/m;->g:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget v3, v7, Landroid/support/constraint/a/a/m;->g:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v3, v3, v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->l()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1e

    :cond_3
    iget-object v2, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v2, :cond_18

    iget-object v2, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v2, :cond_18

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    :goto_3
    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p1, Landroid/support/constraint/a/a/f;->O:I

    neg-int v2, v2

    invoke-virtual {v5, v1, v0, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v3, v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    invoke-virtual {v6, v4, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto :goto_2

    :cond_8
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_a

    invoke-virtual {v4, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v6, v4, v1, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    invoke-virtual {v6, v4, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_c

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_c

    invoke-virtual {v4, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v4, v6, v12, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_2

    :cond_c
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_1

    invoke-virtual {v4, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v4, v6, v12, v3}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v6, v4, v1, v3}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6, v4, v3}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    goto/16 :goto_2

    :cond_e
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    invoke-virtual {v4, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v8, :cond_10

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v8, :cond_10

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v6, v4, v1, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v6, v4, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_2

    :cond_10
    iget-object v8, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_12

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v8, :cond_12

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v6, v4, v1, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v6, v4, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_2

    :cond_12
    iget-object v8, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v8, :cond_14

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_14

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v4, v6, v12, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_2

    :cond_13
    neg-int v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_2

    :cond_14
    iget-object v8, p1, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v8, v8, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_1

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    :cond_15
    iget v8, p1, Landroid/support/constraint/a/a/f;->G:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_16

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Landroid/support/constraint/a/a/m;->b(I)V

    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v4, v6, v11}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {v6, v4, v11}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v4, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v6, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    neg-int v8, v3

    int-to-float v8, v8

    invoke-virtual {v4, v6, v8}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    int-to-float v8, v3

    invoke-virtual {v6, v4, v8}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/a/f;->j(I)V

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    invoke-virtual {v7, v5, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_3

    :cond_18
    iget-object v2, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v2, :cond_1a

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    :goto_5
    iget v0, p1, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p1, Landroid/support/constraint/a/a/f;->O:I

    invoke-virtual {v0, v1, v5, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    invoke-virtual {v7, v5, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto :goto_5

    :cond_1a
    iget-object v2, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v2, :cond_1c

    iget-object v2, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_1c

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v5, v7, v12, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    :goto_6
    iget v0, p1, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p1, Landroid/support/constraint/a/a/f;->O:I

    invoke-virtual {v0, v1, v5, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v5, v7, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto :goto_6

    :cond_1c
    iget-object v2, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_4

    invoke-virtual {v5, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v5, v7, v12, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    :goto_7
    iget v0, p1, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p1, Landroid/support/constraint/a/a/f;->O:I

    invoke-virtual {v0, v1, v5, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_1d
    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v5, v7, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v5, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    goto :goto_7

    :cond_1e
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v2

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v1}, Landroid/support/constraint/a/a/m;->b(I)V

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_20

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_20

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_4

    :cond_1f
    invoke-virtual {v7, v5, v2}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_20
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_22

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_22

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_4

    :cond_21
    invoke-virtual {v7, v5, v2}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_22
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_24

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_24

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v5, v7, v12, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V

    goto/16 :goto_4

    :cond_23
    neg-int v0, v2

    invoke-virtual {v5, v7, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4

    :cond_24
    iget-object v3, p1, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    :cond_25
    iget v0, p1, Landroid/support/constraint/a/a/f;->G:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_26

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/m;->b(I)V

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v5, v7, v11}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {v7, v5, v11}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    goto/16 :goto_4

    :cond_26
    invoke-virtual {v5, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    invoke-virtual {v7, v10}, Landroid/support/constraint/a/a/m;->b(I)V

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {v5, v7, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    int-to-float v0, v2

    invoke-virtual {v7, v5, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/a/f;->k(I)V

    iget v0, p1, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p1, Landroid/support/constraint/a/a/f;->O:I

    invoke-virtual {v0, v1, v5, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_4
.end method

.method static a(Landroid/support/constraint/a/a/f;II)V
    .locals 5

    const/4 v4, 0x1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    int-to-float v3, p2

    iput v3, v2, Landroid/support/constraint/a/a/m;->f:F

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iput v4, v2, Landroid/support/constraint/a/a/m;->i:I

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iput-object v0, v2, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->f(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/support/constraint/a/a/m;->f:F

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iput v4, v0, Landroid/support/constraint/a/a/m;->i:I

    return-void
.end method

.method static a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/f;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v0, v0, v2

    sget-object v1, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v0, v0, v2

    sget-object v1, Landroid/support/constraint/a/a/f$a;->d:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget v0, v0, Landroid/support/constraint/a/a/e;->d:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget v2, v2, Landroid/support/constraint/a/a/e;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v3, p2, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v3, p2, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iput v5, p2, Landroid/support/constraint/a/a/f;->a:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/f;->c(II)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v0, v0, v4

    sget-object v1, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v0, v0, v4

    sget-object v1, Landroid/support/constraint/a/a/f$a;->d:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget v0, v0, Landroid/support/constraint/a/a/e;->d:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget v2, v2, Landroid/support/constraint/a/a/e;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v3, p2, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v3, p2, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget v2, p2, Landroid/support/constraint/a/a/f;->O:I

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/a/a/f;->l()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p2, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v3, p2, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget v3, p2, Landroid/support/constraint/a/a/f;->O:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :cond_2
    iput v5, p2, Landroid/support/constraint/a/a/f;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/f;->d(II)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/f;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v2, v2, p1

    sget-object v3, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    if-nez p1, :cond_2

    :goto_1
    aget-object v0, v2, v0

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    iget v2, p0, Landroid/support/constraint/a/a/f;->e:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/f;->h:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/f;->i:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/support/constraint/a/a/f;->f:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/f;->k:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/f;->l:I

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method static a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)Z
    .locals 19

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v14, v0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v15, v0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/support/constraint/a/a/d;->d:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->e:Landroid/support/constraint/a/a/f;

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/support/constraint/a/a/d;->k:F

    move/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_0

    :cond_0
    if-nez p2, :cond_7

    iget v2, v4, Landroid/support/constraint/a/a/f;->Z:I

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    iget v3, v4, Landroid/support/constraint/a/a/f;->Z:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    const/4 v3, 0x1

    :goto_1
    iget v4, v4, Landroid/support/constraint/a/a/f;->Z:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_2
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v7, v12

    :goto_3
    if-nez v5, :cond_18

    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->l()I

    move-result v6

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    if-nez p2, :cond_b

    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->p()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    :goto_4
    if-eq v7, v15, :cond_1

    iget-object v10, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    :cond_1
    if-eq v7, v13, :cond_2

    iget-object v10, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v17, p3, 0x1

    aget-object v10, v10, v17

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    :cond_2
    iget-object v10, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v17, p3, 0x1

    aget-object v10, v10, v17

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v10, v6

    :cond_3
    iget-object v6, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->l()I

    move-result v6

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v6, v0, :cond_13

    iget-object v6, v7, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v6, v6, p2

    sget-object v17, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_13

    add-int/lit8 v6, v11, 0x1

    if-nez p2, :cond_e

    iget v11, v7, Landroid/support/constraint/a/a/f;->e:I

    if-eqz v11, :cond_c

    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    iget v2, v4, Landroid/support/constraint/a/a/f;->aa:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    iget v3, v4, Landroid/support/constraint/a/a/f;->aa:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    const/4 v3, 0x1

    :goto_7
    iget v4, v4, Landroid/support/constraint/a/a/f;->aa:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->r()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    goto :goto_4

    :cond_c
    iget v11, v7, Landroid/support/constraint/a/a/f;->h:I

    if-nez v11, :cond_d

    iget v11, v7, Landroid/support/constraint/a/a/f;->i:I

    if-eqz v11, :cond_11

    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    :cond_e
    iget v11, v7, Landroid/support/constraint/a/a/f;->f:I

    if-eqz v11, :cond_f

    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    iget v11, v7, Landroid/support/constraint/a/a/f;->k:I

    if-nez v11, :cond_10

    iget v11, v7, Landroid/support/constraint/a/a/f;->l:I

    if-eqz v11, :cond_11

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    iget v11, v7, Landroid/support/constraint/a/a/f;->G:F

    const/16 v17, 0x0

    cmpl-float v11, v11, v17

    if-eqz v11, :cond_12

    const/4 v2, 0x0

    goto :goto_5

    :cond_12
    move v11, v6

    :cond_13
    iget-object v6, v7, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v17, p3, 0x1

    aget-object v6, v6, v17

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v6, :cond_16

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v0, v6, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    iget-object v0, v6, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_15

    :cond_14
    const/4 v6, 0x0

    :cond_15
    :goto_8
    if-eqz v6, :cond_17

    :goto_9
    move-object v7, v6

    goto/16 :goto_3

    :cond_16
    const/4 v6, 0x0

    goto :goto_8

    :cond_17
    const/4 v5, 0x1

    move-object v6, v7

    goto :goto_9

    :cond_18
    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v17

    iget-object v5, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v5, :cond_19

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-nez v5, :cond_1a

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v5, v5, Landroid/support/constraint/a/a/m;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v5, v5, Landroid/support/constraint/a/a/m;->i:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1c

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1c
    if-lez v11, :cond_1d

    if-eq v11, v8, :cond_1d

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1d
    const/4 v5, 0x0

    if-nez v4, :cond_1e

    if-nez v2, :cond_1e

    if-eqz v3, :cond_20

    :cond_1e
    if-eqz v15, :cond_1f

    iget-object v5, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v5

    int-to-float v5, v5

    :cond_1f
    if-eqz v13, :cond_20

    iget-object v6, v13, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v13, p3, 0x1

    aget-object v6, v6, v13

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->e()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    :cond_20
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v6, v6, Landroid/support/constraint/a/a/m;->f:F

    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v13, v13, Landroid/support/constraint/a/a/m;->f:F

    cmpg-float v18, v6, v13

    if-gez v18, :cond_21

    sub-float/2addr v13, v6

    sub-float/2addr v13, v10

    :goto_a
    if-lez v11, :cond_29

    if-ne v11, v8, :cond_29

    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v7}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v2

    iget-object v2, v2, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_22

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_21
    sub-float v13, v6, v13

    sub-float/2addr v13, v10

    goto :goto_a

    :cond_22
    add-float v2, v13, v10

    sub-float v5, v2, v9

    move v3, v6

    :goto_b
    if-eqz v12, :cond_28

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_23

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->B:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->B:J

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->s:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->s:J

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->y:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->y:J

    :cond_23
    iget-object v2, v12, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v4, v2, p2

    if-nez v4, :cond_24

    if-ne v12, v14, :cond_3e

    :cond_24
    int-to-float v2, v11

    div-float v2, v5, v2

    const/4 v6, 0x0

    cmpl-float v6, v16, v6

    if-lez v6, :cond_25

    iget-object v2, v12, Landroid/support/constraint/a/a/f;->ad:[F

    aget v2, v2, p2

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v2, v2, v6

    if-nez v2, :cond_27

    const/4 v2, 0x0

    :cond_25
    :goto_c
    invoke-virtual {v12}, Landroid/support/constraint/a/a/f;->l()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_26

    const/4 v2, 0x0

    :cond_26
    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->e()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    add-float v8, v3, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    add-float/2addr v2, v3

    iget-object v3, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_d
    move v3, v2

    move-object v12, v4

    goto/16 :goto_b

    :cond_27
    iget-object v2, v12, Landroid/support/constraint/a/a/f;->ad:[F

    aget v2, v2, p2

    mul-float/2addr v2, v5

    div-float v2, v2, v16

    goto :goto_c

    :cond_28
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_29
    const/4 v7, 0x0

    cmpg-float v7, v13, v7

    if-gez v7, :cond_3d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v7, v3

    move v9, v2

    :goto_e
    if-eqz v4, :cond_2d

    sub-float v2, v13, v5

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/support/constraint/a/a/f;->g(I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v3, v6, v2

    :goto_f
    if-eqz v12, :cond_38

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2a

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->B:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->B:J

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->s:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->s:J

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->y:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->y:J

    :cond_2a
    iget-object v2, v12, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v4, v2, p2

    if-nez v4, :cond_2b

    if-ne v12, v14, :cond_3c

    :cond_2b
    if-nez p2, :cond_2c

    invoke-virtual {v12}, Landroid/support/constraint/a/a/f;->p()I

    move-result v2

    int-to-float v2, v2

    :goto_10
    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    invoke-virtual {v5, v6, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    add-float v7, v3, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    add-float/2addr v2, v3

    iget-object v3, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_11
    move v3, v2

    move-object v12, v4

    goto/16 :goto_f

    :cond_2c
    invoke-virtual {v12}, Landroid/support/constraint/a/a/f;->r()I

    move-result v2

    int-to-float v2, v2

    goto :goto_10

    :cond_2d
    if-nez v9, :cond_2e

    if-eqz v7, :cond_38

    :cond_2e
    if-eqz v9, :cond_35

    sub-float v2, v13, v5

    move v3, v2

    :goto_12
    add-int/lit8 v2, v8, 0x1

    int-to-float v2, v2

    div-float v2, v3, v2

    if-eqz v7, :cond_2f

    const/4 v2, 0x1

    if-le v8, v2, :cond_36

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    div-float v2, v3, v2

    :cond_2f
    :goto_13
    invoke-virtual {v12}, Landroid/support/constraint/a/a/f;->l()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3a

    add-float v3, v6, v2

    :goto_14
    if-eqz v7, :cond_30

    const/4 v4, 0x1

    if-le v8, v4, :cond_30

    iget-object v3, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    :cond_30
    if-eqz v9, :cond_39

    if-eqz v15, :cond_39

    iget-object v4, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object v5, v12

    :goto_15
    if-eqz v5, :cond_38

    sget-object v4, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v4, :cond_31

    sget-object v4, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v4, Landroid/support/constraint/a/f;->B:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/support/constraint/a/f;->B:J

    sget-object v4, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v4, Landroid/support/constraint/a/f;->s:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/support/constraint/a/f;->s:J

    sget-object v4, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v4, Landroid/support/constraint/a/f;->y:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/support/constraint/a/f;->y:J

    :cond_31
    iget-object v4, v5, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v6, v4, p2

    if-nez v6, :cond_32

    if-ne v5, v14, :cond_34

    :cond_32
    if-nez p2, :cond_37

    invoke-virtual {v5}, Landroid/support/constraint/a/a/f;->p()I

    move-result v4

    int-to-float v4, v4

    :goto_16
    if-eq v5, v15, :cond_33

    iget-object v7, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    :cond_33
    iget-object v7, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    invoke-virtual {v7, v8, v3}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v7, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    add-float v9, v3, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    iget-object v7, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    iget-object v7, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    iget-object v5, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    if-eqz v6, :cond_34

    invoke-virtual {v6}, Landroid/support/constraint/a/a/f;->l()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_34

    add-float/2addr v3, v2

    :cond_34
    move-object v5, v6

    goto/16 :goto_15

    :cond_35
    if-eqz v7, :cond_3b

    sub-float v2, v13, v5

    move v3, v2

    goto/16 :goto_12

    :cond_36
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v3, v2

    goto/16 :goto_13

    :cond_37
    invoke-virtual {v5}, Landroid/support/constraint/a/a/f;->r()I

    move-result v4

    int-to-float v4, v4

    goto :goto_16

    :cond_38
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_39
    move-object v5, v12

    goto/16 :goto_15

    :cond_3a
    move v3, v6

    goto/16 :goto_14

    :cond_3b
    move v3, v13

    goto/16 :goto_12

    :cond_3c
    move v2, v3

    goto/16 :goto_11

    :cond_3d
    move v7, v3

    move v9, v2

    goto/16 :goto_e

    :cond_3e
    move v2, v3

    goto/16 :goto_d
.end method
