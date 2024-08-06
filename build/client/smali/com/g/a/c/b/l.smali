.class final Lcom/g/a/c/b/l;
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
.field final synthetic a:Lcom/g/a/c/b/k;


# direct methods
.method constructor <init>(Lcom/g/a/c/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/b/l;->a:Lcom/g/a/c/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/g/a/c/b/l;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 3

    iget-object v0, p0, Lcom/g/a/c/b/l;->a:Lcom/g/a/c/b/k;

    iget-object v0, v0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    iget-boolean v0, v0, Lcom/g/a/c/b/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/b/l;->a:Lcom/g/a/c/b/k;

    iget-object v0, v0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    iget-object v0, v0, Lcom/g/a/c/b/j;->e:Lcom/g/a/c/b/f;

    iget-object v0, v0, Lcom/g/a/c/b/f;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/b/l;->a:Lcom/g/a/c/b/k;

    iget-object v0, v0, Lcom/g/a/c/b/k;->a:Lcom/g/a/c/b/j;

    invoke-static {v0}, Lcom/g/a/c/b/j;->a(Lcom/g/a/c/b/j;)V

    return-void
.end method
