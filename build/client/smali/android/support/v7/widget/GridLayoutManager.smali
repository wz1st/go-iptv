.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Landroid/support/v7/widget/GridLayoutManager$c;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(FI)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->f(I)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;IIZ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    :goto_0
    if-eq v2, p3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager;->q(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    iput v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    move v1, v0

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->f()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->P()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v2, v1

    :goto_0
    invoke-direct {p0, p1, v2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->f()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    move v0, v1

    goto :goto_0
.end method

.method static a([III)[I
    .locals 7

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    :cond_1
    aput v4, p0, v4

    div-int v1, p2, p1

    rem-int v6, p2, p1

    const/4 v0, 0x1

    move v3, v0

    move v2, v4

    move v5, v4

    :goto_0
    if-gt v3, p1, :cond_2

    add-int/2addr v2, v6

    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v6, :cond_3

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, p1

    :goto_1
    add-int v4, v5, v0

    aput v4, p0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    if-eqz v0, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    if-lez v0, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    move v0, v1

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    if-le v1, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_2

    :cond_2
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private f(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->a([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private k()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->l()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->Q()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->U()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->S()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->f(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->R()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->V()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->T()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_4

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$j;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_7

    move-object v0, v2

    move-object v4, v3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 26

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->r(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v19, v0

    iget v5, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    add-int v20, v5, v4

    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->e(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v8, v4

    :goto_4
    const/4 v15, 0x0

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v21

    move/from16 v17, v7

    :goto_5
    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->x(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_8

    :cond_3
    if-eqz v15, :cond_16

    :goto_6
    move-object v12, v15

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v4

    move v5, v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    move v8, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v0, v21

    if-eq v4, v0, :cond_a

    if-nez v15, :cond_3

    :cond_9
    move v4, v9

    move v7, v10

    :goto_7
    add-int v12, v17, v6

    move/from16 v17, v12

    move v9, v4

    move v10, v7

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v22, v0

    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v16, v0

    add-int v23, v7, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_b

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_c

    if-eqz v15, :cond_d

    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_f

    if-nez v11, :cond_f

    :cond_d
    const/4 v7, 0x1

    :cond_e
    :goto_8
    if-eqz v7, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_15

    iget v14, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v13, v4, v7

    move v4, v9

    move v7, v10

    move-object v15, v12

    goto :goto_7

    :cond_f
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    sub-int v16, v24, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v24

    if-eqz v24, :cond_12

    move/from16 v0, v16

    if-le v0, v13, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    move/from16 v0, v16

    if-ne v0, v13, :cond_e

    move/from16 v0, v22

    if-le v0, v14, :cond_11

    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    const/4 v7, 0x1

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    goto :goto_9

    :cond_12
    if-nez v15, :cond_e

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v24

    if-eqz v24, :cond_e

    move/from16 v0, v16

    if-le v0, v9, :cond_13

    const/4 v7, 0x1

    goto :goto_8

    :cond_13
    move/from16 v0, v16

    if-ne v0, v9, :cond_e

    move/from16 v0, v22

    if-le v0, v10, :cond_14

    const/16 v16, 0x1

    :goto_a
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    const/4 v7, 0x1

    goto :goto_8

    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    :cond_15
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v11, v12

    goto/16 :goto_7

    :cond_16
    move-object v15, v11

    goto/16 :goto_6
.end method

.method public a(I)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-ge p1, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->G()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->S()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->U()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->T()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->V()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->aa()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->Z()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->f(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->Z()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->aa()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->k()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->j()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 13

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->i()I

    move-result v11

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_2

    const/4 v1, 0x1

    move v7, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v1, v1, v2

    move v10, v1

    :goto_1
    if-eqz v7, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()V

    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v6, 0x1

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-nez v6, :cond_1

    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    :goto_3
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v4, v2, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-lez v1, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v3

    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v3, v8, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v3

    if-gez v1, :cond_7

    :cond_6
    if-nez v4, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    :goto_4
    return-void

    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    add-int/2addr v5, v3

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;IIZ)V

    const/4 v1, 0x0

    move v5, v1

    move v3, v8

    move v2, v9

    :goto_5
    if-ge v5, v4, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v1, v5

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v1, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->o(Landroid/view/View;)V

    :goto_6
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v8, v11, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v12, v8}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    int-to-float v1, v1

    div-float v1, v8, v1

    cmpl-float v8, v1, v3

    if-lez v8, :cond_1b

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v3, v1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->n(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    :cond_d
    if-eqz v7, :cond_e

    invoke-direct {p0, v3, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(FI)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v4, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_1a

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    move v5, v1

    :goto_a
    if-ge v5, v4, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v1, v5

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v3, v1, Landroid/support/v7/widget/GridLayoutManager$b;->f:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v3

    sub-int v1, v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_b
    const/4 v7, 0x1

    invoke-direct {p0, v6, v3, v1, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    :cond_f
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_a

    :cond_10
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    goto :goto_b

    :cond_11
    move-object/from16 v0, p4

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    sub-int v2, v1, v2

    :goto_c
    const/4 v3, 0x0

    move v10, v1

    move v8, v2

    move v9, v5

    move v7, v6

    :goto_d
    if-ge v3, v4, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->S()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    sub-int/2addr v7, v9

    aget v5, v5, v7

    add-int v9, v2, v5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v2

    sub-int v7, v9, v2

    :goto_e
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$b;->j()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$b;->k()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    :cond_13
    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    :cond_14
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    add-int v1, v3, v2

    move v2, v3

    goto :goto_c

    :cond_15
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_16

    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    sub-int v6, v5, v2

    move v2, v3

    goto :goto_c

    :cond_16
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    add-int v5, v6, v2

    move v2, v3

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->S()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v7, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    aget v5, v5, v7

    add-int v7, v2, v5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v2

    add-int v9, v7, v2

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->T()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    aget v5, v5, v8

    add-int v8, v2, v5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v2

    add-int v10, v8, v2

    goto :goto_e

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v3

    goto/16 :goto_7
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/f/a/b;)V
    .locals 8

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/f/a/b;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->l()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_2

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/f/a/b$c;->a(IIIIZZ)Landroid/support/v4/f/a/b$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/f/a/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/f/a/b$c;->a(IIIIZZ)Landroid/support/v4/f/a/b$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/f/a/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public q()Landroid/support/v7/widget/RecyclerView$j;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
