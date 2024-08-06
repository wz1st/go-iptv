.class public Lcom/tvbus/engine/TVCore;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tvbus/engine/TVCore;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:J

.field private static f:J


# instance fields
.field private a:Z

.field private f:Lcom/tvbus/engine/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tvbus/engine/TVCore;->b:Lcom/tvbus/engine/TVCore;

    sput-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tvbus/engine/TVCore;->d:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbus/engine/TVCore;->a:Z

    new-instance v0, Lcom/tvbus/engine/a;

    invoke-direct {v0, p0}, Lcom/tvbus/engine/a;-><init>(Lcom/tvbus/engine/TVCore;)V

    iput-object v0, p0, Lcom/tvbus/engine/TVCore;->f:Lcom/tvbus/engine/d;

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v0, Lcom/tvbus/engine/TVCore;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tvbus/engine/TVCore;->d:Z

    const/4 v0, 0x3

    new-instance v1, Lcom/tvbus/engine/b;

    invoke-direct {v1, p0}, Lcom/tvbus/engine/b;-><init>(Lcom/tvbus/engine/TVCore;)V

    invoke-static {v0, v1}, Lcom/f/a/c;->a(ILjava/lang/Runnable;)V

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tvbus/engine/TVCore;JLandroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tvbus/engine/TVCore;->init(JLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tvbus/engine/TVCore;)J
    .locals 2

    invoke-direct {p0}, Lcom/tvbus/engine/TVCore;->initialise()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(J)V
    .locals 0

    sput-wide p0, Lcom/tvbus/engine/TVCore;->e:J

    return-void
.end method

.method static synthetic a(Lcom/tvbus/engine/TVCore;JLcom/tvbus/engine/d;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tvbus/engine/TVCore;->setListener(JLcom/tvbus/engine/d;)V

    return-void
.end method

.method static synthetic a(Lcom/tvbus/engine/TVCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tvbus/engine/TVCore;->a:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/tvbus/engine/TVCore;)Lcom/tvbus/engine/d;
    .locals 1

    iget-object v0, p0, Lcom/tvbus/engine/TVCore;->f:Lcom/tvbus/engine/d;

    return-object v0
.end method

.method public static close()Z
    .locals 1

    sget-boolean v0, Lcom/tvbus/engine/TVCore;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tvbus/engine/TVCore;->get()Lcom/tvbus/engine/TVCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tvbus/engine/TVCore;->quit()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static f()J
    .locals 2

    sget-wide v0, Lcom/tvbus/engine/TVCore;->f:J

    return-wide v0
.end method

.method public static get()Lcom/tvbus/engine/TVCore;
    .locals 1

    sget-object v0, Lcom/tvbus/engine/TVCore;->b:Lcom/tvbus/engine/TVCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tvbus/engine/TVCore;

    invoke-direct {v0}, Lcom/tvbus/engine/TVCore;-><init>()V

    sput-object v0, Lcom/tvbus/engine/TVCore;->b:Lcom/tvbus/engine/TVCore;

    :cond_0
    sget-object v0, Lcom/tvbus/engine/TVCore;->b:Lcom/tvbus/engine/TVCore;

    return-object v0
.end method

.method private native init(JLandroid/content/Context;)I
.end method

.method private native initialise()J
.end method

.method private native quit(J)V
.end method

.method private native run(J)I
.end method

.method private native setListener(JLcom/tvbus/engine/d;)V
.end method

.method private native setPlayPort(JI)V
.end method

.method private native setServPort(JI)V
.end method

.method private native start(JLjava/lang/String;)V
.end method

.method private native start2(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native stop(J)V
.end method

.method public static stopPlay()V
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-static {v0, v1}, Lcom/tvbus/engine/TVCore;->stop(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isonInited()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tvbus/engine/TVCore;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/tvbus/engine/TVCore;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/tvbus/engine/TVCore;->a:Z

    return v0

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public p2p_run()I
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->run(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public playTVBUSUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tvbus/engine/TVCore;->a:Z

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tvbus/engine/TVCore;->start(Ljava/lang/String;)V

    const/16 v0, 0x12c

    :goto_0
    sget-object v1, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-static {v0, v1}, Lcom/tvbus/engine/TVCore;->stop(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    return-object v0

    :cond_2
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public playUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tvbus/engine/TVCore;->isonInited()Z

    iget-boolean v0, p0, Lcom/tvbus/engine/TVCore;->a:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tvbus/engine/TVCore;->start(Ljava/lang/String;)V

    const/16 v0, 0x12c

    :goto_0
    sget-object v1, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-static {v0, v1}, Lcom/tvbus/engine/TVCore;->stop(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tvbus/engine/TVCore;->c:Ljava/lang/String;

    return-object v0

    :cond_2
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public quit()V
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->quit(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPlayPort(I)V
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setPlayPort(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServPort(I)V
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setServPort(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tvbus/engine/TVCore;->f:J

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->start(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->e:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tvbus/engine/TVCore;->start2(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
