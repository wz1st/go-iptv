.class final La/a/d/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:La/a/d/c;

.field private final b:Lb/h;

.field private c:Z


# direct methods
.method private constructor <init>(La/a/d/c;)V
    .locals 2

    iput-object p1, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/h;

    iget-object v1, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v1}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v1

    invoke-interface {v1}, Lb/c;->a()Lb/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h;-><init>(Lb/n;)V

    iput-object v0, p0, La/a/d/c$b;->b:Lb/h;

    return-void
.end method

.method synthetic constructor <init>(La/a/d/c;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/d/c$b;-><init>(La/a/d/c;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, La/a/d/c$b;->b:Lb/h;

    return-object v0
.end method

.method public final a_(Lb/b;J)V
    .locals 2

    iget-boolean v0, p0, La/a/d/c$b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lb/c;->k(J)Lb/c;

    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb/c;->a_(Lb/b;J)V

    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/d/c$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, La/a/d/c$b;->c:Z

    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    iget-object v0, p0, La/a/d/c$b;->b:Lb/h;

    invoke-static {v0}, La/a/d/c;->a(Lb/h;)V

    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a/d/c;->a(La/a/d/c;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/d/c$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/d/c$b;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
