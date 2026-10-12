.class final La/ah;
.super Ljava/lang/Object;

# interfaces
.implements La/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/ah$a;
    }
.end annotation


# instance fields
.field a:La/w;

.field private final b:La/u;

.field private final c:La/a/d/l;

.field private d:Z


# direct methods
.method protected constructor <init>(La/u;La/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/ah;->b:La/u;

    iput-object p2, p0, La/ah;->a:La/w;

    new-instance v0, La/a/d/l;

    invoke-direct {v0, p1}, La/a/d/l;-><init>(La/u;)V

    iput-object v0, p0, La/ah;->c:La/a/d/l;

    return-void
.end method

.method static synthetic a(La/ah;)La/y;
    .locals 1

    invoke-direct {p0}, La/ah;->c()La/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(La/ah;)La/a/d/l;
    .locals 1

    iget-object v0, p0, La/ah;->c:La/a/d/l;

    return-object v0
.end method

.method private c()La/y;
    .locals 7

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, La/ah;->b:La/u;

    invoke-virtual {v0}, La/u;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, La/ah;->c:La/a/d/l;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/d/a;

    iget-object v3, p0, La/ah;->b:La/u;

    invoke-virtual {v3}, La/u;->h()La/m;

    move-result-object v3

    invoke-direct {v0, v3}, La/a/d/a;-><init>(La/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/ah;->b:La/u;

    iget-object v3, v0, La/u;->i:La/c;

    if-eqz v3, :cond_1

    iget-object v0, v0, La/u;->i:La/c;

    iget-object v0, v0, La/c;->a:La/a/a/e;

    :goto_0
    new-instance v3, La/a/a/a;

    invoke-direct {v3, v0}, La/a/a/a;-><init>(La/a/a/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/b/a;

    iget-object v3, p0, La/ah;->b:La/u;

    invoke-direct {v0, v3}, La/a/b/a;-><init>(La/u;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/ah;->c:La/a/d/l;

    invoke-virtual {v0}, La/a/d/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/ah;->b:La/u;

    invoke-virtual {v0}, La/u;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, La/a/d/b;

    iget-object v3, p0, La/ah;->c:La/a/d/l;

    invoke-virtual {v3}, La/a/d/l;->b()Z

    move-result v3

    invoke-direct {v0, v3}, La/a/d/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/d/i;

    const/4 v5, 0x0

    iget-object v6, p0, La/ah;->a:La/w;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, La/a/d/i;-><init>(Ljava/util/List;La/a/b/g;La/a/d/h;La/i;ILa/w;)V

    iget-object v1, p0, La/ah;->a:La/w;

    invoke-interface {v0, v1}, La/s$a;->a(La/w;)La/y;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, La/u;->j:La/a/a/e;

    goto :goto_0
.end method

.method static synthetic c(La/ah;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/ah;->c:La/a/d/l;

    invoke-virtual {v0}, La/a/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/ah;->b()La/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method

.method static synthetic d(La/ah;)La/u;
    .locals 1

    iget-object v0, p0, La/ah;->b:La/u;

    return-object v0
.end method


# virtual methods
.method public final a()La/y;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/ah;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, La/ah;->d:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, La/ah;->b:La/u;

    invoke-virtual {v0}, La/u;->i()La/n;

    move-result-object v0

    invoke-virtual {v0, p0}, La/n;->a(La/ah;)V

    invoke-direct {p0}, La/ah;->c()La/y;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, La/ah;->b:La/u;

    invoke-virtual {v1}, La/u;->i()La/n;

    move-result-object v1

    invoke-virtual {v1, p0}, La/n;->b(La/ah;)V

    throw v0

    :cond_1
    iget-object v1, p0, La/ah;->b:La/u;

    invoke-virtual {v1}, La/u;->i()La/n;

    move-result-object v1

    invoke-virtual {v1, p0}, La/n;->b(La/ah;)V

    return-object v0
.end method

.method final b()La/r;
    .locals 2

    iget-object v0, p0, La/ah;->a:La/w;

    invoke-virtual {v0}, La/w;->g()La/r;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, La/r;->e(Ljava/lang/String;)La/r;

    move-result-object v0

    return-object v0
.end method
