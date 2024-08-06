.class public abstract La/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, La/z;->c()La/t;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, La/a/c;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, La/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, La/a/c;->d:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public final a()[B
    .locals 6

    invoke-virtual {p0}, La/z;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, La/z;->d()Lb/d;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lb/d;->j()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v2}, La/a/c;->a(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v2}, La/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method public abstract b()J
.end method

.method public abstract c()La/t;
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, La/z;->d()Lb/d;

    move-result-object v0

    invoke-static {v0}, La/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lb/d;
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, La/z;->a()[B

    move-result-object v1

    invoke-direct {p0}, La/z;->f()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
