.class final Landroid/support/v17/leanback/widget/q$a;
.super Landroid/support/v17/leanback/widget/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/q;-><init>()V

    return-void
.end method


# virtual methods
.method b(Landroid/support/v17/leanback/widget/p;)F
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    move v2, v0

    move v3, v0

    move v4, v0

    move v6, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/p$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/p$a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/p$a;->a()I

    move-result v7

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/p$b;->a(Landroid/support/v17/leanback/widget/p;)I

    move-result v1

    invoke-virtual {p1, v7}, Landroid/support/v17/leanback/widget/p;->a(I)I

    move-result v5

    if-nez v2, :cond_0

    if-lt v5, v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-ne v6, v7, :cond_1

    if-ge v3, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "marker value of same variable must be descendant order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x7fffffff

    if-ne v5, v0, :cond_2

    sub-int v0, v3, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/p;->a()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/q$a;->a(FI)F

    move-result v0

    goto :goto_1

    :cond_2
    if-lt v5, v1, :cond_5

    if-ne v6, v7, :cond_3

    sub-int v0, v3, v5

    int-to-float v0, v0

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/q$a;->a(FI)F

    move-result v0

    goto :goto_1

    :cond_3
    const/high16 v0, -0x80000000

    if-eq v4, v0, :cond_4

    sub-int v0, v5, v4

    add-int/2addr v0, v3

    sub-int v3, v0, v5

    int-to-float v3, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_2

    :cond_4
    sub-int v0, v5, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/p;->a()F

    move-result v1

    div-float/2addr v0, v1

    sub-float v0, v8, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    move v4, v5

    move v6, v7

    goto :goto_0

    :cond_6
    move v0, v8

    goto :goto_1
.end method

.method c(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Number;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must use two marker values for direct mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$c;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/p$c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$c;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/p$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Marker value must use same Property for direct mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/p$b;->a(Landroid/support/v17/leanback/widget/p;)I

    move-result v2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/p$b;->a(Landroid/support/v17/leanback/widget/p;)I

    move-result v0

    if-le v2, v0, :cond_4

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/q$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$c;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/p$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/p$a;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/p$a;->a(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v0

    move v3, v2

    goto :goto_0
.end method
