.class final Lcom/g/a/c/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/c;


# instance fields
.field final synthetic a:Lcom/g/a/c/b/j;


# direct methods
.method constructor <init>(Lcom/g/a/c/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/b/m;->a:Lcom/g/a/c/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 5

    iget-object v0, p0, Lcom/g/a/c/b/m;->a:Lcom/g/a/c/b/j;

    iget-boolean v0, v0, Lcom/g/a/c/b/j;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/g/a/h;->n()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/g/a/h;->m()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/c/b/m;->a:Lcom/g/a/c/b/j;

    iget-object v1, v1, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v1, v1, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-static {v0}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/g/a/h;->k()V

    iget-object v0, p0, Lcom/g/a/c/b/m;->a:Lcom/g/a/c/b/j;

    invoke-static {v0}, Lcom/g/a/c/b/j;->b(Lcom/g/a/c/b/j;)V

    return-void
.end method
