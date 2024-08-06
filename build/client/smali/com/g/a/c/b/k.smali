.class final Lcom/g/a/c/b/k;
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

    iput-object p1, p0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/g/a/c/b/k;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 3

    iget-object v0, p0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    iget-boolean v0, v0, Lcom/g/a/c/b/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v0, v0, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/g/a/c/b/f;->a([BLjava/nio/ByteOrder;)S

    move-result v0

    iget-object v1, p0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    iget-object v1, v1, Lcom/g/a/c/b/j;->d:Lcom/g/a/q;

    const v2, 0xffff

    and-int/2addr v0, v2

    new-instance v2, Lcom/g/a/c/b/l;

    invoke-direct {v2, p0}, Lcom/g/a/c/b/l;-><init>(Lcom/g/a/c/b/k;)V

    invoke-virtual {v1, v0, v2}, Lcom/g/a/q;->a(ILcom/g/a/q$a;)Lcom/g/a/q;

    return-void
.end method
