.class public abstract Lcom/g/a/b/h;
.super Lcom/g/a/b/g;

# interfaces
.implements Lcom/g/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/g/a/b/g",
        "<TT;>;",
        "Lcom/g/a/b/e",
        "<TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/b/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/g/a/b/h;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/g/a/b/h;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/g/a/b/h;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/g/a/b/h;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation
.end method
