.class final Lcom/g/a/c/b/n;
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
.field final synthetic a:Lcom/g/a/c/b/j;


# direct methods
.method constructor <init>(Lcom/g/a/c/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/g/a/c/b/n;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/g/a/c/b/f;->a([BLjava/nio/ByteOrder;)S

    move-result v0

    iget-object v1, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v1, v1, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v1, v1, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/g/a/c/b/f;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v0, v0, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/g/a/c/b/f;->d:Z

    iget-object v0, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v1, p0, Lcom/g/a/c/b/n;->a:Lcom/g/a/c/b/j;

    iget-object v1, v1, Lcom/g/a/c/b/j;->c:Lcom/g/a/i;

    invoke-virtual {v0, v1}, Lcom/g/a/c/b/f;->a(Lcom/g/a/i;)V

    goto :goto_0
.end method
