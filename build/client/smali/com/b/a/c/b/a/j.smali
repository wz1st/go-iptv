.class public final Lcom/b/a/c/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/a/j$a;,
        Lcom/b/a/c/b/a/j$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/a/h",
            "<",
            "Lcom/b/a/c/b/a/j$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/c/b/a/j$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/b/a/a",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/b/a/h;

    invoke-direct {v0}, Lcom/b/a/c/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->a:Lcom/b/a/c/b/a/h;

    new-instance v0, Lcom/b/a/c/b/a/j$b;

    invoke-direct {v0}, Lcom/b/a/c/b/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->d:Ljava/util/Map;

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/b/a/c/b/a/j;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/b/a/h;

    invoke-direct {v0}, Lcom/b/a/c/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->a:Lcom/b/a/c/b/a/h;

    new-instance v0, Lcom/b/a/c/b/a/j$b;

    invoke-direct {v0}, Lcom/b/a/c/b/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/j;->d:Ljava/util/Map;

    iput p1, p0, Lcom/b/a/c/b/a/j;->e:I

    return-void
.end method

.method private a(Lcom/b/a/c/b/a/j$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/a/j$a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/a/j;->a:Lcom/b/a/c/b/a/h;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/a/h;->a(Lcom/b/a/c/b/a/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/b/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/a/j$a;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/b/a/c/b/a/j;->b(Ljava/lang/Class;)Lcom/b/a/c/b/a/a;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/b/a/c/b/a/j;->a(Lcom/b/a/c/b/a/j$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/b/a/c/b/a/j;->f:I

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->b()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/c/b/a/j;->f:I

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/b/a/c/b/a/j;->c(ILjava/lang/Class;)V

    :cond_0
    if-nez v0, :cond_2

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/b/a/c/b/a/j$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lcom/b/a/c/b/a/j$a;->a:I

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/a/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/b/a/c/b/a/j;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a(ILjava/lang/Integer;)Z
    .locals 2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/b/a/c/b/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v1, p1, 0x8

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Lcom/b/a/c/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/b/a/c/b/a/a",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/a/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/a/a;

    if-nez v0, :cond_0

    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/b/a/c/b/a/i;

    invoke-direct {v0}, Lcom/b/a/c/b/a/i;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/b/a/c/b/a/j;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/b/a/c/b/a/g;

    invoke-direct {v0}, Lcom/b/a/c/b/a/g;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No array pool found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/Object;)Lcom/b/a/c/b/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/b/a/c/b/a/a",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->b(Ljava/lang/Class;)Lcom/b/a/c/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/a/j;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/c/b/a/j;->e:I

    iget v1, p0, Lcom/b/a/c/b/a/j;->f:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/a/j;->e:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/a/j;->e:I

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lcom/b/a/c/b/a/j;->f:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/a/j;->a:Lcom/b/a/c/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/c/b/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->b(Ljava/lang/Object;)Lcom/b/a/c/b/a/a;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/a/j;->f:I

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->b()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/c/b/a/j;->f:I

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/b/a/c/b/a/j;->c(ILjava/lang/Class;)V

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evicted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/b/a/c/b/a/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to decrement empty size, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/b/a/c/b/a/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/b/a/c/b/a/j;->a(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Lcom/b/a/c/b/a/j$b;->a(ILjava/lang/Class;)Lcom/b/a/c/b/a/j$a;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/b/a/c/b/a/j;->a(Lcom/b/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/c/b/a/j$b;->a(ILjava/lang/Class;)Lcom/b/a/c/b/a/j$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/c/b/a/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/b/a/c/b/a/j;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->b(Ljava/lang/Class;)Lcom/b/a/c/b/a/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/b/a/c/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Lcom/b/a/c/b/a/a;->b()I

    move-result v1

    mul-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/b/a/c/b/a/j;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    invoke-virtual {v3, v2, v0}, Lcom/b/a/c/b/a/j$b;->a(ILjava/lang/Class;)Lcom/b/a/c/b/a/j$a;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/c/b/a/j;->a:Lcom/b/a/c/b/a/h;

    invoke-virtual {v3, v2, p1}, Lcom/b/a/c/b/a/h;->a(Lcom/b/a/c/b/a/m;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/b/a/c/b/a/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v3

    iget v0, v2, Lcom/b/a/c/b/a/j$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, v2, Lcom/b/a/c/b/a/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/b/a/c/b/a/j;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/c/b/a/j;->f:I

    invoke-direct {p0}, Lcom/b/a/c/b/a/j;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized b(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/a/j;->b:Lcom/b/a/c/b/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/c/b/a/j$b;->a(ILjava/lang/Class;)Lcom/b/a/c/b/a/j$a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/b/a/c/b/a/j;->a(Lcom/b/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
