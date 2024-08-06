.class public final Landroid/support/v4/widget/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/e/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/n",
            "<TT;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/HashSet",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This graph contains cyclic dependencies"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Landroid/support/v4/widget/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p1}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v1}, Landroid/support/v4/e/n;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/n;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/e;->a(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0}, Landroid/support/v4/e/n;->clear()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/e/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/widget/e;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v1}, Landroid/support/v4/e/n;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v2, v0}, Landroid/support/v4/e/n;->b(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/e;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/widget/e;->d:Ljava/util/HashSet;

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/e;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0}, Landroid/support/v4/e/n;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/e/n;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/n;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
