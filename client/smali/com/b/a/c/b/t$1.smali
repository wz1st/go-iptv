.class Lcom/b/a/c/b/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/i/a/a$a",
        "<",
        "Lcom/b/a/c/b/t",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c/b/t",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/b/t;

    invoke-direct {v0}, Lcom/b/a/c/b/t;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/b/t$1;->a()Lcom/b/a/c/b/t;

    move-result-object v0

    return-object v0
.end method
