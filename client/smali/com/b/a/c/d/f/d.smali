.class public Lcom/b/a/c/d/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/d/f/e",
        "<",
        "Lcom/b/a/c/d/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/u;Lcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/b/a/c/d/b/b;

    invoke-static {v0}, Lcom/b/a/i/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/b/a/c/d/b/b;-><init>([B)V

    return-object v1
.end method
