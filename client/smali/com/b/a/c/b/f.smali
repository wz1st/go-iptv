.class final Lcom/b/a/c/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/b/a/e;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Lcom/b/a/c/b/g$d;

.field private i:Lcom/b/a/c/j;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscode;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Lcom/b/a/c/h;

.field private o:Lcom/b/a/g;

.field private p:Lcom/b/a/c/b/i;

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/b/a/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/b/a/c/d",
            "<TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/h;->a(Ljava/lang/Object;)Lcom/b/a/c/d;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/h;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    iput-object v0, p0, Lcom/b/a/c/b/f;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/b/a/c/b/f;->n:Lcom/b/a/c/h;

    iput-object v0, p0, Lcom/b/a/c/b/f;->g:Ljava/lang/Class;

    iput-object v0, p0, Lcom/b/a/c/b/f;->k:Ljava/lang/Class;

    iput-object v0, p0, Lcom/b/a/c/b/f;->i:Lcom/b/a/c/j;

    iput-object v0, p0, Lcom/b/a/c/b/f;->o:Lcom/b/a/g;

    iput-object v0, p0, Lcom/b/a/c/b/f;->j:Ljava/util/Map;

    iput-object v0, p0, Lcom/b/a/c/b/f;->p:Lcom/b/a/c/b/i;

    iget-object v0, p0, Lcom/b/a/c/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/b/a/c/b/f;->l:Z

    iget-object v0, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/b/a/c/b/f;->m:Z

    return-void
.end method

.method a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/h;IILcom/b/a/c/b/i;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/j;Ljava/util/Map;ZZLcom/b/a/c/b/g$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/e;",
            "Ljava/lang/Object;",
            "Lcom/b/a/c/h;",
            "II",
            "Lcom/b/a/c/b/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/j;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/m",
            "<*>;>;ZZ",
            "Lcom/b/a/c/b/g$d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    iput-object p2, p0, Lcom/b/a/c/b/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/b/a/c/b/f;->n:Lcom/b/a/c/h;

    iput p4, p0, Lcom/b/a/c/b/f;->e:I

    iput p5, p0, Lcom/b/a/c/b/f;->f:I

    iput-object p6, p0, Lcom/b/a/c/b/f;->p:Lcom/b/a/c/b/i;

    iput-object p7, p0, Lcom/b/a/c/b/f;->g:Ljava/lang/Class;

    iput-object p14, p0, Lcom/b/a/c/b/f;->h:Lcom/b/a/c/b/g$d;

    iput-object p8, p0, Lcom/b/a/c/b/f;->k:Ljava/lang/Class;

    iput-object p9, p0, Lcom/b/a/c/b/f;->o:Lcom/b/a/g;

    iput-object p10, p0, Lcom/b/a/c/b/f;->i:Lcom/b/a/c/j;

    iput-object p11, p0, Lcom/b/a/c/b/f;->j:Ljava/util/Map;

    iput-boolean p12, p0, Lcom/b/a/c/b/f;->q:Z

    iput-boolean p13, p0, Lcom/b/a/c/b/f;->r:Z

    return-void
.end method

.method a(Lcom/b/a/c/b/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/h;->a(Lcom/b/a/c/b/u;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/b/a/c/h;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/b/a/c/b/f;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n$a;

    iget-object v0, v0, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    invoke-interface {v0, p1}, Lcom/b/a/c/h;->equals(Ljava/lang/Object;)Z

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

.method a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/b/a/c/b/f;->b(Ljava/lang/Class;)Lcom/b/a/c/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lcom/b/a/c/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->h:Lcom/b/a/c/b/g$d;

    invoke-interface {v0}, Lcom/b/a/c/b/g$d;->a()Lcom/b/a/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Class;)Lcom/b/a/c/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;)",
            "Lcom/b/a/c/b/s",
            "<TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/f;->g:Ljava/lang/Class;

    iget-object v2, p0, Lcom/b/a/c/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/b/s;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/b/a/c/b/u;)Lcom/b/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/u",
            "<TZ;>;)",
            "Lcom/b/a/c/l",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/h;->b(Lcom/b/a/c/b/u;)Lcom/b/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/b/a/c/b/i;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->p:Lcom/b/a/c/b/i;

    return-object v0
.end method

.method c(Ljava/lang/Class;)Lcom/b/a/c/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/b/a/c/m",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/m;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/b/a/c/b/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/m;

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/c/b/f;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/b/a/c/b/f;->q:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/b/a/c/d/b;->a()Lcom/b/a/c/d/b;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method d()Lcom/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->o:Lcom/b/a/g;

    return-object v0
.end method

.method e()Lcom/b/a/c/j;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->i:Lcom/b/a/c/j;

    return-object v0
.end method

.method f()Lcom/b/a/c/h;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->n:Lcom/b/a/c/h;

    return-object v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/f;->e:I

    return v0
.end method

.method h()I
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/f;->f:I

    return v0
.end method

.method i()Lcom/b/a/c/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->e()Lcom/b/a/c/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->k:Ljava/lang/Class;

    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/f;->g:Ljava/lang/Class;

    iget-object v3, p0, Lcom/b/a/c/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/h;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/b/f;->r:Z

    return v0
.end method

.method m()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n$a",
            "<*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/c/b/f;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/f;->l:Z

    iget-object v0, p0, Lcom/b/a/c/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/b/a/c/b/f;->c:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/b/a/h;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n;

    iget-object v4, p0, Lcom/b/a/c/b/f;->d:Ljava/lang/Object;

    iget v5, p0, Lcom/b/a/c/b/f;->e:I

    iget v6, p0, Lcom/b/a/c/b/f;->f:I

    iget-object v7, p0, Lcom/b/a/c/b/f;->i:Lcom/b/a/c/j;

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/b/a/c/c/n;->a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/b/a/c/b/f;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/b/f;->a:Ljava/util/List;

    return-object v0
.end method

.method n()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/h;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/b/a/c/b/f;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/f;->m:Z

    iget-object v0, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/b/a/c/b/f;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n$a;

    iget-object v1, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    iget-object v6, v0, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    iget-object v6, v0, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    :goto_1
    iget-object v6, v0, Lcom/b/a/c/c/n$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    iget-object v7, v0, Lcom/b/a/c/c/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    iget-object v7, v0, Lcom/b/a/c/c/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/b/a/c/b/f;->b:Ljava/util/List;

    return-object v0
.end method
