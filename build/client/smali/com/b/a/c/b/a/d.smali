.class abstract Lcom/b/a/c/b/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/b/a/c/b/a/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/b/a/i/j;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/a/d;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method abstract b()Lcom/b/a/c/b/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method c()Lcom/b/a/c/b/a/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/a/m;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/c/b/a/d;->b()Lcom/b/a/c/b/a/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method
