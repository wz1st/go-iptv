.class Landroid/support/v7/c/a/d$a;
.super Landroid/support/v7/c/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field L:[[I


# direct methods
.method constructor <init>(Landroid/support/v7/c/a/d$a;Landroid/support/v7/c/a/d;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/c/a/b$b;-><init>(Landroid/support/v7/c/a/b$b;Landroid/support/v7/c/a/b;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/v7/c/a/d$a;->L:[[I

    iput-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/c/a/d$a;->c()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    goto :goto_0
.end method


# virtual methods
.method a([ILandroid/graphics/drawable/Drawable;)I
    .locals 2

    invoke-virtual {p0, p2}, Landroid/support/v7/c/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    aput-object p1, v1, v0

    return v0
.end method

.method a()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    array-length v0, v0

    new-array v2, v0, [[I

    iget-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    aget-object v0, v0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_1
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    return-void
.end method

.method b([I)I
    .locals 4

    iget-object v1, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    invoke-virtual {p0}, Landroid/support/v7/c/a/d$a;->d()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public e(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/c/a/b$b;->e(II)V

    new-array v0, p2, [[I

    iget-object v1, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/support/v7/c/a/d$a;->L:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/support/v7/c/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/c/a/d;-><init>(Landroid/support/v7/c/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/support/v7/c/a/d;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/c/a/d;-><init>(Landroid/support/v7/c/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
