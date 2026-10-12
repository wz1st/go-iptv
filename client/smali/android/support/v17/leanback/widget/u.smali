.class abstract Landroid/support/v17/leanback/widget/u;
.super Landroid/support/v17/leanback/widget/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/u$a;
    }
.end annotation


# instance fields
.field protected j:Landroid/support/v4/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/c",
            "<",
            "Landroid/support/v17/leanback/widget/u$a;",
            ">;"
        }
    .end annotation
.end field

.field protected k:I

.field protected l:Ljava/lang/Object;

.field protected m:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/e;-><init>()V

    new-instance v0, Landroid/support/v4/e/c;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/e/c;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    return-void
.end method

.method private m(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/u;->k:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/u$a;->a:I

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->d:I

    sub-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v2

    if-gt v0, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/u$a;->b:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->d:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    return v1
.end method


# virtual methods
.method protected final a(III)I
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->i()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    add-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/u;->k:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v3

    new-instance v6, Landroid/support/v17/leanback/widget/u$a;

    invoke-direct {v6, p2, v4, v4}, Landroid/support/v17/leanback/widget/u$a;-><init>(III)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v2, v6}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->m:I

    iput v2, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    move-object v1, v2

    :goto_1
    iput p1, p0, Landroid/support/v17/leanback/widget/u;->f:I

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->k:I

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-gez v2, :cond_2

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->g:I

    :cond_2
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/u;->c:Z

    if-nez v2, :cond_6

    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    sub-int v5, p3, v2

    :goto_2
    if-eqz v0, :cond_3

    sub-int v2, v3, v5

    iput v2, v0, Landroid/support/v17/leanback/widget/u$a;->b:I

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    iget v0, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    return v0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    invoke-interface {v1, p1, v4, v2, v4}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aget-object v1, v1, v4

    goto :goto_1

    :cond_6
    iget v2, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    add-int v5, p3, v2

    goto :goto_2
.end method

.method protected final a(IZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->i(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/u;->c(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/u;->d(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    throw v1
.end method

.method public final a(II)[Landroid/support/v4/e/d;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/u;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->h:[Landroid/support/v4/e/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v4/e/d;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    :goto_1
    if-gt p1, p2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->h:[Landroid/support/v4/e/d;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/e/d;->d()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/e/d;->c()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/e/d;->a()I

    invoke-virtual {v0, p1}, Landroid/support/v4/e/d;->a(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/e/d;->a(I)V

    invoke-virtual {v0, p1}, Landroid/support/v4/e/d;->a(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->h:[Landroid/support/v4/e/d;

    return-object v0
.end method

.method protected final b(III)I
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->b()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/u;->m(I)I

    move-result v0

    :goto_0
    new-instance v6, Landroid/support/v17/leanback/widget/u$a;

    invoke-direct {v6, p2, v0, v1}, Landroid/support/v17/leanback/widget/u$a;-><init>(III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0, v6}, Landroid/support/v4/e/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->m:I

    iput v0, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->b()I

    move-result v0

    if-ne v0, v3, :cond_5

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->g:I

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->f:I

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->k:I

    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    iget v0, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->g:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    sub-int v0, p3, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    invoke-interface {v0, p1, v3, v2, v1}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aget-object v1, v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-gez v0, :cond_6

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->g:I

    iput p1, p0, Landroid/support/v17/leanback/widget/u;->f:I

    goto :goto_2

    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    goto :goto_2
.end method

.method protected final b(IZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/u;->e(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/u;->f(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    throw v1
.end method

.method protected final c(IZ)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/u;->f:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v2

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/u$a;->b:I

    iget v1, p0, Landroid/support/v17/leanback/widget/u;->f:I

    add-int/lit8 v4, v1, -0x1

    move v1, v0

    move v3, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->b()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->k:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v1

    move v8, v3

    move v2, v4

    :goto_2
    if-lt v2, v9, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v10

    iget v4, v10, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    invoke-interface {v0, v2, v6, v1, v6}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, v10, Landroid/support/v17/leanback/widget/u$a;->c:I

    if-eq v3, v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Landroid/support/v17/leanback/widget/u;->k:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/e/c;->a(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    iput v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iput-object v0, p0, Landroid/support/v17/leanback/widget/u;->l:Ljava/lang/Object;

    iput v3, p0, Landroid/support/v17/leanback/widget/u;->m:I

    goto :goto_0

    :cond_2
    const v2, 0x7fffffff

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->i:I

    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->i()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->a()V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->i()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v1, v6

    move v3, v2

    move v4, v0

    goto :goto_1

    :cond_6
    iput v2, p0, Landroid/support/v17/leanback/widget/u;->f:I

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-gez v0, :cond_7

    iput v2, p0, Landroid/support/v17/leanback/widget/u;->g:I

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aget-object v1, v1, v6

    sub-int v5, v8, v5

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v6, v7

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v3

    iget v1, v10, Landroid/support/v17/leanback/widget/u$a;->b:I

    if-nez v4, :cond_9

    if-eqz p2, :cond_9

    move v6, v7

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v2, -0x1

    move v5, v1

    move v8, v3

    goto/16 :goto_2
.end method

.method protected abstract d(IZ)Z
.end method

.method public e(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/e;->e(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/e/c;->b(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    :cond_0
    return-void
.end method

.method protected final e(IZ)Z
    .locals 11

    const v7, 0x7fffffff

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/e$b;->a()I

    move-result v10

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->g:I

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v1, p0, Landroid/support/v17/leanback/widget/u;->g:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v0

    move v5, v1

    :goto_2
    if-ge v2, v10, :cond_0

    if-gt v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v1

    if-eq v5, v7, :cond_2

    iget v3, v1, Landroid/support/v17/leanback/widget/u$a;->b:I

    add-int/2addr v5, v3

    :cond_2
    iget v4, v1, Landroid/support/v17/leanback/widget/u$a;->a:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    invoke-interface {v3, v2, v9, v8, v6}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v8, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    if-eq v3, v8, :cond_b

    iput v3, v1, Landroid/support/v17/leanback/widget/u$a;->c:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/e/c;->b(I)V

    move v8, v2

    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/u;->g:I

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->f:I

    if-gez v0, :cond_3

    iput v2, p0, Landroid/support/v17/leanback/widget/u;->f:I

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->a:[Ljava/lang/Object;

    aget-object v1, v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v6, v9

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->i:I

    :goto_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->i()I

    move-result v1

    if-ge v0, v1, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v0}, Landroid/support/v4/e/c;->a()V

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/u;->j()I

    move-result v1

    if-gt v0, v1, :cond_0

    move v1, v7

    move v2, v0

    goto :goto_1

    :cond_8
    if-ne v5, v7, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/u;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v5

    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/u;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_a

    if-eqz p2, :cond_a

    move v6, v9

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move v0, v8

    goto :goto_2

    :cond_b
    move v8, v0

    goto :goto_3
.end method

.method protected abstract f(IZ)Z
.end method

.method public synthetic g(I)Landroid/support/v17/leanback/widget/e$a;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/u;->l(I)Landroid/support/v17/leanback/widget/u$a;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    return v0
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v1}, Landroid/support/v4/e/c;->b()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final l(I)Landroid/support/v17/leanback/widget/u$a;
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/u;->k:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v1}, Landroid/support/v4/e/c;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/u;->j:Landroid/support/v4/e/c;

    invoke-virtual {v1, v0}, Landroid/support/v4/e/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    goto :goto_0
.end method
