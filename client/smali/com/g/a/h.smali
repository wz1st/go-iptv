.class public Lcom/g/a/h;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/ByteBuffer;

.field public static b:I

.field static c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field static d:I

.field static e:I

.field static final synthetic f:Z

.field private static i:I

.field private static final j:Ljava/lang/Object;


# instance fields
.field g:Lcom/g/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/a/a",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/nio/ByteOrder;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const-class v0, Lcom/g/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/h;->f:Z

    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/g/a/h$a;

    invoke-direct {v3}, Lcom/g/a/h$a;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/g/a/h;->c:Ljava/util/PriorityQueue;

    const/high16 v0, 0x100000

    sput v0, Lcom/g/a/h;->i:I

    const/high16 v0, 0x40000

    sput v0, Lcom/g/a/h;->b:I

    sput v1, Lcom/g/a/h;->d:I

    sput v1, Lcom/g/a/h;->e:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/g/a/h;->j:Ljava/lang/Object;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/g/a/h;->a:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/g/a/a;

    invoke-direct {v0}, Lcom/g/a/a;-><init>()V

    iput-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/g/a/h;->h:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/h;->k:I

    return-void
.end method

.method public static a(I)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/g/a/h;->e:I

    if-gt p0, v0, :cond_6

    invoke-static {}, Lcom/g/a/h;->p()Ljava/util/PriorityQueue;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Lcom/g/a/h;->j:Ljava/lang/Object;

    monitor-enter v6

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    sput v1, Lcom/g/a/h;->e:I

    :cond_1
    sget v1, Lcom/g/a/h;->d:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v1, v4

    sput v1, Lcom/g/a/h;->d:I

    sget-boolean v1, Lcom/g/a/h;->f:Z

    if-nez v1, :cond_4

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v2

    :goto_0
    sget v1, Lcom/g/a/h;->d:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, p0, :cond_0

    monitor-exit v6

    :goto_2
    return-object v0

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/16 v0, 0x2000

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x2000

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v3, Lcom/g/a/h;->b:I

    if-gt v0, v3, :cond_0

    invoke-static {}, Lcom/g/a/h;->p()Ljava/util/PriorityQueue;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/g/a/h;->j:Ljava/lang/Object;

    monitor-enter v4

    :goto_1
    :try_start_0
    sget v0, Lcom/g/a/h;->d:I

    sget v5, Lcom/g/a/h;->i:I

    if-le v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sget v5, Lcom/g/a/h;->d:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, v5, v0

    sput v0, Lcom/g/a/h;->d:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget v0, Lcom/g/a/h;->d:I

    sget v5, Lcom/g/a/h;->i:I

    if-le v0, v5, :cond_3

    monitor-exit v4

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/g/a/h;->f:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/g/a/h;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-ne v0, p0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget v0, Lcom/g/a/h;->d:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v0, v5

    sput v0, Lcom/g/a/h;->d:I

    invoke-virtual {v3, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/g/a/h;->f:Z

    if-nez v0, :cond_6

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_8

    move v3, v1

    :goto_3
    sget v0, Lcom/g/a/h;->d:I

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    sget v0, Lcom/g/a/h;->e:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/g/a/h;->e:I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method private b(I)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/g/a/h;->a:Ljava/nio/ByteBuffer;

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_3

    iget-object v1, p0, Lcom/g/a/h;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v2, 0x0

    move-object v0, v1

    :cond_4
    :goto_2
    if-ge v2, p1, :cond_5

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sub-int v5, p1, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v1, v0}, Lcom/g/a/a;->a(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0, v3}, Lcom/g/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/g/a/h;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method private c(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/g/a/h;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/g/a/h;->k:I

    :cond_0
    return-void
.end method

.method private static p()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/g/a/h;->c:Ljava/util/PriorityQueue;

    goto :goto_0
.end method


# virtual methods
.method public a()B
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget v1, p0, Lcom/g/a/h;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/g/a/h;->k:I

    return v0
.end method

.method public a(Ljava/nio/ByteOrder;)Lcom/g/a/h;
    .locals 0

    iput-object p1, p0, Lcom/g/a/h;->h:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)Lcom/g/a/h;
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lcom/g/a/e/b;->b:Ljava/nio/charset/Charset;

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    move v2, v1

    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/g/a/h;)V
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/g/a/h;->a(Lcom/g/a/h;I)V

    return-void
.end method

.method public a(Lcom/g/a/h;I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    if-ge v0, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_4

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    add-int v4, v1, v3

    if-le v4, p2, :cond_3

    sub-int v1, p2, v1

    invoke-static {v1}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    iget-object v2, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v2, v0}, Lcom/g/a/a;->a(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/g/a/h;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/g/a/h;->f:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    add-int v0, v1, v3

    move v1, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/g/a/h;->k:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/g/a/h;->k:I

    return-void
.end method

.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/g/a/h;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 5

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    if-ge v0, p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, p3

    :goto_0
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/2addr p2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v1}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    sget-boolean v4, Lcom/g/a/h;->f:Z

    if-nez v4, :cond_2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    :cond_3
    sub-int v0, v2, v3

    move v2, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/g/a/h;->k:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/g/a/h;->k:I

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/g/a/h;->c(I)V

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/g/a/h;->o()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0, p1}, Lcom/g/a/a;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/g/a/h;->o()V

    goto :goto_0
.end method

.method public b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/g/a/h;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/g/a/h;->k()V

    return-object v0
.end method

.method public b()[Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v1, v0}, Lcom/g/a/a;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v1}, Lcom/g/a/a;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/g/a/h;->k:I

    return-object v0
.end method

.method public c()C
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    iget v1, p0, Lcom/g/a/h;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/g/a/h;->k:I

    return v0
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/g/a/h;->c(I)V

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0, p1}, Lcom/g/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget v1, p0, Lcom/g/a/h;->k:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/g/a/h;->k:I

    return v0
.end method

.method public e()J
    .locals 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iget v2, p0, Lcom/g/a/h;->k:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/g/a/h;->k:I

    return-wide v0
.end method

.method public f()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iget v1, p0, Lcom/g/a/h;->k:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/g/a/h;->k:I

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/h;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/g/a/h;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/g/a/h;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/g/a/h;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/g/a/h;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/h;->k:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/g/a/h;->k:I

    return v0
.end method

.method public m()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/g/a/h;->k:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/g/a/h;->k:I

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/g/a/h;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->size()I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/g/a/h;->b(I)Ljava/nio/ByteBuffer;

    return-void
.end method
