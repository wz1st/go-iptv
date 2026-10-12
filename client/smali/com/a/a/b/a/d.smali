.class public abstract Lcom/a/a/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field public final b:Lcom/a/a/d/a;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/a;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/d;->c:Ljava/lang/Class;

    iput-object p2, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;D)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    return-void
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    :try_start_0
    iget-object v2, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-boolean v2, v2, Lcom/a/a/d/a;->d:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-boolean v1, v1, Lcom/a/a/d/a;->i:Z

    if-eqz v1, :cond_3

    const-class v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-boolean v0, v0, Lcom/a/a/d/a;->i:Z

    if-eqz v0, :cond_6

    const-class v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
