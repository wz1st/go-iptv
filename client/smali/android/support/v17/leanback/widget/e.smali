.class abstract Landroid/support/v17/leanback/widget/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/e$a;,
        Landroid/support/v17/leanback/widget/e$b;
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field protected b:Landroid/support/v17/leanback/widget/e$b;

.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:[Landroid/support/v4/e/d;

.field protected i:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/e;->a:[Ljava/lang/Object;

    iput v1, p0, Landroid/support/v17/leanback/widget/e;->f:I

    iput v1, p0, Landroid/support/v17/leanback/widget/e;->g:I

    iput v1, p0, Landroid/support/v17/leanback/widget/e;->i:I

    return-void
.end method

.method public static a(I)Landroid/support/v17/leanback/widget/e;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/s;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/s;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/v;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/v;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/e;->d(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    iget v1, p0, Landroid/support/v17/leanback/widget/e;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(ZI[I)I
.end method

.method public final a(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/e;->a(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    goto :goto_0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/e$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    return-void
.end method

.method public a([IILandroid/util/SparseIntArray;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-static {p1, v6, p2, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    neg-int v0, v0

    add-int/lit8 v1, v0, -0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v3, v2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/e;->d:I

    sub-int/2addr v0, v2

    :goto_1
    move v7, v1

    move v5, v0

    :goto_2
    if-ge v7, p2, :cond_4

    aget v2, p1, v7

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-gez v4, :cond_0

    move v4, v6

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/e;->a:[Ljava/lang/Object;

    invoke-interface {v0, v2, v8, v1, v8}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/e;->a:[Ljava/lang/Object;

    aget-object v1, v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_3

    sub-int v0, v5, v3

    iget v1, p0, Landroid/support/v17/leanback/widget/e;->d:I

    sub-int/2addr v0, v1

    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v5, v0

    goto :goto_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v3, v2}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/e;->d:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    add-int v0, v5, v3

    iget v1, p0, Landroid/support/v17/leanback/widget/e;->d:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v2

    if-ltz v2, :cond_6

    invoke-static {p1, v6, p2, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    :goto_4
    if-gez v0, :cond_9

    neg-int v0, v0

    add-int/lit8 v1, v0, -0x2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    :goto_5
    move v7, v1

    move v5, v0

    :goto_6
    if-ltz v7, :cond_9

    aget v2, p1, v7

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-gez v4, :cond_5

    move v4, v6

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/e;->a:[Ljava/lang/Object;

    invoke-interface {v0, v2, v6, v1, v8}, Landroid/support/v17/leanback/widget/e$b;->a(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->d:I

    add-int/2addr v0, v5

    add-int v5, v0, v3

    :goto_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/e;->a:[Ljava/lang/Object;

    aget-object v1, v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/e$b;->a(Ljava/lang/Object;IIII)V

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_6

    :cond_6
    move v0, v6

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    goto :goto_5

    :cond_8
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->d:I

    sub-int v0, v5, v0

    sub-int v5, v0, v3

    goto :goto_7

    :cond_9
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    return v0
.end method

.method protected abstract a(IZ)Z
.end method

.method public abstract a(II)[Landroid/support/v4/e/d;
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->e:I

    return v0
.end method

.method protected abstract b(ZI[I)I
.end method

.method public final b(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/e;->b(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/e;->d:I

    return-void
.end method

.method public b(II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->f:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    if-le v0, p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->g:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->g:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/e$b;->a(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->g:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v0

    if-gt v0, p2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/e;->i()V

    return-void
.end method

.method protected abstract b(IZ)Z
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/e;->i:I

    return-void
.end method

.method public c(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->f:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->f:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/e$b;->c(I)I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v4, p0, Landroid/support/v17/leanback/widget/e;->f:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v3

    add-int/2addr v0, v3

    if-gt v0, p2, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->f:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/e$b;->a(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/e;->b:Landroid/support/v17/leanback/widget/e$b;

    iget v4, p0, Landroid/support/v17/leanback/widget/e;->f:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/e$b;->b(I)I

    move-result v3

    sub-int v0, v3, v0

    if-lt v0, p2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/e;->i()V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    return v0
.end method

.method d(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->e:I

    if-ne v0, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iput p1, p0, Landroid/support/v17/leanback/widget/e;->e:I

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->e:I

    new-array v0, v0, [Landroid/support/v4/e/d;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/e;->h:[Landroid/support/v4/e/d;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/e;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/e;->h:[Landroid/support/v4/e/d;

    new-instance v2, Landroid/support/v4/e/d;

    invoke-direct {v2}, Landroid/support/v4/e/d;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    iput v0, p0, Landroid/support/v17/leanback/widget/e;->f:I

    return-void
.end method

.method public e(I)V
    .locals 1

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    if-lt v0, p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/e;->g:I

    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/e;->i()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/e;->c(I)V

    goto :goto_0
.end method

.method public final f(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/e;->g(I)Landroid/support/v17/leanback/widget/e$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/support/v17/leanback/widget/e$a;->a:I

    goto :goto_0
.end method

.method public final f()[Landroid/support/v4/e/d;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/e;->a(II)[Landroid/support/v4/e/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract g(I)Landroid/support/v17/leanback/widget/e$a;
.end method

.method public final g()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/e;->a(IZ)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/e;->b(IZ)Z

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected final h(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/widget/e;->g:I

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/e;->a(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->d:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/e;->b(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->d:I

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method protected final i(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/widget/e;->g:I

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/e;->c:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/e;->b(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->d:I

    sub-int v3, p1, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/e;->a(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/e;->d:I

    add-int/2addr v3, p1

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public final j(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/e;->a(IZ)Z

    return-void
.end method

.method public final k(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/e;->b(IZ)Z

    return-void
.end method
