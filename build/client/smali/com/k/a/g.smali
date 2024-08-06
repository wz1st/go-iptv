.class Lcom/k/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/k/a/i;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/k/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/k/a/g;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/k/a/g;->b:Ljava/util/List;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/k/a/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/k/a/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs declared-synchronized a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/k/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/k/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/k/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/k/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/k/a/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p3

    :goto_0
    if-eqz p4, :cond_0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/k/a/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/k/a/j;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Empty/NULL log message"

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/k/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/k/a/c;

    invoke-interface {v0, p1, p2}, Lcom/k/a/c;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, p1, p2, v1}, Lcom/k/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v0, p3

    goto :goto_0
.end method

.method public a(Lcom/k/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/k/a/g;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/k/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/k/a/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k/a/g;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k/a/g;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/k/a/g;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
