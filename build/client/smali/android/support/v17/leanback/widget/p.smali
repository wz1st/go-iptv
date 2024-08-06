.class public abstract Landroid/support/v17/leanback/widget/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/p$b;,
        Landroid/support/v17/leanback/widget/p$a;,
        Landroid/support/v17/leanback/widget/p$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:[F

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/p;->b:Ljava/util/List;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/p;->c:[I

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/v17/leanback/widget/p;->d:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/p;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method final a(I)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method final a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->c:[I

    aput p2, v0, p1

    return-void
.end method

.method final b(I)F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->d:[F

    aget v0, v0, p1

    return v0
.end method

.method b()V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/p;->a(I)I

    move-result v0

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/p;->a(I)I

    move-result v4

    if-ge v4, v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/high16 v0, -0x80000000

    if-ne v3, v0, :cond_3

    const v0, 0x7fffffff

    if-ne v4, v0, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto/16 :goto_0
.end method

.method final c()V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/p;->b(I)F

    move-result v0

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/p;->b(I)F

    move-result v4

    cmpg-float v0, v4, v3

    if-gez v0, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const v0, -0x800001

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/p;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/q;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/q;->a(Landroid/support/v17/leanback/widget/p;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
