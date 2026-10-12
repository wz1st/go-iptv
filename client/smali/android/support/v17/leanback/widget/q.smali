.class public abstract Landroid/support/v17/leanback/widget/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/q$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/p$c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/q;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/q;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/q;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/q;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(FI)F
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->c:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/q;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->b:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    div-float v1, v0, v2

    if-lt p2, v3, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->c:Ljava/util/List;

    add-int/lit8 v3, p2, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    div-float v0, p1, v1

    if-lt p2, v3, :cond_0

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public final a(Landroid/support/v17/leanback/widget/p;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    instance-of v1, p0, Landroid/support/v17/leanback/widget/q$a;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/p;->b()V

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v0

    move v3, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/r;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/r;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/q;->c(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Number;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/r;->a(Ljava/lang/Number;)V

    move v0, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/p;->c()V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/q;->b(Landroid/support/v17/leanback/widget/p;)F

    move-result v2

    :cond_5
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/r;->a(F)V

    move v0, v2

    goto :goto_2
.end method

.method abstract b(Landroid/support/v17/leanback/widget/p;)F
.end method

.method abstract c(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Number;
.end method
