.class public Lb/a;
.super Lb/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final c:J

.field private static d:Lb/a;


# instance fields
.field private e:Z

.field private f:Lb/a;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lb/a;->a:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lb/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lb/a;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/n;-><init>()V

    return-void
.end method

.method private static a(Lb/a;JZ)V
    .locals 11

    const-wide/16 v4, 0x0

    const-class v0, Lb/a;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lb/a;->d:Lb/a;

    if-nez v0, :cond_0

    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    sput-object v0, Lb/a;->d:Lb/a;

    new-instance v0, Lb/a$a;

    invoke-direct {v0}, Lb/a$a;-><init>()V

    invoke-virtual {v0}, Lb/a$a;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lb/a;->h_()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a;->g:J

    :goto_0
    iget-wide v4, p0, Lb/a;->g:J

    sget-object v0, Lb/a;->d:Lb/a;

    :goto_1
    iget-object v1, v0, Lb/a;->f:Lb/a;

    if-eqz v1, :cond_1

    sub-long v6, v4, v2

    iget-object v1, v0, Lb/a;->f:Lb/a;

    iget-wide v8, v1, Lb/a;->g:J

    sub-long/2addr v8, v2

    cmp-long v1, v6, v8

    if-gez v1, :cond_6

    :cond_1
    iget-object v1, v0, Lb/a;->f:Lb/a;

    iput-object v1, p0, Lb/a;->f:Lb/a;

    iput-object p0, v0, Lb/a;->f:Lb/a;

    sget-object v1, Lb/a;->d:Lb/a;

    if-ne v0, v1, :cond_2

    const-class v0, Lb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-class v0, Lb/a;

    monitor-exit v0

    return-void

    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    add-long v0, v2, p1

    :try_start_1
    iput-wide v0, p0, Lb/a;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lb/a;

    monitor-exit v1

    throw v0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lb/a;->h_()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a;->g:J

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v0, v0, Lb/a;->f:Lb/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static a(Lb/a;)Z
    .locals 2

    const-class v0, Lb/a;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lb/a;->d:Lb/a;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/a;->f:Lb/a;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lb/a;->f:Lb/a;

    iput-object v1, v0, Lb/a;->f:Lb/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a;->f:Lb/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    const-class v1, Lb/a;

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lb/a;->f:Lb/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const-class v1, Lb/a;

    monitor-exit v1

    throw v0
.end method

.method static c()Lb/a;
    .locals 8

    const-wide/32 v6, 0xf4240

    const/4 v0, 0x0

    sget-object v1, Lb/a;->d:Lb/a;

    iget-object v1, v1, Lb/a;->f:Lb/a;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-class v1, Lb/a;

    sget-wide v4, Lb/a;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v1, Lb/a;->d:Lb/a;

    iget-object v1, v1, Lb/a;->f:Lb/a;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lb/a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lb/a;->d:Lb/a;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v1, Lb/a;->g:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    div-long v4, v2, v6

    const-class v1, Lb/a;

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    goto :goto_0

    :cond_2
    sget-object v2, Lb/a;->d:Lb/a;

    iget-object v3, v1, Lb/a;->f:Lb/a;

    iput-object v3, v2, Lb/a;->f:Lb/a;

    iput-object v0, v1, Lb/a;->f:Lb/a;

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic d()Lb/a;
    .locals 1

    sget-object v0, Lb/a;->d:Lb/a;

    return-object v0
.end method

.method static synthetic e()Lb/a;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lb/a;->d:Lb/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lb/l;)Lb/l;
    .locals 1

    new-instance v0, Lb/o;

    invoke-direct {v0, p0, p1}, Lb/o;-><init>(Lb/a;Lb/l;)V

    return-object v0
.end method

.method public final a(Lb/m;)Lb/m;
    .locals 1

    new-instance v0, Lb/p;

    invoke-direct {v0, p0, p1}, Lb/p;-><init>(Lb/a;Lb/m;)V

    return-object v0
.end method

.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 1

    invoke-virtual {p0}, Lb/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    invoke-virtual {p0}, Lb/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    iget-boolean v0, p0, Lb/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lb/a;->k_()J

    move-result-wide v0

    invoke-virtual {p0}, Lb/a;->i_()Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lb/a;->e:Z

    invoke-static {p0, v0, v1, v2}, Lb/a;->a(Lb/a;JZ)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lb/a;->e:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lb/a;->e:Z

    invoke-static {p0}, Lb/a;->a(Lb/a;)Z

    move-result v0

    goto :goto_0
.end method
