.class Landroid/support/constraint/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;I)V
    .locals 6

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget v1, p0, Landroid/support/constraint/a/a/g;->an:I

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    move v2, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/support/constraint/a/a/d;->a()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/a/a/g;->u(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, p1, p2, v2, v4}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, p1, p2, v2, v4}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    iget v1, p0, Landroid/support/constraint/a/a/g;->ao:I

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, v2, v4}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method static a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)V
    .locals 21

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    move-object/from16 v19, v0

    move-object/from16 v0, p4

    iget-object v14, v0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/f;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v15, v0, Landroid/support/constraint/a/a/d;->d:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/support/constraint/a/a/d;->e:Landroid/support/constraint/a/a/f;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v6, v0, Landroid/support/constraint/a/a/d;->k:F

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v1, v1, p2

    sget-object v2, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    move v7, v1

    :goto_0
    if-nez p2, :cond_d

    iget v1, v12, Landroid/support/constraint/a/a/f;->Z:I

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_1
    iget v2, v12, Landroid/support/constraint/a/a/f;->Z:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_2
    iget v3, v12, Landroid/support/constraint/a/a/f;->Z:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    const/4 v3, 0x1

    :goto_3
    move v11, v3

    move/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v5, v19

    :goto_4
    if-nez v4, :cond_15

    iget-object v1, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v1, p3

    const/4 v1, 0x4

    if-nez v7, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v2

    iget-object v8, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_2

    move-object/from16 v0, v19

    if-eq v5, v0, :cond_2

    iget-object v8, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    invoke-virtual {v8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    add-int/2addr v2, v8

    :cond_2
    if-eqz v11, :cond_11

    move-object/from16 v0, v19

    if-eq v5, v0, :cond_11

    move-object/from16 v0, v16

    if-eq v5, v0, :cond_11

    const/4 v1, 0x6

    :cond_3
    :goto_5
    iget-object v8, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v8, :cond_4

    move-object/from16 v0, v16

    if-ne v5, v0, :cond_12

    iget-object v8, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v9, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v9, v9, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v2, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :goto_6
    iget-object v8, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v3, v2, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_4
    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/f;->l()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    iget-object v1, v5, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v1, v1, p2

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_5

    iget-object v1, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v3, 0x0

    const/4 v8, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_5
    iget-object v1, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/g;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v3, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_6
    iget-object v1, v5, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v1, v2, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_7

    iget-object v1, v2, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    if-eq v1, v5, :cond_8

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_7
    if-eqz v2, :cond_14

    move v1, v4

    :goto_8
    move v4, v1

    move-object v5, v2

    goto/16 :goto_4

    :cond_9
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_d
    iget v1, v12, Landroid/support/constraint/a/a/f;->aa:I

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_9
    iget v2, v12, Landroid/support/constraint/a/a/f;->aa:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    :goto_a
    iget v3, v12, Landroid/support/constraint/a/a/f;->aa:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    const/4 v3, 0x1

    :goto_b
    move v11, v3

    move/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v5, v19

    goto/16 :goto_4

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    goto :goto_b

    :cond_11
    if-eqz v18, :cond_3

    if-eqz v7, :cond_3

    const/4 v1, 0x4

    goto/16 :goto_5

    :cond_12
    iget-object v8, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v9, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v9, v9, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v10, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v2, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_6

    :cond_13
    const/4 v2, 0x0

    goto :goto_7

    :cond_14
    const/4 v1, 0x1

    move-object v2, v5

    goto :goto_8

    :cond_15
    if-eqz v15, :cond_16

    iget-object v1, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_16

    iget-object v1, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v2, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v3, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_16
    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v3, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_17
    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/support/constraint/a/a/d;->h:Ljava/util/ArrayList;

    if-eqz v13, :cond_1c

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/4 v1, 0x1

    move/from16 v0, v20

    if-le v0, v1, :cond_1c

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/constraint/a/a/d;->l:Z

    if-eqz v1, :cond_4d

    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/constraint/a/a/d;->n:Z

    if-nez v1, :cond_4d

    move-object/from16 v0, p4

    iget v1, v0, Landroid/support/constraint/a/a/d;->j:I

    int-to-float v3, v1

    :goto_c
    const/4 v1, 0x0

    move v10, v1

    move-object v6, v9

    :goto_d
    move/from16 v0, v20

    if-ge v10, v0, :cond_1c

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/support/constraint/a/a/f;

    iget-object v1, v9, Landroid/support/constraint/a/a/f;->ad:[F

    aget v4, v1, p2

    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_19

    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/constraint/a/a/d;->n:Z

    if-eqz v1, :cond_18

    iget-object v1, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v4, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v5, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move-object v9, v6

    :goto_e
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move-object v6, v9

    goto :goto_d

    :cond_18
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_19
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-nez v1, :cond_1a

    iget-object v1, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v4, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v5, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move-object v9, v6

    goto :goto_e

    :cond_1a
    if-eqz v6, :cond_1b

    iget-object v1, v6, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v5, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v6, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v1, v1, v6

    iget-object v6, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v7, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v9, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v8, p3, 0x1

    aget-object v1, v1, v8

    iget-object v8, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Landroid/support/constraint/a/b;->a(FFFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    :cond_1b
    move v2, v4

    goto :goto_e

    :cond_1c
    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    if-eq v0, v15, :cond_1d

    if-eqz v11, :cond_26

    :cond_1d
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v1, p3

    iget-object v1, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v1, v3

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_23

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_f
    iget-object v4, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_24

    iget-object v4, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_10
    move-object/from16 v0, v16

    if-ne v0, v15, :cond_1e

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v1, p3

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v1, v1, v4

    :cond_1e
    if-eqz v3, :cond_1f

    if-eqz v6, :cond_1f

    if-nez p2, :cond_25

    iget v5, v12, Landroid/support/constraint/a/a/f;->S:F

    :goto_11
    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v7, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1f
    :goto_12
    if-nez v18, :cond_20

    if-eqz v17, :cond_22

    :cond_20
    if-eqz v16, :cond_22

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v1, p3

    iget-object v1, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v2, v1, v2

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_44

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v3, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_13
    iget-object v1, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_45

    iget-object v1, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v6, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_14
    if-eq v14, v15, :cond_21

    iget-object v1, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v1, v1, v5

    iget-object v5, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v5, :cond_46

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_15
    move-object v6, v1

    :cond_21
    move-object/from16 v0, v16

    if-ne v0, v15, :cond_48

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v1, p3

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v1, v1, v4

    move-object v7, v1

    move-object v9, v2

    :goto_16
    if-eqz v3, :cond_22

    if-eqz v6, :cond_22

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v9}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    if-nez v15, :cond_47

    move-object v1, v14

    :goto_17
    iget-object v1, v1, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    iget-object v2, v9, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v7, v7, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_22
    return-void

    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_24
    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_25
    iget v5, v12, Landroid/support/constraint/a/a/f;->T:F

    goto/16 :goto_11

    :cond_26
    if-eqz v18, :cond_36

    if-eqz v16, :cond_36

    move-object/from16 v0, p4

    iget v1, v0, Landroid/support/constraint/a/a/d;->j:I

    if-lez v1, :cond_27

    move-object/from16 v0, p4

    iget v1, v0, Landroid/support/constraint/a/a/d;->i:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/support/constraint/a/a/d;->j:I

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    move v10, v1

    :goto_18
    move-object/from16 v12, v16

    move-object/from16 v11, v16

    :goto_19
    if-eqz v11, :cond_1f

    iget-object v1, v11, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v1, v1, p2

    move-object v13, v1

    :goto_1a
    if-eqz v13, :cond_28

    invoke-virtual {v13}, Landroid/support/constraint/a/a/f;->l()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_28

    iget-object v1, v13, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v1, v1, p2

    move-object v13, v1

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    move v10, v1

    goto :goto_18

    :cond_28
    if-nez v13, :cond_29

    if-ne v11, v15, :cond_30

    :cond_29
    iget-object v1, v11, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v1, p3

    iget-object v2, v4, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_31

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v3, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_1b
    if-eq v12, v11, :cond_32

    iget-object v1, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v1, v3

    iget-object v3, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :cond_2a
    :goto_1c
    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    iget-object v5, v11, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    if-eqz v13, :cond_34

    iget-object v1, v13, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v6, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v5, v11, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v5, v5, v7

    iget-object v7, v5, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    move-object v5, v1

    :goto_1d
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    add-int/2addr v8, v1

    :cond_2b
    if-eqz v12, :cond_2c

    iget-object v1, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    add-int/2addr v4, v1

    :cond_2c
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    if-eqz v6, :cond_30

    if-eqz v7, :cond_30

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_2d

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    :cond_2d
    if-ne v11, v15, :cond_2e

    iget-object v1, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    :cond_2e
    const/4 v9, 0x4

    if-eqz v10, :cond_2f

    const/4 v9, 0x6

    :cond_2f
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_30
    invoke-virtual {v11}, Landroid/support/constraint/a/a/f;->l()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4c

    move-object v1, v11

    :goto_1e
    move-object v12, v1

    move-object v11, v13

    goto/16 :goto_19

    :cond_31
    const/4 v3, 0x0

    goto :goto_1b

    :cond_32
    move-object/from16 v0, v16

    if-ne v11, v0, :cond_2a

    if-ne v12, v11, :cond_2a

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_33

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_1f
    move-object v3, v1

    goto/16 :goto_1c

    :cond_33
    const/4 v1, 0x0

    goto :goto_1f

    :cond_34
    iget-object v5, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v5, :cond_35

    iget-object v1, v5, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :cond_35
    iget-object v6, v11, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v7, v6, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    move-object v6, v1

    goto/16 :goto_1d

    :cond_36
    if-eqz v17, :cond_1f

    if-eqz v16, :cond_1f

    move-object/from16 v0, p4

    iget v1, v0, Landroid/support/constraint/a/a/d;->j:I

    if-lez v1, :cond_37

    move-object/from16 v0, p4

    iget v1, v0, Landroid/support/constraint/a/a/d;->i:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/support/constraint/a/a/d;->j:I

    if-ne v1, v2, :cond_37

    const/4 v1, 0x1

    move v10, v1

    :goto_20
    move-object/from16 v13, v16

    move-object/from16 v12, v16

    :goto_21
    if-eqz v12, :cond_41

    iget-object v1, v12, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v1, v1, p2

    :goto_22
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->l()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_38

    iget-object v1, v1, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    aget-object v1, v1, p2

    goto :goto_22

    :cond_37
    const/4 v1, 0x0

    move v10, v1

    goto :goto_20

    :cond_38
    move-object/from16 v0, v16

    if-eq v12, v0, :cond_4b

    if-eq v12, v15, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v1, v15, :cond_4a

    const/4 v1, 0x0

    move-object v11, v1

    :goto_23
    iget-object v1, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v1, p3

    iget-object v2, v4, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_39

    iget-object v1, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :cond_39
    iget-object v1, v13, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v1, v3

    iget-object v3, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    if-eqz v11, :cond_3f

    iget-object v1, v11, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v1, p3

    iget-object v6, v5, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v1, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_3e

    iget-object v1, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_24
    move-object v7, v1

    :goto_25
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    add-int/2addr v8, v1

    :cond_3a
    if-eqz v13, :cond_3b

    iget-object v1, v13, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v5, p3, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    add-int/2addr v4, v1

    :cond_3b
    const/4 v9, 0x4

    if-eqz v10, :cond_3c

    const/4 v9, 0x6

    :cond_3c
    if-eqz v2, :cond_3d

    if-eqz v3, :cond_3d

    if-eqz v6, :cond_3d

    if-eqz v7, :cond_3d

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_3d
    :goto_26
    invoke-virtual {v12}, Landroid/support/constraint/a/a/f;->l()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_49

    move-object v1, v12

    :goto_27
    move-object v13, v1

    move-object v12, v11

    goto/16 :goto_21

    :cond_3e
    const/4 v1, 0x0

    goto :goto_24

    :cond_3f
    iget-object v5, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v5, :cond_40

    iget-object v1, v5, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :cond_40
    iget-object v6, v12, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v7, v6, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    move-object v6, v1

    goto :goto_25

    :cond_41
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, p3

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, p3

    iget-object v3, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v2, v15, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v10, v2, v4

    iget-object v2, v14, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v11, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_42

    move-object/from16 v0, v16

    if-eq v0, v15, :cond_43

    iget-object v2, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_42
    :goto_28
    if-eqz v11, :cond_1f

    move-object/from16 v0, v16

    if-eq v0, v15, :cond_1f

    iget-object v1, v10, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v2, v11, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto/16 :goto_12

    :cond_43
    if-eqz v11, :cond_42

    iget-object v2, v1, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    iget-object v7, v11, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v10}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_28

    :cond_44
    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_45
    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_46
    const/4 v1, 0x0

    goto/16 :goto_15

    :cond_47
    move-object v1, v15

    goto/16 :goto_17

    :cond_48
    move-object v7, v2

    move-object v9, v4

    goto/16 :goto_16

    :cond_49
    move-object v1, v13

    goto/16 :goto_27

    :cond_4a
    move-object v11, v1

    goto/16 :goto_23

    :cond_4b
    move-object v11, v1

    goto/16 :goto_26

    :cond_4c
    move-object v1, v12

    goto/16 :goto_1e

    :cond_4d
    move v3, v6

    goto/16 :goto_c
.end method
