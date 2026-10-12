.class public final La/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:La/a/a/d;

.field private final b:La/a/a/d$b;

.field private final c:[Z

.field private d:Z


# direct methods
.method static synthetic a(La/a/a/d$a;)La/a/a/d$b;
    .locals 1

    iget-object v0, p0, La/a/a/d$a;->b:La/a/a/d$b;

    return-object v0
.end method

.method static synthetic b(La/a/a/d$a;)[Z
    .locals 1

    iget-object v0, p0, La/a/a/d$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, La/a/a/d$a;->b:La/a/a/d$b;

    invoke-static {v0}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/a/a/d$a;->a:La/a/a/d;

    invoke-static {v1}, La/a/a/d;->a(La/a/a/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, La/a/a/d$a;->a:La/a/a/d;

    invoke-static {v1}, La/a/a/d;->b(La/a/a/d;)La/a/e/a;

    move-result-object v1

    iget-object v2, p0, La/a/a/d$a;->b:La/a/a/d$b;

    invoke-static {v2}, La/a/a/d$b;->e(La/a/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, La/a/e/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/d$a;->b:La/a/a/d$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/d$b;->a(La/a/a/d$b;La/a/a/d$a;)La/a/a/d$a;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    iget-object v1, p0, La/a/a/d$a;->a:La/a/a/d;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/d$a;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/d$a;->b:La/a/a/d$b;

    invoke-static {v0}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, La/a/a/d$a;->a:La/a/a/d;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, La/a/a/d;->a(La/a/a/d;La/a/a/d$a;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/d$a;->d:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
