.class final Lb/x;
.super Ljava/lang/Object;


# static fields
.field static a:Lb/w;

.field static b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lb/w;
    .locals 6

    const-class v0, Lb/x;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lb/x;->a:Lb/w;

    if-eqz v0, :cond_0

    sget-object v0, Lb/x;->a:Lb/w;

    iget-object v1, v0, Lb/w;->f:Lb/w;

    sput-object v1, Lb/x;->a:Lb/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/w;->f:Lb/w;

    sget-wide v2, Lb/x;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lb/x;->b:J

    const-class v1, Lb/x;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lb/x;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lb/w;

    invoke-direct {v0}, Lb/w;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lb/x;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lb/w;)V
    .locals 6

    const-wide/16 v4, 0x2000

    iget-object v0, p0, Lb/w;->f:Lb/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/w;->g:Lb/w;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lb/w;->d:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const-class v0, Lb/x;

    monitor-enter v0

    :try_start_0
    sget-wide v0, Lb/x;->b:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const-class v0, Lb/x;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lb/x;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-wide v0, Lb/x;->b:J

    add-long/2addr v0, v4

    sput-wide v0, Lb/x;->b:J

    sget-object v0, Lb/x;->a:Lb/w;

    iput-object v0, p0, Lb/w;->f:Lb/w;

    const/4 v0, 0x0

    iput v0, p0, Lb/w;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lb/w;->b:I

    sput-object p0, Lb/x;->a:Lb/w;

    const-class v0, Lb/x;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
