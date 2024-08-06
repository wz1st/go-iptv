.class Landroid/support/v17/leanback/widget/z;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/support/v4/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v17/leanback/widget/z;->b:I

    return-void
.end method

.method static d(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/support/v17/leanback/widget/z;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1
    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/z;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->a()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/e/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v17/leanback/widget/z;->d(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v1, v0}, Landroid/support/v4/e/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->d()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/z;->a:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/z;->e()V

    return-void
.end method

.method protected final b(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v17/leanback/widget/z;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/e/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/z;->b:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/z;->e()V

    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/z;->b(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/z;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->b:I

    return v0
.end method

.method protected e()V
    .locals 3

    const v2, 0x7fffffff

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->b:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/z;->b:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Landroid/support/v4/e/i;

    iget v1, p0, Landroid/support/v17/leanback/widget/z;->b:I

    invoke-direct {v0, v1}, Landroid/support/v4/e/i;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/z;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    invoke-virtual {v0}, Landroid/support/v4/e/i;->c()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_5
    new-instance v0, Landroid/support/v4/e/i;

    invoke-direct {v0, v2}, Landroid/support/v4/e/i;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/z;->c:Landroid/support/v4/e/i;

    goto :goto_0
.end method
