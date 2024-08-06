.class public final Lcom/b/a/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/i;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/g/a/h",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/a/h",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/b/a/i/j;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/g/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public b(Lcom/b/a/g/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/b/a/i/j;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a/h;

    invoke-interface {v0}, Lcom/b/a/g/a/h;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/b/a/i/j;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a/h;

    invoke-interface {v0}, Lcom/b/a/g/a/h;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/b/a/i/j;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a/h;

    invoke-interface {v0}, Lcom/b/a/g/a/h;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
