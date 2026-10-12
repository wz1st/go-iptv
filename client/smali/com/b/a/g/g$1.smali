.class Lcom/b/a/g/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/g/g;
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
        "Lcom/b/a/g/g",
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
.method public a()Lcom/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/g/g",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/g/g;

    invoke-direct {v0}, Lcom/b/a/g/g;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/g/g$1;->a()Lcom/b/a/g/g;

    move-result-object v0

    return-object v0
.end method
