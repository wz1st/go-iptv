.class public final La/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d$a;,
        La/a/a/d$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final c:Lb/l;


# instance fields
.field private d:Z

.field private e:Z

.field private f:J

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/lang/Runnable;

.field private final i:La/a/e/a;

.field private j:J

.field private final k:I

.field private l:J

.field private m:Lb/c;

.field private final n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "La/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/d;->b:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/a/a/d;->a:Ljava/util/regex/Pattern;

    new-instance v0, La/a/a/h;

    invoke-direct {v0}, La/a/a/h;-><init>()V

    sput-object v0, La/a/a/d;->c:Lb/l;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(La/a/a/d;)I
    .locals 1

    iget v0, p0, La/a/a/d;->k:I

    return v0
.end method

.method private a(La/a/a/d$a;Z)V
    .locals 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, La/a/a/d$a;->a(La/a/a/d$a;)La/a/a/d$b;

    move-result-object v2

    invoke-static {v2}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, La/a/a/d$b;->g(La/a/a/d$b;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget v3, p0, La/a/a/d;->k:I

    if-ge v0, v3, :cond_4

    invoke-static {p1}, La/a/a/d$a;->b(La/a/a/d$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    invoke-virtual {p1}, La/a/a/d$a;->b()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, La/a/a/d;->i:La/a/e/a;

    invoke-static {v2}, La/a/a/d$b;->e(La/a/a/d$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, La/a/e/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, La/a/a/d$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    :try_start_2
    iget v0, p0, La/a/a/d;->k:I

    if-ge v1, v0, :cond_7

    invoke-static {v2}, La/a/a/d$b;->e(La/a/a/d$b;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz p2, :cond_6

    iget-object v3, p0, La/a/a/d;->i:La/a/e/a;

    invoke-interface {v3, v0}, La/a/e/a;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, La/a/a/d$b;->d(La/a/a/d$b;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, La/a/a/d;->i:La/a/e/a;

    invoke-interface {v4, v0, v3}, La/a/e/a;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v2}, La/a/a/d$b;->c(La/a/a/d$b;)[J

    move-result-object v0

    aget-wide v4, v0, v1

    iget-object v0, p0, La/a/a/d;->i:La/a/e/a;

    invoke-interface {v0, v3}, La/a/e/a;->c(Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v2}, La/a/a/d$b;->c(La/a/a/d$b;)[J

    move-result-object v0

    aput-wide v6, v0, v1

    iget-wide v8, p0, La/a/a/d;->l:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, La/a/a/d;->l:J

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, La/a/a/d;->i:La/a/e/a;

    invoke-interface {v3, v0}, La/a/e/a;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v0, p0, La/a/a/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/d;->o:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, La/a/a/d$b;->a(La/a/a/d$b;La/a/a/d$a;)La/a/a/d$a;

    invoke-static {v2}, La/a/a/d$b;->g(La/a/a/d$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    invoke-static {v2}, La/a/a/d$b;->a(La/a/a/d$b;)Z

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-static {v2}, La/a/a/d$b;->f(La/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-virtual {v2, v0}, La/a/a/d$b;->a(Lb/c;)V

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    if-eqz p2, :cond_8

    iget-wide v0, p0, La/a/a/d;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, La/a/a/d;->f:J

    invoke-static {v2, v0, v1}, La/a/a/d$b;->a(La/a/a/d$b;J)J

    :cond_8
    :goto_4
    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V

    iget-wide v0, p0, La/a/a/d;->l:J

    iget-wide v2, p0, La/a/a/d;->j:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, La/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    iget-object v0, p0, La/a/a/d;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, La/a/a/d;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-static {v2}, La/a/a/d$b;->f(La/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-static {v2}, La/a/a/d$b;->f(La/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(La/a/a/d;La/a/a/d$a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/a/a/d;->a(La/a/a/d$a;Z)V

    return-void
.end method

.method private a(La/a/a/d$b;)Z
    .locals 6

    invoke-static {p1}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/d$a;->a()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/a/a/d;->k:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La/a/a/d;->i:La/a/e/a;

    invoke-static {p1}, La/a/a/d$b;->d(La/a/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, La/a/e/a;->a(Ljava/io/File;)V

    iget-wide v2, p0, La/a/a/d;->l:J

    invoke-static {p1}, La/a/a/d$b;->c(La/a/a/d$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/a/a/d;->l:J

    invoke-static {p1}, La/a/a/d$b;->c(La/a/a/d$b;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, La/a/a/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/d;->o:I

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    move-result-object v0

    invoke-static {p1}, La/a/a/d$b;->f(La/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    iget-object v0, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-static {p1}, La/a/a/d$b;->f(La/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, La/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/d;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, La/a/a/d;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(La/a/a/d;)La/a/e/a;
    .locals 1

    iget-object v0, p0, La/a/a/d;->i:La/a/e/a;

    return-object v0
.end method

.method private b()Z
    .locals 2

    iget v0, p0, La/a/a/d;->o:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, La/a/a/d;->o:I

    iget-object v1, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, La/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private d()V
    .locals 4

    :goto_0
    iget-wide v0, p0, La/a/a/d;->l:J

    iget-wide v2, p0, La/a/a/d;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d$b;

    invoke-direct {p0, v0}, La/a/a/d;->a(La/a/a/d$b;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/a/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/a/d;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La/a/a/d;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, La/a/a/d;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [La/a/a/d$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/d$b;

    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    :try_start_2
    invoke-static {v3}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, La/a/a/d$b;->b(La/a/a/d$b;)La/a/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, La/a/a/d$a;->b()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, La/a/a/d;->d()V

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-interface {v0}, Lb/c;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/d;->m:Lb/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/d;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    iget-boolean v0, p0, La/a/a/d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, La/a/a/d;->c()V

    invoke-direct {p0}, La/a/a/d;->d()V

    iget-object v0, p0, La/a/a/d;->m:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
