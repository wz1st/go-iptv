.class public Lcom/g/a/c/b/f;
.super Lcom/g/a/c/b/g;


# instance fields
.field d:Z

.field protected e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/g/a/c/b/g;-><init>(Ljava/util/zip/Inflater;)V

    iput-boolean v1, p0, Lcom/g/a/c/b/f;->d:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method static a([BLjava/nio/ByteOrder;)S
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    aget-byte v0, p0, v1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 3

    iget-boolean v0, p0, Lcom/g/a/c/b/f;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/g/a/q;

    invoke-direct {v0, p1}, Lcom/g/a/q;-><init>(Lcom/g/a/i;)V

    const/16 v1, 0xa

    new-instance v2, Lcom/g/a/c/b/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/g/a/c/b/j;-><init>(Lcom/g/a/c/b/f;Lcom/g/a/i;Lcom/g/a/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/q;->a(ILcom/g/a/q$a;)Lcom/g/a/q;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/g/a/c/b/g;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    goto :goto_0
.end method
