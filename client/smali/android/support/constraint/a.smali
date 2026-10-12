.class public Landroid/support/constraint/a;
.super Landroid/support/constraint/b;


# instance fields
.field private f:I

.field private g:I

.field private h:Landroid/support/constraint/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/constraint/b;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/b;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/constraint/b;->a(Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/support/constraint/a/a/b;

    invoke-direct {v0}, Landroid/support/constraint/a/a/b;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a;->h:Landroid/support/constraint/a/a/b;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/constraint/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/f$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/constraint/a;->setType(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Landroid/support/constraint/a;->h:Landroid/support/constraint/a/a/b;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/support/constraint/a/a/b;->a(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a;->h:Landroid/support/constraint/a/a/b;

    iput-object v0, p0, Landroid/support/constraint/a;->d:Landroid/support/constraint/a/a/j;

    invoke-virtual {p0}, Landroid/support/constraint/a;->a()V

    return-void
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a;->f:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a;->h:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput p1, p0, Landroid/support/constraint/a;->f:I

    iput p1, p0, Landroid/support/constraint/a;->g:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v0, v3, :cond_2

    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v4, :cond_1

    iput v2, p0, Landroid/support/constraint/a;->g:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/a;->h:Landroid/support/constraint/a/a/b;

    iget v1, p0, Landroid/support/constraint/a;->g:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/b;->a(I)V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v5, :cond_0

    iput v1, p0, Landroid/support/constraint/a;->g:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v4, :cond_4

    iput v1, p0, Landroid/support/constraint/a;->g:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v5, :cond_0

    iput v2, p0, Landroid/support/constraint/a;->g:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v4, :cond_6

    iput v2, p0, Landroid/support/constraint/a;->g:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/support/constraint/a;->f:I

    if-ne v0, v5, :cond_0

    iput v1, p0, Landroid/support/constraint/a;->g:I

    goto :goto_0
.end method
