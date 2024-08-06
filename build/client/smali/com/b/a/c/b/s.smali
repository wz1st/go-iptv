.class public Lcom/b/a/c/b/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/b/a/c/b/h",
            "<TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/e/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/b/h",
            "<TData;TResourceType;TTranscode;>;>;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/s;->a:Ljava/lang/Class;

    iput-object p5, p0, Lcom/b/a/c/b/s;->b:Landroid/support/v4/e/l$a;

    invoke-static {p4}, Lcom/b/a/i/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/c/b/s;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed LoadPath{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/s;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/b/a/c/a/e;Lcom/b/a/c/j;IILcom/b/a/c/b/h$a;Ljava/util/List;)Lcom/b/a/c/b/u;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/a/e",
            "<TData;>;",
            "Lcom/b/a/c/j;",
            "II",
            "Lcom/b/a/c/b/h$a",
            "<TResourceType;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/b/a/c/b/u",
            "<TTranscode;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/c/b/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/s;->c:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/h;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/b/a/c/b/h;->a(Lcom/b/a/c/a/e;IILcom/b/a/c/j;Lcom/b/a/c/b/h$a;)Lcom/b/a/c/b/u;
    :try_end_0
    .catch Lcom/b/a/c/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/c/b/p;

    iget-object v1, p0, Lcom/b/a/c/b/s;->d:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v6, v0

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/b/a/c/a/e;Lcom/b/a/c/j;IILcom/b/a/c/b/h$a;)Lcom/b/a/c/b/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/a/e",
            "<TData;>;",
            "Lcom/b/a/c/j;",
            "II",
            "Lcom/b/a/c/b/h$a",
            "<TResourceType;>;)",
            "Lcom/b/a/c/b/u",
            "<TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/s;->b:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/b/s;->a(Lcom/b/a/c/a/e;Lcom/b/a/c/j;IILcom/b/a/c/b/h$a;Ljava/util/List;)Lcom/b/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/s;->b:Landroid/support/v4/e/l$a;

    invoke-interface {v1, v6}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/c/b/s;->b:Landroid/support/v4/e/l$a;

    invoke-interface {v1, v6}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadPath{decodePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
