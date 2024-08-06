.class final Lcom/g/a/c/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/c/c/q;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/r;->a:Lcom/g/a/c/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/r;->a:Lcom/g/a/c/c/q;

    iget-object v0, v0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Lcom/g/a/c/c/e;->h()Lcom/g/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/g/a/a/e;->a()V

    :cond_0
    return-void
.end method
