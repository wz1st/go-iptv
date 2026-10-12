.class Landroid/support/v17/leanback/widget/s;
.super Landroid/support/v17/leanback/widget/e;


# instance fields
.field private final j:Landroid/support/v17/leanback/widget/e$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/e;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/e$a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/s;->j:Landroid/support/v17/leanback/widget/e$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/s;->d(I)V

    return-void
.end method


# virtual methods
.method protected final a(ZI[I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_2

    if-lez p2, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->c()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ltz p2, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->i()I

    move-result v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v2, p0, Landroid/support/v17/leanback/widget/s;->g:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/s;->d:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/s;->g:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v3, :cond_4

    neg-int v0, v0

    :cond_4
    add-int/2addr v0, v2

    :goto_1
    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p3, v1, v0}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->j()I

    move-result v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v2, p0, Landroid/support/v17/leanback/widget/s;->f:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->d:I

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/s;->d:I

    neg-int v0, v0

    goto :goto_2
.end method

.method protected final a(IZ)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/s;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->b()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->j()I

    move-result v2

    move v0, v4

    :goto_1
    if-lt v2, v6, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->a:[Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v1, v4}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->f:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->g:I

    if-gez v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_5

    const/high16 v0, -0x80000000

    :goto_2
    iput v2, p0, Landroid/support/v17/leanback/widget/s;->f:I

    iput v2, p0, Landroid/support/v17/leanback/widget/s;->g:I

    move v5, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->a:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    const/4 v0, 0x1

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/s;->i(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    move v4, v0

    goto :goto_0

    :cond_5
    const v0, 0x7fffffff

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/s;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    :goto_4
    iput v2, p0, Landroid/support/v17/leanback/widget/s;->f:I

    move v5, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/s;->d:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public final a(II)[Landroid/support/v4/e/d;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->h:[Landroid/support/v4/e/d;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/e/d;->b()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->h:[Landroid/support/v4/e/d;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/e/d;->a(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->h:[Landroid/support/v4/e/d;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/e/d;->a(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->h:[Landroid/support/v4/e/d;

    return-object v0
.end method

.method protected final b(ZI[I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final b(IZ)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/s;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/s;->i()I

    move-result v2

    move v0, v4

    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->a:[Ljava/lang/Object;

    invoke-interface {v0, v2, v6, v1, v4}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->f:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->g:I

    if-gez v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_5

    const v0, 0x7fffffff

    :goto_2
    iput v2, p0, Landroid/support/v17/leanback/widget/s;->f:I

    iput v2, p0, Landroid/support/v17/leanback/widget/s;->g:I

    move v5, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->a:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    :goto_4
    move v4, v6

    goto :goto_0

    :cond_5
    const/high16 v0, -0x80000000

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/s;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/s;->d:I

    sub-int/2addr v0, v1

    :goto_5
    iput v2, p0, Landroid/support/v17/leanback/widget/s;->g:I

    move v5, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/s;->d:I

    add-int/2addr v0, v1

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move v0, v6

    goto :goto_1

    :cond_9
    move v6, v0

    goto :goto_4
.end method

.method public final g(I)Landroid/support/v17/leanback/widget/e$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->j:Landroid/support/v17/leanback/widget/e$a;

    return-object v0
.end method

.method i()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->g:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/s;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->i:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->f:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/s;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/s;->i:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/s;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
