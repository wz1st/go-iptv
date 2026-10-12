.class final Landroid/support/v17/leanback/widget/v;
.super Landroid/support/v17/leanback/widget/u;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/u;-><init>()V

    return-void
.end method

.method private b(Z)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-lt v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_0

    iget v4, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    :goto_1
    return v0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    :goto_2
    iget v3, p0, Landroid/support/v17/leanback/widget/v;->g:I

    if-gt v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget v4, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(ZI[I)I
    .locals 10

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v7

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v6

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v0

    sub-int v8, v7, v0

    add-int/lit8 v0, p2, -0x1

    move v1, v2

    move v3, v4

    move v5, v2

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v3, v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-lt v0, v2, :cond_7

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->b:I

    sub-int/2addr v7, v2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v6

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v2, v1, :cond_9

    iget v9, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    add-int/lit8 v2, v3, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1, v0}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v1

    sub-int v3, v7, v1

    if-eqz p1, :cond_1

    if-le v3, v8, :cond_2

    :cond_0
    move v1, v9

    move p2, v0

    move v5, v9

    move v8, v3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    goto :goto_0

    :cond_1
    if-lt v3, v8, :cond_0

    :cond_2
    move v1, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p2, 0x1

    move v1, v2

    move v3, v4

    move v5, v2

    move v6, v7

    move v8, v7

    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v3, v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->g:I

    if-gt v0, v2, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v7, v2, Landroid/support/v17/leanback/widget/u$a;->b:I

    add-int/2addr v7, v6

    iget v6, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v6, v1, :cond_6

    iget v1, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    add-int/lit8 v3, v3, 0x1

    if-eqz p1, :cond_5

    if-le v7, v8, :cond_6

    :cond_4
    move v2, v1

    move p2, v0

    move v5, v1

    move v8, v7

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v6, v7

    goto :goto_2

    :cond_5
    if-lt v7, v8, :cond_4

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    const/4 v0, 0x0

    aput v5, p3, v0

    aput p2, p3, v4

    :cond_8
    return v8

    :cond_9
    move v2, v3

    goto :goto_1
.end method

.method public b(ZI[I)I
    .locals 10

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v7

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v6

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    move v1, v2

    move v3, v4

    move v5, v2

    move v6, v7

    move v8, v7

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v3, v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->g:I

    if-gt v0, v2, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v7, v2, Landroid/support/v17/leanback/widget/u$a;->b:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v7, v1, :cond_9

    iget v9, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    add-int/lit8 v2, v3, 0x1

    if-eqz p1, :cond_1

    if-le v6, v8, :cond_2

    :cond_0
    move v1, v9

    move p2, v0

    move v5, v9

    move v7, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v8, v7

    goto :goto_0

    :cond_1
    if-lt v6, v8, :cond_0

    :cond_2
    move v1, v9

    move v7, v8

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v0

    add-int v8, v7, v0

    add-int/lit8 v0, p2, -0x1

    move v1, v2

    move v3, v4

    move v5, v2

    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v3, v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-lt v0, v2, :cond_7

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->b:I

    sub-int/2addr v7, v2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v6

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v2, v1, :cond_6

    iget v1, v6, Landroid/support/v17/leanback/widget/u$a;->a:I

    add-int/lit8 v3, v3, 0x1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v2, v0}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v2

    add-int v9, v7, v2

    if-eqz p1, :cond_5

    if-le v9, v8, :cond_6

    :cond_4
    move v2, v1

    move p2, v0

    move v5, v1

    move v8, v9

    :goto_3
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_2

    :cond_5
    if-lt v9, v8, :cond_4

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    const/4 v0, 0x0

    aput v5, p3, v0

    aput p2, p3, v4

    :cond_8
    return v8

    :cond_9
    move v2, v3

    move v7, v8

    goto :goto_1
.end method

.method protected d(IZ)Z
    .locals 11

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->i()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    add-int/lit8 v5, v0, -0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    iget v1, v0, Landroid/support/v17/leanback/widget/u$a;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/v;->b(Z)I

    move-result v0

    if-gez v0, :cond_6

    add-int/lit8 v1, v1, -0x1

    const v0, 0x7fffffff

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    :goto_2
    const v3, 0x7fffffff

    if-eq v0, v3, :cond_5

    :cond_1
    :goto_3
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v2

    if-lt v2, v0, :cond_2

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v1, v0, -0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/v;->b(Z[I)I

    move-result v0

    :cond_2
    :goto_5
    const/4 v2, 0x1

    move v3, v0

    move v4, v1

    :goto_6
    const/4 v8, 0x0

    move v6, v2

    move v7, v3

    move v9, v4

    move v10, v5

    :goto_7
    if-ltz v9, :cond_1e

    if-ltz v10, :cond_3

    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/v;->i(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/support/v17/leanback/widget/v;->b(ZI[I)I

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/support/v17/leanback/widget/v;->a(ZI[I)I

    move-result v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v2

    if-gt v2, v0, :cond_2

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/v;->a(Z[I)I

    move-result v0

    goto :goto_5

    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->i:I

    :goto_8
    iget-object v1, p0, Landroid/support/v17/leanback/widget/v;->j:Landroid/support/v4/e/c;

    invoke-virtual {v1}, Landroid/support/v4/e/c;->b()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_9
    iget v2, p0, Landroid/support/v17/leanback/widget/v;->e:I

    rem-int v4, v1, v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v5, v0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    move v1, v0

    goto :goto_9

    :cond_d
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    move v1, v0

    :goto_a
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_e

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_16

    :cond_e
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v1

    :goto_b
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_21

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_21

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->d:I

    :goto_c
    add-int/2addr v0, v1

    :goto_d
    add-int/lit8 v3, v10, -0x1

    invoke-virtual {p0, v10, v9, v0}, Landroid/support/v17/leanback/widget/v;->a(III)I

    move-result v1

    const/4 v5, 0x1

    if-eqz v6, :cond_1c

    move v2, v0

    :goto_e
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_18

    add-int v0, v2, v1

    if-ge v0, v7, :cond_19

    :cond_f
    if-ltz v3, :cond_10

    if-nez p2, :cond_1a

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/v;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    move v0, v5

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    move v1, v0

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v1

    goto :goto_b

    :cond_13
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->d:I

    neg-int v0, v0

    goto :goto_c

    :cond_14
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_15

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    goto :goto_d

    :cond_15
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    goto :goto_d

    :cond_16
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->d:I

    :goto_f
    add-int/2addr v0, v1

    goto :goto_d

    :cond_17
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->d:I

    neg-int v0, v0

    goto :goto_f

    :cond_18
    sub-int v0, v2, v1

    if-gt v0, v7, :cond_f

    :cond_19
    move v1, v6

    move v0, v7

    :goto_10
    add-int/lit8 v4, v9, -0x1

    move v8, v5

    move v6, v1

    move v7, v0

    move v9, v4

    move v10, v3

    goto/16 :goto_7

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->d:I

    add-int/2addr v0, v1

    :goto_11
    add-int/2addr v2, v0

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v3, v9, v2}, Landroid/support/v17/leanback/widget/v;->a(III)I

    move-result v0

    move v1, v0

    move v3, v4

    goto :goto_e

    :cond_1b
    neg-int v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/v;->d:I

    sub-int/2addr v0, v1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    goto :goto_10

    :cond_1d
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    goto :goto_10

    :cond_1e
    if-eqz p2, :cond_1f

    move v0, v8

    goto/16 :goto_0

    :cond_1f
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/v;->b(Z[I)I

    move-result v0

    :goto_12
    iget v1, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v4, v1, -0x1

    move v7, v0

    move v9, v4

    goto/16 :goto_7

    :cond_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/v;->a(Z[I)I

    move-result v0

    goto :goto_12

    :cond_21
    move v0, v1

    goto/16 :goto_d
.end method

.method protected f(IZ)Z
    .locals 13

    const v12, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v10

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->j()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v7, v1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    add-int/lit8 v7, v0, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    iget v4, v0, Landroid/support/v17/leanback/widget/u$a;->a:I

    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/v;->b(Z)I

    move-result v0

    if-gez v0, :cond_a

    move v0, v1

    move v2, v3

    :goto_1
    iget v5, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v0, v5, :cond_2

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v2

    :goto_2
    if-eq v2, v3, :cond_9

    :cond_2
    :goto_3
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    if-gt v0, v2, :cond_3

    :goto_4
    add-int/lit8 v0, v4, 0x1

    iget v4, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ne v0, v4, :cond_21

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, v11}, Landroid/support/v17/leanback/widget/v;->a(Z[I)I

    move-result v0

    :goto_5
    move v2, v0

    move v4, v1

    :cond_3
    :goto_6
    move v5, v6

    move v0, v7

    :goto_7
    move v7, v1

    :goto_8
    iget v8, p0, Landroid/support/v17/leanback/widget/v;->e:I

    if-ge v4, v8, :cond_1e

    if-eq v0, v10, :cond_0

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/v;->h(I)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v7, :cond_11

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v7

    move v8, v7

    :goto_9
    if-eq v8, v12, :cond_5

    if-ne v8, v3, :cond_16

    :cond_5
    if-nez v4, :cond_14

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v7, :cond_12

    iget v7, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v8

    :goto_a
    if-eq v8, v12, :cond_20

    if-eq v8, v3, :cond_20

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v7, :cond_13

    iget v7, p0, Landroid/support/v17/leanback/widget/v;->d:I

    neg-int v7, v7

    :goto_b
    add-int/2addr v7, v8

    :goto_c
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p0, v0, v4, v7}, Landroid/support/v17/leanback/widget/v;->b(III)I

    move-result v0

    if-eqz v5, :cond_1c

    :goto_d
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v9, :cond_18

    sub-int v9, v7, v0

    if-le v9, v2, :cond_19

    :cond_6
    if-eq v8, v10, :cond_7

    if-nez p2, :cond_1a

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/v;->h(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_7
    move v7, v6

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v2

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1, v0, v11}, Landroid/support/v17/leanback/widget/v;->a(ZI[I)I

    move-result v0

    :goto_e
    move v2, v0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0, v6, v0, v11}, Landroid/support/v17/leanback/widget/v;->b(ZI[I)I

    move-result v0

    goto :goto_e

    :cond_c
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    if-lt v0, v2, :cond_3

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p0, v6, v11}, Landroid/support/v17/leanback/widget/v;->b(Z[I)I

    move-result v0

    goto :goto_5

    :cond_e
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->i:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->i:I

    :goto_f
    iget-object v2, p0, Landroid/support/v17/leanback/widget/v;->j:Landroid/support/v4/e/c;

    invoke-virtual {v2}, Landroid/support/v4/e/c;->b()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->j()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    add-int/lit8 v2, v2, 0x1

    :goto_10
    iget v4, p0, Landroid/support/v17/leanback/widget/v;->e:I

    rem-int v4, v2, v4

    move v5, v1

    move v2, v1

    goto/16 :goto_7

    :cond_f
    move v0, v1

    goto :goto_f

    :cond_10
    move v2, v0

    goto :goto_10

    :cond_11
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v7

    move v8, v7

    goto/16 :goto_9

    :cond_12
    iget v7, p0, Landroid/support/v17/leanback/widget/v;->e:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v8

    goto/16 :goto_a

    :cond_13
    iget v7, p0, Landroid/support/v17/leanback/widget/v;->d:I

    goto :goto_b

    :cond_14
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v7, :cond_15

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v7

    goto/16 :goto_c

    :cond_15
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v7

    goto/16 :goto_c

    :cond_16
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v7, :cond_17

    iget v7, p0, Landroid/support/v17/leanback/widget/v;->d:I

    neg-int v7, v7

    :goto_11
    add-int/2addr v7, v8

    goto/16 :goto_c

    :cond_17
    iget v7, p0, Landroid/support/v17/leanback/widget/v;->d:I

    goto :goto_11

    :cond_18
    add-int v9, v7, v0

    if-lt v9, v2, :cond_6

    :cond_19
    move v0, v8

    :goto_12
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    goto/16 :goto_8

    :cond_1a
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v9, :cond_1b

    neg-int v0, v0

    iget v9, p0, Landroid/support/v17/leanback/widget/v;->d:I

    sub-int/2addr v0, v9

    :goto_13
    add-int/2addr v7, v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v8, v4, v7}, Landroid/support/v17/leanback/widget/v;->b(III)I

    move-result v0

    move v8, v9

    goto/16 :goto_d

    :cond_1b
    iget v9, p0, Landroid/support/v17/leanback/widget/v;->d:I

    add-int/2addr v0, v9

    goto :goto_13

    :cond_1c
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->n(I)I

    move-result v0

    move v2, v0

    :goto_14
    move v5, v6

    move v0, v8

    goto :goto_12

    :cond_1d
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/v;->m(I)I

    move-result v0

    move v2, v0

    goto :goto_14

    :cond_1e
    if-nez p2, :cond_0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v1, v11}, Landroid/support/v17/leanback/widget/v;->a(Z[I)I

    move-result v2

    :goto_15
    move v4, v1

    goto/16 :goto_8

    :cond_1f
    invoke-virtual {p0, v6, v11}, Landroid/support/v17/leanback/widget/v;->b(Z[I)I

    move-result v2

    goto :goto_15

    :cond_20
    move v7, v8

    goto/16 :goto_c

    :cond_21
    move v4, v0

    goto/16 :goto_6
.end method

.method m(I)I
    .locals 5

    const/high16 v3, -0x80000000

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-gez v0, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v1

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->j()I

    move-result v2

    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v4, v2, Landroid/support/v17/leanback/widget/u$a;->b:I

    add-int/2addr v1, v4

    iget v2, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v2

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-ne v0, p1, :cond_3

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    add-int v1, v2, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->i()I

    move-result v4

    if-lt v0, v4, :cond_5

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->b:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v4, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-ne v4, p1, :cond_4

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    add-int v1, v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method n(I)I
    .locals 5

    const v3, 0x7fffffff

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    if-gez v0, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/v;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v2

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-ne v0, p1, :cond_2

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    sub-int v1, v2, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/v;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->i()I

    move-result v4

    if-lt v0, v4, :cond_5

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->b:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v4, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-ne v4, p1, :cond_3

    iget v0, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    sub-int v1, v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/v;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v1

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/v;->f:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/v;->j()I

    move-result v2

    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/v;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v4, v2, Landroid/support/v17/leanback/widget/u$a;->b:I

    add-int/2addr v1, v4

    iget v2, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_0
.end method
