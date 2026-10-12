.class public Landroid/support/constraint/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/support/constraint/a/a/f;)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/f;->H:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->j(I)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->k(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2
.end method

.method private static a(Landroid/support/constraint/a/a/f;I)I
    .locals 5

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    iget-object v0, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v3, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v0, v3, :cond_1

    iget-object v0, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v3, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/f;->f(I)I

    move-result v3

    if-nez p1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->S:F

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->f(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->e()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/f;->T:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/support/constraint/a/a/f;IZI)I
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/constraint/a/a/f;->W:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    move v13, v3

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->A()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->A()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v6, v7, 0x1

    move v4, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, v7

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_5

    const/4 v3, -0x1

    move v10, v3

    move v11, v7

    move v12, v6

    :goto_3
    if-eqz v13, :cond_2

    sub-int p3, p3, v5

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v3

    mul-int/2addr v3, v10

    invoke-static/range {p0 .. p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;I)I

    move-result v6

    add-int v14, v3, v6

    add-int v15, v14, p3

    if-nez p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    :goto_4
    mul-int v16, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v8

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/a/a/o;

    check-cast v3, Landroid/support/constraint/a/a/m;

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1, v15}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;IZI)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v3

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    move v13, v3

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->A()I

    move-result v4

    sub-int v5, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->A()I

    move-result v3

    mul-int/lit8 v6, p1, 0x2

    add-int/lit8 v7, v6, 0x1

    move v4, v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    move v10, v3

    move v11, v6

    move v12, v7

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v3

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v7, v9

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/a/a/o;

    check-cast v3, Landroid/support/constraint/a/a/m;

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    add-int v9, v16, v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1, v9}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;IZI)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v3

    goto :goto_6

    :cond_8
    if-eqz v13, :cond_9

    sub-int/2addr v6, v5

    add-int v3, v7, v4

    move v7, v3

    move v8, v6

    :goto_7
    const/4 v3, 0x0

    const/4 v6, 0x1

    move/from16 v0, p1

    if-ne v0, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    iget-object v6, v6, Landroid/support/constraint/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v3

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/a/a/o;

    check-cast v3, Landroid/support/constraint/a/a/m;

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    add-int v17, v5, v15

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v3, v0, v1, v2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;IZI)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_9
    move v6, v3

    goto :goto_8

    :cond_9
    if-nez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v3

    :goto_a
    mul-int/2addr v3, v10

    add-int/2addr v3, v7

    move v7, v3

    move v8, v6

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v3

    goto :goto_a

    :cond_b
    iget-object v3, v3, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    mul-int v17, v4, v10

    add-int v17, v17, v15

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v3, v0, v1, v2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;IZI)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_d

    if-nez v13, :cond_d

    const/4 v3, 0x1

    if-ne v10, v3, :cond_f

    add-int/2addr v6, v5

    :cond_d
    :goto_b
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v14

    add-int v5, p3, v14

    add-int v6, v5, v16

    const/4 v4, -0x1

    if-ne v10, v4, :cond_11

    move v4, v5

    move v7, v6

    :goto_c
    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v7}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/f;II)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v7, v4, v1}, Landroid/support/constraint/a/a/f;->a(III)V

    :goto_d
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/a/a/f;->t(I)Landroid/support/constraint/a/a/f$a;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/f;I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v4, v12

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v4, v4, v11

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, v12

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    if-ne v5, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, v11

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    if-ne v5, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/f;I)V

    goto/16 :goto_0

    :cond_f
    sub-int/2addr v6, v4

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/f;I)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Landroid/support/constraint/a/a/f;->e(II)V

    goto :goto_d

    :cond_11
    move v4, v6

    move v7, v5

    goto :goto_c

    :cond_12
    move v6, v3

    goto/16 :goto_b
.end method

.method private static a(Landroid/support/constraint/a/a/h;I)I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/h;->a(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v2

    move v4, v2

    :goto_0
    if-ge v3, v7, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v8, v5, 0x1

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v5

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v8, v5, 0x1

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, p1, v1, v2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;IZI)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/h;->e:[I

    aput v4, v0, p1

    return v4
.end method

.method private static a(Landroid/support/constraint/a/a/e;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eq v1, p0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/o;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/f;II)V
    .locals 7

    const/4 v1, 0x1

    mul-int/lit8 v2, p1, 0x2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v3, v0, v2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v0, v4

    iget-object v0, v3, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;I)I

    move-result v0

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/f;II)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->t(I)Landroid/support/constraint/a/a/f$a;

    move-result-object v0

    sget-object v5, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v5, :cond_2

    invoke-static {p0}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;)I

    move-result v0

    iget-object v5, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v2, v2, Landroid/support/constraint/a/a/m;->f:F

    float-to-int v2, v2

    add-int v5, v2, v0

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v6

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    iput-object v3, v6, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    int-to-float v0, v0

    iput v0, v3, Landroid/support/constraint/a/a/m;->f:F

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/a/a/m;->i:I

    invoke-virtual {p0, v2, v5, p1}, Landroid/support/constraint/a/a/f;->a(III)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->p(I)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->f(I)I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/constraint/a/a/f;->a(III)V

    invoke-static {p0, p1, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/f;II)V

    goto :goto_1
.end method

.method public static a(Landroid/support/constraint/a/a/g;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->J()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/constraint/a/a/a;->b(Landroid/support/constraint/a/a/g;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Landroid/support/constraint/a/a/g;->ax:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/g;->as:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/g;->at:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/g;->au:Z

    iget-object v5, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v0

    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v4, :cond_3

    move v6, v2

    :goto_2
    if-nez v1, :cond_1

    if-eqz v6, :cond_4

    :cond_1
    move v4, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    const/4 v9, 0x0

    iput-object v9, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iput-boolean v3, v0, Landroid/support/constraint/a/a/f;->Y:Z

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->b()V

    goto :goto_4

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    iget-object v8, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    if-nez v8, :cond_6

    invoke-static {v0, v7, v4}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Landroid/support/constraint/a/a/a;->b(Landroid/support/constraint/a/a/g;)V

    iput-boolean v3, p0, Landroid/support/constraint/a/a/g;->ax:Z

    goto :goto_0

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    move v5, v3

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/h;

    invoke-static {v0, v3}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/h;I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/h;I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    sget-object v0, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/f$a;)V

    invoke-virtual {p0, v5}, Landroid/support/constraint/a/a/g;->j(I)V

    iput-boolean v2, p0, Landroid/support/constraint/a/a/g;->as:Z

    iput-boolean v2, p0, Landroid/support/constraint/a/a/g;->at:Z

    iput v5, p0, Landroid/support/constraint/a/a/g;->av:I

    :cond_9
    if-eqz v6, :cond_a

    sget-object v0, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->b(Landroid/support/constraint/a/a/f$a;)V

    invoke-virtual {p0, v4}, Landroid/support/constraint/a/a/g;->k(I)V

    iput-boolean v2, p0, Landroid/support/constraint/a/a/g;->as:Z

    iput-boolean v2, p0, Landroid/support/constraint/a/a/g;->au:Z

    iput v4, p0, Landroid/support/constraint/a/a/g;->aw:I

    :cond_a
    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v0

    invoke-static {v7, v3, v0}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v0

    invoke-static {v7, v2, v0}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/support/constraint/a/a/h;->d:Z

    iput-boolean v0, p0, Landroid/support/constraint/a/a/g;->ax:Z

    iput-boolean v0, p1, Landroid/support/constraint/a/a/f;->W:Z

    return-void
.end method

.method public static a(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/a/a/h;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/h;->b(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    iget-boolean v4, v0, Landroid/support/constraint/a/a/f;->W:Z

    if-eqz v4, :cond_0

    invoke-static {v0, p1, p2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;II)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/a/a/f;",
            "Landroid/support/constraint/a/a/h;",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/a/a/h;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move v3, v2

    :cond_0
    :goto_0
    return v3

    :cond_1
    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->X:Z

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/g;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    if-nez v1, :cond_1a

    iput-boolean v2, p0, Landroid/support/constraint/a/a/f;->W:Z

    iget-object v1, p1, Landroid/support/constraint/a/a/h;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_2

    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    if-nez p3, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v4

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v4

    if-eq v1, v4, :cond_6

    :cond_5
    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    :cond_6
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_7

    :cond_7
    if-eqz p3, :cond_8

    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v4

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v4

    if-eq v1, v4, :cond_a

    :cond_9
    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_16

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_17

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-eqz v1, :cond_18

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_18

    invoke-static {p0}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;)I

    :cond_b
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_f

    :cond_c
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_d

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_10

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_10

    :cond_f
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_10

    instance-of v1, p0, Landroid/support/constraint/a/a/i;

    if-nez v1, :cond_10

    instance-of v1, p0, Landroid/support/constraint/a/a/j;

    if-nez v1, :cond_10

    iget-object v1, p1, Landroid/support/constraint/a/a/h;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_14

    :cond_11
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_14

    :cond_12
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_13

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_14

    :cond_13
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_15

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-ne v1, v4, :cond_15

    :cond_14
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_15

    instance-of v1, p0, Landroid/support/constraint/a/a/i;

    if-nez v1, :cond_15

    instance-of v1, p0, Landroid/support/constraint/a/a/j;

    if-nez v1, :cond_15

    iget-object v1, p1, Landroid/support/constraint/a/a/h;->g:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    instance-of v1, p0, Landroid/support/constraint/a/a/j;

    if-eqz v1, :cond_1d

    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    if-nez p3, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/support/constraint/a/a/j;

    move v4, v3

    :goto_3
    iget v5, v1, Landroid/support/constraint/a/a/j;->aj:I

    if-ge v4, v5, :cond_1d

    iget-object v5, v1, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;Ljava/util/List;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_16
    move v1, v3

    goto/16 :goto_1

    :cond_17
    move v4, v3

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v1, v4, :cond_19

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_b

    :cond_19
    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    if-eqz p3, :cond_b

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    if-eq v0, p1, :cond_1c

    iget-object v0, p1, Landroid/support/constraint/a/a/h;->a:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-object v1, v1, Landroid/support/constraint/a/a/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/support/constraint/a/a/h;->f:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-object v1, v1, Landroid/support/constraint/a/a/h;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/support/constraint/a/a/h;->g:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-object v1, v1, Landroid/support/constraint/a/a/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-boolean v0, v0, Landroid/support/constraint/a/a/h;->d:Z

    if-nez v0, :cond_1b

    iput-boolean v3, p1, Landroid/support/constraint/a/a/h;->d:Z

    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iget-object v0, v0, Landroid/support/constraint/a/a/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    iput-object p1, v0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    goto :goto_4

    :cond_1c
    move v3, v2

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    array-length v4, v1

    move v1, v3

    :goto_5
    if-ge v1, v4, :cond_20

    iget-object v5, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v5, v5, v1

    iget-object v6, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v6, :cond_1e

    iget-object v6, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v7

    if-eq v6, v7, :cond_1e

    iget-object v6, v5, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v7, Landroid/support/constraint/a/a/e$c;->g:Landroid/support/constraint/a/a/e$c;

    if-ne v6, v7, :cond_1f

    invoke-static {v0, p0, p1}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;)V

    if-nez p3, :cond_0

    :goto_6
    iget-object v5, v5, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-static {v5, p1, p2, p3}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;Ljava/util/List;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    invoke-static {v5}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/e;)V

    goto :goto_6

    :cond_20
    move v3, v2

    goto/16 :goto_0
.end method

.method private static a(Landroid/support/constraint/a/a/f;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/a/a/f;",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/a/a/h;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v0, Landroid/support/constraint/a/a/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/a/a/h;-><init>(Ljava/util/List;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1, p2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/h;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/support/constraint/a/a/g;)V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/constraint/a/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/support/constraint/a/a/h;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
