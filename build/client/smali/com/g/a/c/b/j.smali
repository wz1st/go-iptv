.class final Lcom/g/a/c/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/q$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/g/a/q$a",
        "<[B>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/g/a/i;

.field final synthetic d:Lcom/g/a/q;

.field final synthetic e:Lcom/g/a/c/b/f;


# direct methods
.method constructor <init>(Lcom/g/a/c/b/f;Lcom/g/a/i;Lcom/g/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iput-object p2, p0, Lcom/g/a/c/b/j;->c:Lcom/g/a/i;

    iput-object p3, p0, Lcom/g/a/c/b/j;->d:Lcom/g/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/g/a/q;

    iget-object v1, p0, Lcom/g/a/c/b/j;->c:Lcom/g/a/i;

    invoke-direct {v0, v1}, Lcom/g/a/q;-><init>(Lcom/g/a/i;)V

    new-instance v1, Lcom/g/a/c/b/m;

    invoke-direct {v1, p0}, Lcom/g/a/c/b/m;-><init>(Lcom/g/a/c/b/j;)V

    iget v2, p0, Lcom/g/a/c/b/j;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v1}, Lcom/g/a/q;->a(BLcom/g/a/a/c;)Lcom/g/a/q;

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/g/a/c/b/j;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3, v1}, Lcom/g/a/q;->a(BLcom/g/a/a/c;)Lcom/g/a/q;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/g/a/c/b/j;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/g/a/c/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/c/b/j;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/g/a/c/b/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/b/j;->d:Lcom/g/a/q;

    const/4 v1, 0x2

    new-instance v2, Lcom/g/a/c/b/n;

    invoke-direct {v2, p0}, Lcom/g/a/c/b/n;-><init>(Lcom/g/a/c/b/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/q;->a(ILcom/g/a/q$a;)Lcom/g/a/q;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/g/a/c/b/f;->d:Z

    iget-object v0, p0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v1, p0, Lcom/g/a/c/b/j;->c:Lcom/g/a/i;

    invoke-virtual {v0, v1}, Lcom/g/a/c/b/f;->a(Lcom/g/a/i;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/g/a/c/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/c/b/j;->b()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/g/a/c/b/j;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2}, Lcom/g/a/c/b/f;->a([BLjava/nio/ByteOrder;)S

    move-result v2

    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    new-instance v4, Ljava/io/IOException;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "unknown format (magic number %x)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/g/a/c/b/f;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/g/a/c/b/j;->c:Lcom/g/a/i;

    new-instance v1, Lcom/g/a/a/c$a;

    invoke-direct {v1}, Lcom/g/a/a/c$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/g/a/i;->a(Lcom/g/a/a/c;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/g/a/c/b/j;->a:I

    iget v2, p0, Lcom/g/a/c/b/j;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/g/a/c/b/j;->b:Z

    iget-boolean v0, p0, Lcom/g/a/c/b/j;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v0, v0, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_1
    iget v0, p0, Lcom/g/a/c/b/j;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/g/a/c/b/j;->d:Lcom/g/a/q;

    const/4 v1, 0x2

    new-instance v2, Lcom/g/a/c/b/k;

    invoke-direct {v2, p0}, Lcom/g/a/c/b/k;-><init>(Lcom/g/a/c/b/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/q;->a(ILcom/g/a/q$a;)Lcom/g/a/q;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/g/a/c/b/j;->a()V

    goto :goto_0
.end method
