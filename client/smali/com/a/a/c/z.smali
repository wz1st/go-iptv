.class public final Lcom/a/a/c/z;
.super Ljava/io/Writer;


# static fields
.field static final e:[I

.field static final f:[C

.field static final g:[C

.field static final h:[C

.field static final i:[C

.field static final j:[B

.field static final k:[B

.field static final l:[C

.field public static final m:[C

.field private static final n:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:[C

.field protected b:I

.field protected c:I

.field protected final d:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x5c

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/c/z;->e:[I

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/a/a/c/z;->f:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/a/a/c/z;->g:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/a/a/c/z;->h:[C

    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/a/a/c/z;->i:[C

    const/16 v0, 0xa1

    new-array v0, v0, [B

    sput-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v0, 0xa1

    new-array v0, v0, [B

    sput-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v0, 0x5d

    new-array v0, v0, [C

    sput-object v0, Lcom/a/a/c/z;->l:[C

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aput-byte v3, v0, v6

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aput-byte v3, v0, v2

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aput-byte v3, v0, v3

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aput-byte v2, v0, v4

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    const/16 v1, 0x22

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aput-byte v2, v0, v5

    sget-object v0, Lcom/a/a/c/z;->k:[B

    aput-byte v3, v0, v6

    sget-object v0, Lcom/a/a/c/z;->k:[B

    aput-byte v3, v0, v2

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    aput-byte v3, v0, v3

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    aput-byte v2, v0, v4

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->k:[B

    aput-byte v2, v0, v5

    sget-object v0, Lcom/a/a/c/z;->k:[B

    const/16 v1, 0x27

    aput-byte v2, v0, v1

    const/16 v0, 0xe

    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/a/a/c/z;->j:[B

    aput-byte v3, v1, v0

    sget-object v1, Lcom/a/a/c/z;->k:[B

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_1
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/a/a/c/z;->j:[B

    aput-byte v3, v1, v0

    sget-object v1, Lcom/a/a/c/z;->k:[B

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x30

    aput-char v1, v0, v6

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x31

    aput-char v1, v0, v2

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x34

    aput-char v1, v0, v3

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v4

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0xb

    const/16 v2, 0x76

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    sget-object v0, Lcom/a/a/c/z;->l:[C

    aput-char v5, v0, v5

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/a/a/c/z;->m:[C

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/a/a/c/z;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    sget v0, Lcom/a/a/a;->e:I

    iput v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[Lcom/a/a/c/aa;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    :cond_1
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/a/a/c/z;->c:I

    return-void
.end method

.method protected static a(JI[C)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_4

    const/16 v0, 0x2d

    neg-long p0, p0

    move v3, v0

    move v1, p2

    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, p0, v4

    if-lez v0, :cond_0

    const-wide/16 v4, 0x64

    div-long v4, p0, v4

    const/4 v0, 0x6

    shl-long v6, v4, v0

    const/4 v0, 0x5

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    const/4 v0, 0x2

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    sub-long v6, p0, v6

    long-to-int v0, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/a/a/c/z;->h:[C

    aget-char v2, v2, v0

    aput-char v2, p3, v1

    add-int/lit8 p2, v1, -0x1

    sget-object v1, Lcom/a/a/c/z;->g:[C

    aget-char v0, v1, v0

    aput-char v0, p3, p2

    move v1, p2

    move-wide p0, v4

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    :goto_1
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_3

    div-int/lit8 v2, v0, 0x64

    shl-int/lit8 v4, v2, 0x6

    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/a/a/c/z;->h:[C

    aget-char v4, v4, v0

    aput-char v4, p3, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/a/a/c/z;->g:[C

    aget-char v0, v4, v0

    aput-char v0, p3, v1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    const v1, 0xcccd

    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/a/a/c/z;->f:[C

    aget-char v0, v4, v0

    aput-char v0, p3, v2

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    aput-char v3, p3, v0

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v3, v0

    move v1, p2

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    if-le v3, v0, :cond_7

    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v0, :cond_6

    if-nez v5, :cond_0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/a/a/c/z;->j:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/a/a/c/z;->j:[B

    aget-byte v2, v3, v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-eqz v1, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/a/a/c/z;->j:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/a/a/c/z;->j:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_3

    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->write(I)V

    sget-object v3, Lcom/a/a/c/z;->l:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_7
    if-nez v5, :cond_9

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_8
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/a/a/c/z;->b:I

    add-int v2, v4, v5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    invoke-virtual {p1, v0, v5, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Lcom/a/a/c/z;->b:I

    const/4 v1, 0x0

    move v0, v4

    :goto_5
    if-ge v0, v2, :cond_e

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    aget-char v5, v5, v0

    sget-object v6, Lcom/a/a/c/z;->j:[B

    array-length v6, v6

    if-ge v5, v6, :cond_b

    sget-object v6, Lcom/a/a/c/z;->j:[B

    aget-byte v6, v6, v5

    if-eqz v6, :cond_b

    if-nez v1, :cond_c

    add-int/lit8 v3, v3, 0x3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_a

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_a
    iput v3, p0, Lcom/a/a/c/z;->b:I

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v8, v0, 0x3

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/a/a/c/z;->a:[C

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/16 v6, 0x22

    aput-char v6, v1, v4

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x5c

    aput-char v6, v1, v0

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lcom/a/a/c/z;->l:[C

    aget-char v5, v6, v5

    aput-char v5, v1, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    iget v5, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x22

    aput-char v6, v1, v5

    const/4 v1, 0x1

    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    array-length v6, v6

    if-le v3, v6, :cond_d

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_d
    iput v3, p0, Lcom/a/a/c/z;->b:I

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v9, v0, 0x2

    sub-int v10, v2, v0

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v0

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/a/a/c/z;->l:[C

    aget-char v5, v7, v5

    aput-char v5, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_f
    move v1, v0

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    if-le v3, v0, :cond_7

    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v0, :cond_6

    if-nez v5, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/a/a/c/z;->k:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/a/a/c/z;->k:[B

    aget-byte v2, v3, v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-eqz v1, :cond_1

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/a/a/c/z;->k:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/a/a/c/z;->k:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_3

    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->write(I)V

    sget-object v3, Lcom/a/a/c/z;->l:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_7
    if-nez v5, :cond_9

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_8
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/z;->b:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/a/a/c/z;->b:I

    add-int v2, v4, v5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    invoke-virtual {p1, v0, v5, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Lcom/a/a/c/z;->b:I

    const/4 v1, 0x0

    move v0, v4

    :goto_5
    if-ge v0, v2, :cond_e

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    aget-char v5, v5, v0

    sget-object v6, Lcom/a/a/c/z;->k:[B

    array-length v6, v6

    if-ge v5, v6, :cond_b

    sget-object v6, Lcom/a/a/c/z;->k:[B

    aget-byte v6, v6, v5

    if-eqz v6, :cond_b

    if-nez v1, :cond_c

    add-int/lit8 v3, v3, 0x3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_a

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_a
    iput v3, p0, Lcom/a/a/c/z;->b:I

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v8, v0, 0x3

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/a/a/c/z;->a:[C

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/16 v6, 0x27

    aput-char v6, v1, v4

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x5c

    aput-char v6, v1, v0

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lcom/a/a/c/z;->l:[C

    aget-char v5, v6, v5

    aput-char v5, v1, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    iget v5, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x27

    aput-char v6, v1, v5

    const/4 v1, 0x1

    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    array-length v6, v6

    if-le v3, v6, :cond_d

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_d
    iput v3, p0, Lcom/a/a/c/z;->b:I

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v9, v0, 0x2

    sub-int v10, v2, v0

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v0

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/a/a/c/z;->l:[C

    aget-char v5, v7, v5

    aput-char v5, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_f
    move v1, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public a(C)Lcom/a/a/c/z;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->write(I)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/c/z;->write(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;II)Lcom/a/a/c/z;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/c/z;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public a()V
    .locals 1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_0

    :goto_0
    new-array v0, p1, [C

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    iget v2, p0, Lcom/a/a/c/z;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 13

    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x0

    const/16 v2, 0x13

    const/4 v4, 0x0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    cmp-long v0, p1, v10

    if-gez v0, :cond_4

    neg-long v0, p1

    :goto_1
    const/4 v3, 0x1

    move-wide v6, v8

    :goto_2
    if-ge v3, v2, :cond_7

    cmp-long v5, v0, v6

    if-gez v5, :cond_5

    move v0, v3

    :goto_3
    if-nez v0, :cond_1

    move v0, v2

    :cond_1
    cmp-long v1, p1, v10

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->a(I)V

    :cond_3
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    invoke-static {p1, p2, v1, v0}, Lcom/a/a/c/z;->a(JI[C)V

    iput v1, p0, Lcom/a/a/c/z;->b:I

    goto :goto_0

    :cond_4
    move-wide v0, p1

    goto :goto_1

    :cond_5
    mul-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-array v1, v0, [C

    invoke-static {p1, p2, v0, v1}, Lcom/a/a/c/z;->a(JI[C)V

    array-length v0, v1

    invoke-virtual {p0, v1, v4, v0}, Lcom/a/a/c/z;->write([CII)V

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_3
.end method

.method public a(Lcom/a/a/c/aa;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/a/a/c/z;->c:I

    iget v1, p1, Lcom/a/a/c/aa;->x:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/c/z;->c:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/a/a/c/z;->c:I

    iget v1, p1, Lcom/a/a/c/aa;->x:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/c/z;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;CZ)V
    .locals 11

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/c/z;->a()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/a/a/c/z;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_c

    iget-object v2, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v2, :cond_b

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->q:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->l:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->i:[C

    mul-int/lit8 v3, v1, 0x2

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->i:[C

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x7f

    if-lt v1, v2, :cond_9

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->m:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/a/a/c/z;->j:[B

    array-length v2, v2

    if-ge v1, v2, :cond_7

    sget-object v2, Lcom/a/a/c/z;->j:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_8

    :cond_7
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_9

    iget v2, p0, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    :cond_8
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->l:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_2

    :cond_a
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_c
    iget v2, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v9, v2, 0x1

    add-int v8, v9, v1

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    iget v3, p0, Lcom/a/a/c/z;->b:I

    const/16 v4, 0x22

    aput-char v4, v2, v3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    invoke-virtual {p1, v2, v1, v3, v9}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/a/a/c/z;->b:I

    iget v1, p0, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->q:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    const/4 v2, -0x1

    move v1, v9

    move v3, v0

    :goto_3
    if-ge v1, v8, :cond_12

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    aget-char v0, v0, v1

    const/16 v4, 0x22

    if-eq v0, v4, :cond_d

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_d

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_e

    :cond_d
    add-int/lit8 v2, v3, 0x1

    move v0, v1

    move v3, v2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    :cond_e
    const/16 v4, 0x8

    if-eq v0, v4, :cond_f

    const/16 v4, 0xc

    if-eq v0, v4, :cond_f

    const/16 v4, 0xa

    if-eq v0, v4, :cond_f

    const/16 v4, 0xd

    if-eq v0, v4, :cond_f

    const/16 v4, 0x9

    if-ne v0, v4, :cond_10

    :cond_f
    add-int/lit8 v2, v3, 0x1

    move v0, v1

    move v3, v2

    goto :goto_4

    :cond_10
    const/16 v4, 0x20

    if-ge v0, v4, :cond_11

    add-int/lit8 v2, v3, 0x5

    move v0, v1

    move v3, v2

    goto :goto_4

    :cond_11
    const/16 v4, 0x7f

    if-lt v0, v4, :cond_34

    add-int/lit8 v2, v3, 0x5

    move v0, v1

    move v3, v2

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    if-le v3, v0, :cond_13

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->a(I)V

    :cond_13
    iput v3, p0, Lcom/a/a/c/z;->b:I

    move v0, v8

    :goto_5
    if-lt v2, v9, :cond_1a

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    aget-char v1, v1, v2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_14

    const/16 v3, 0xc

    if-eq v1, v3, :cond_14

    const/16 v3, 0xa

    if-eq v1, v3, :cond_14

    const/16 v3, 0xd

    if-eq v1, v3, :cond_14

    const/16 v3, 0x9

    if-ne v1, v3, :cond_16

    :cond_14
    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v7, v0, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v2

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/a/a/c/z;->l:[C

    aget-char v1, v5, v1

    aput-char v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_15
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_16
    const/16 v3, 0x22

    if-eq v1, v3, :cond_17

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_17

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_18

    :cond_17
    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v7, v0, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v2

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    aput-char v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    const/16 v3, 0x20

    if-ge v1, v3, :cond_19

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v2, 0x6

    sub-int v7, v0, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v2

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x2

    const/16 v5, 0x30

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x3

    const/16 v5, 0x30

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x4

    sget-object v5, Lcom/a/a/c/z;->i:[C

    mul-int/lit8 v6, v1, 0x2

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x5

    sget-object v5, Lcom/a/a/c/z;->i:[C

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v5, v1

    aput-char v1, v3, v4

    add-int/lit8 v0, v0, 0x5

    goto :goto_6

    :cond_19
    const/16 v3, 0x7f

    if-lt v1, v3, :cond_15

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v2, 0x6

    sub-int v7, v0, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v2

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x3

    sget-object v5, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x4

    sget-object v5, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v2, 0x5

    sget-object v5, Lcom/a/a/c/z;->m:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    aput-char v1, v3, v4

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_6

    :cond_1a
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_1c
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_26

    move v1, v9

    move v7, v0

    :goto_7
    if-ge v1, v8, :cond_24

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    aget-char v3, v0, v1

    const/16 v0, 0x2028

    if-ne v3, v0, :cond_1d

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v4, v7, 0x4

    const/4 v5, -0x1

    if-ne v2, v5, :cond_30

    move v2, v1

    move v5, v1

    move v6, v0

    move v7, v4

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_7

    :cond_1d
    const/16 v0, 0x5d

    if-lt v3, v0, :cond_1e

    const/16 v0, 0x7f

    if-lt v3, v0, :cond_32

    const/16 v0, 0xa0

    if-gt v3, v0, :cond_32

    const/4 v0, -0x1

    if-ne v2, v0, :cond_33

    move v0, v1

    :goto_9
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v7, v7, 0x4

    move v2, v0

    move v5, v1

    move v6, v4

    goto :goto_8

    :cond_1e
    const/16 v0, 0x20

    if-ne v3, v0, :cond_1f

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_32

    add-int/lit8 v0, v6, 0x1

    sget-object v4, Lcom/a/a/c/z;->j:[B

    array-length v4, v4

    if-ge v3, v4, :cond_31

    sget-object v4, Lcom/a/a/c/z;->j:[B

    aget-byte v4, v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_31

    add-int/lit8 v7, v7, 0x4

    move v4, v7

    :goto_b
    const/4 v5, -0x1

    if-ne v2, v5, :cond_30

    move v2, v1

    move v5, v1

    move v6, v0

    move v7, v4

    goto :goto_8

    :cond_1f
    const/16 v0, 0x2f

    if-ne v3, v0, :cond_20

    iget v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v10, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v10, v10, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_a

    :cond_20
    const/16 v0, 0x23

    if-le v3, v0, :cond_21

    const/16 v0, 0x5c

    if-eq v3, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_a

    :cond_21
    const/16 v0, 0x1f

    if-le v3, v0, :cond_22

    const/16 v0, 0x5c

    if-eq v3, v0, :cond_22

    const/16 v0, 0x22

    if-ne v3, v0, :cond_23

    :cond_22
    const/4 v0, 0x1

    goto :goto_a

    :cond_23
    const/4 v0, 0x0

    goto :goto_a

    :cond_24
    if-lez v6, :cond_26

    add-int v0, v7, v6

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_25
    iput v0, p0, Lcom/a/a/c/z;->b:I

    const/4 v0, 0x1

    if-ne v6, v0, :cond_29

    const/16 v0, 0x2028

    if-ne v4, v0, :cond_27

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v5, 0x6

    sub-int v2, v8, v5

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    iget-object v4, p0, Lcom/a/a/c/z;->a:[C

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v5

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x38

    aput-char v2, v0, v1

    :cond_26
    :goto_c
    if-eqz p2, :cond_2f

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    :cond_27
    sget-object v0, Lcom/a/a/c/z;->j:[B

    array-length v0, v0

    if-ge v4, v0, :cond_28

    sget-object v0, Lcom/a/a/c/z;->j:[B

    aget-byte v0, v0, v4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v5, 0x6

    sub-int v2, v8, v5

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    invoke-static {v3, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0x5c

    aput-char v2, v0, v5

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v3, v3, v5

    aput-char v3, v0, v2

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v3, v3, v5

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v3, v3, v5

    aput-char v3, v0, v2

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v2, Lcom/a/a/c/z;->m:[C

    and-int/lit8 v3, v4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_c

    :cond_28
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v5, 0x2

    sub-int v2, v8, v5

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    invoke-static {v3, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v5

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v2, Lcom/a/a/c/z;->l:[C

    aget-char v2, v2, v4

    aput-char v2, v0, v1

    goto/16 :goto_c

    :cond_29
    const/4 v0, 0x1

    if-le v6, v0, :cond_26

    sub-int v0, v2, v9

    move v1, v8

    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/a/a/c/z;->j:[B

    array-length v3, v3

    if-ge v4, v3, :cond_2a

    sget-object v3, Lcom/a/a/c/z;->j:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_2b

    :cond_2a
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_2d

    iget v3, p0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2d

    :cond_2b
    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v2

    sget-object v2, Lcom/a/a/c/z;->j:[B

    aget-byte v2, v2, v4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v5

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v3

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v5

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v3

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    add-int/lit8 v1, v1, 0x5

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2c
    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/a/a/c/z;->l:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2d
    const/16 v3, 0x2028

    if-ne v4, v3, :cond_2e

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v2

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v5

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v3

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v5

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v3

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/a/a/c/z;->m:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    add-int/lit8 v1, v1, 0x5

    goto :goto_e

    :cond_2e
    iget-object v5, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v4, v5, v2

    move v2, v3

    goto :goto_e

    :cond_2f
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_30
    move v5, v1

    move v6, v0

    move v7, v4

    goto/16 :goto_8

    :cond_31
    move v4, v7

    goto/16 :goto_b

    :cond_32
    move v3, v4

    goto/16 :goto_8

    :cond_33
    move v0, v2

    goto/16 :goto_9

    :cond_34
    move v0, v2

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    const/16 v2, 0x3a

    iget v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->a:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/a/a/c/z;->write(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/c/z;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->a:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2, p2}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/a/a/c/z;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public a([B)V
    .locals 14

    const/16 v1, 0x3d

    const/4 v13, 0x2

    const/4 v0, 0x0

    array-length v5, p1

    iget v2, p0, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const/16 v2, 0x27

    move v4, v2

    :goto_1
    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    const-string v0, "\'\'"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x22

    move v4, v2

    goto :goto_1

    :cond_2
    const-string v0, "\"\""

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/a/a/b/e;->t:[C

    div-int/lit8 v2, v5, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v2, v5, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/a/a/c/z;->b:I

    iget v8, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v2, v8

    add-int/lit8 v8, v2, 0x2

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v8, v2, :cond_9

    iget-object v2, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v2, :cond_8

    invoke-virtual {p0, v4}, Lcom/a/a/c/z;->write(I)V

    move v2, v0

    :goto_4
    if-ge v2, v7, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v2

    add-int/lit8 v2, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    ushr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/a/a/c/z;->write(I)V

    ushr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/a/a/c/z;->write(I)V

    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/a/a/c/z;->write(I)V

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->write(I)V

    goto :goto_4

    :cond_4
    sub-int v2, v5, v7

    if-lez v2, :cond_6

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_5

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_5
    or-int/2addr v0, v3

    shr-int/lit8 v3, v0, 0xc

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->write(I)V

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/a/a/c/z;->write(I)V

    if-ne v2, v13, :cond_7

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(I)V

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    :cond_6
    invoke-virtual {p0, v4}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v8}, Lcom/a/a/c/z;->a(I)V

    :cond_9
    iput v8, p0, Lcom/a/a/c/z;->b:I

    iget-object v9, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v3, 0x1

    aput-char v4, v9, v3

    move v3, v0

    :goto_6
    if-ge v3, v7, :cond_a

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v3

    add-int/lit8 v3, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v11, v2, 0x1

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v10, v2

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v11

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v10

    iget-object v10, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v11, 0x1

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v6, v9

    aput-char v9, v10, v11

    goto :goto_6

    :cond_a
    sub-int v2, v5, v7

    if-lez v2, :cond_c

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_b

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_b
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v8, -0x5

    shr-int/lit8 v7, v0, 0xc

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v8, -0x4

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v8, -0x3

    if-ne v2, v13, :cond_d

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_7
    aput-char v0, v3, v5

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v8, -0x2

    aput-char v1, v0, v2

    :cond_c
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v1, v8, -0x1

    aput-char v4, v0, v1

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public synthetic append(C)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->a(C)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;II)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->a(C)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;II)Lcom/a/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_3

    neg-int v0, p1

    :goto_1
    move v1, v2

    :goto_2
    sget-object v3, Lcom/a/a/c/z;->e:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    if-gez p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    array-length v3, v3

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->a(I)V

    :cond_2
    int-to-long v2, p1

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    invoke-static {v2, v3, v1, v0}, Lcom/a/a/c/z;->a(JI[C)V

    iput v1, p0, Lcom/a/a/c/z;->b:I

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-array v1, v0, [C

    int-to-long v4, p1

    invoke-static {v4, v5, v0, v1}, Lcom/a/a/c/z;->a(JI[C)V

    array-length v0, v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/a/a/c/z;->write([CII)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 14

    const/16 v13, 0x2f

    const/16 v12, 0xd

    const/4 v0, 0x0

    const/16 v11, 0x5c

    const/16 v10, 0x27

    if-nez p1, :cond_1

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->a(I)V

    :cond_0
    const-string v2, "null"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/a/a/c/z;->a:[C

    iget v5, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/a/a/c/z;->b:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v6, v2, :cond_6

    iget-object v2, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v10}, Lcom/a/a/c/z;->write(I)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v12, :cond_2

    if-eq v1, v11, :cond_2

    if-eq v1, v10, :cond_2

    if-ne v1, v13, :cond_3

    iget v2, p0, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0, v11}, Lcom/a/a/c/z;->write(I)V

    sget-object v2, Lcom/a/a/c/z;->l:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v10}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/a/a/c/z;->a(I)V

    :cond_6
    iget v2, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v5, v2, 0x1

    add-int v7, v5, v1

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    iget v3, p0, Lcom/a/a/c/z;->b:I

    aput-char v10, v2, v3

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/a/a/c/z;->b:I

    const/4 v2, -0x1

    move v3, v5

    move v1, v0

    move v4, v0

    :goto_3
    if-ge v3, v7, :cond_8

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    aget-char v0, v0, v3

    if-le v0, v12, :cond_7

    if-eq v0, v11, :cond_7

    if-eq v0, v10, :cond_7

    if-ne v0, v13, :cond_e

    iget v8, p0, Lcom/a/a/c/z;->c:I

    sget-object v9, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v9, v9, Lcom/a/a/c/aa;->x:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v2, v3

    move v4, v1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    add-int v0, v6, v4

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    array-length v3, v3

    if-le v0, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_9
    iput v0, p0, Lcom/a/a/c/z;->b:I

    const/4 v0, 0x1

    if-ne v4, v0, :cond_b

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    aput-char v11, v0, v2

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/a/a/c/z;->l:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    :cond_a
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    iget v1, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char v10, v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    if-le v4, v0, :cond_a

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    aput-char v11, v0, v2

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/a/a/c/z;->l:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v2, -0x2

    :goto_5
    if-lt v1, v5, :cond_a

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    aget-char v2, v2, v1

    if-le v2, v12, :cond_c

    if-eq v2, v11, :cond_c

    if-eq v2, v10, :cond_c

    if-ne v2, v13, :cond_d

    iget v3, p0, Lcom/a/a/c/z;->c:I

    sget-object v4, Lcom/a/a/c/aa;->p:Lcom/a/a/c/aa;

    iget v4, v4, Lcom/a/a/c/aa;->x:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    aput-char v11, v3, v1

    iget-object v3, p0, Lcom/a/a/c/z;->a:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/a/a/c/z;->l:[C

    aget-char v2, v6, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/c/z;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c/z;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/a/a/c/z;->n:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/z;->a:[C

    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/c/z;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/a/c/z;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    iget v2, p0, Lcom/a/a/c/z;->b:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    iput v0, p0, Lcom/a/a/c/z;->b:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/c/z;->flush()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    move v1, p3

    :goto_0
    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    iget v3, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/a/a/c/z;->b:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    iget v1, p0, Lcom/a/a/c/z;->b:I

    sub-int/2addr v0, v1

    add-int v1, p2, v0

    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    iget v3, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    iput v1, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {p0}, Lcom/a/a/c/z;->flush()V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    if-gt p3, v0, :cond_0

    move v0, p3

    move v1, p3

    goto :goto_0

    :cond_1
    move v1, p3

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4

    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/a/a/c/z;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/a/a/c/z;->a(I)V

    move v1, p3

    :goto_1
    iget-object v2, p0, Lcom/a/a/c/z;->a:[C

    iget v3, p0, Lcom/a/a/c/z;->b:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/a/a/c/z;->b:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    iget v1, p0, Lcom/a/a/c/z;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    iget v2, p0, Lcom/a/a/c/z;->b:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    iput v1, p0, Lcom/a/a/c/z;->b:I

    invoke-virtual {p0}, Lcom/a/a/c/z;->flush()V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/a/a/c/z;->a:[C

    array-length v0, v0

    if-gt p3, v0, :cond_3

    move v0, p3

    move v1, p3

    goto :goto_1

    :cond_4
    move v1, p3

    goto :goto_1
.end method
