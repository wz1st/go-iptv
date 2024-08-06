.class final Landroid/support/v17/leanback/widget/f$b;
.super Landroid/support/v7/widget/RecyclerView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private i:I

.field private j:I

.field private k:[I

.field private l:Landroid/support/v17/leanback/widget/j;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView$j;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView$j;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$b;->i:I

    return v0
.end method

.method a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f$b;->i:I

    return-void
.end method

.method a(IIII)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f$b;->a:I

    iput p2, p0, Landroid/support/v17/leanback/widget/f$b;->b:I

    iput p3, p0, Landroid/support/v17/leanback/widget/f$b;->c:I

    iput p4, p0, Landroid/support/v17/leanback/widget/f$b;->d:I

    return-void
.end method

.method a(ILandroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->l:Landroid/support/v17/leanback/widget/j;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/j;->a()[Landroid/support/v17/leanback/widget/j$a;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    array-length v0, v0

    array-length v3, v2

    if-eq v0, v3, :cond_1

    :cond_0
    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    :cond_1
    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    aget-object v4, v2, v0

    invoke-static {p2, v4, p1}, Landroid/support/v17/leanback/widget/k;->a(Landroid/view/View;Landroid/support/v17/leanback/widget/j$a;I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f$b;->i:I

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f$b;->j:I

    goto :goto_1
.end method

.method a(Landroid/support/v17/leanback/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f$b;->l:Landroid/support/v17/leanback/widget/j;

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$b;->j:I

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f$b;->j:I

    return-void
.end method

.method c()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$b;->a:I

    return v0
.end method

.method c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$b;->c:I

    return v0
.end method

.method d(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$b;->b:I

    return v0
.end method

.method e(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/f$b;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method f()Landroid/support/v17/leanback/widget/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->l:Landroid/support/v17/leanback/widget/j;

    return-object v0
.end method

.method g()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$b;->k:[I

    return-object v0
.end method
