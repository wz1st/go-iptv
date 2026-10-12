.class Lcom/b/a/c/b/j$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/j$a;
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
        "Lcom/b/a/c/b/g",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/b/j$a;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/b/j$a$1;->a:Lcom/b/a/c/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/c/b/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c/b/g",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/b/g;

    iget-object v1, p0, Lcom/b/a/c/b/j$a$1;->a:Lcom/b/a/c/b/j$a;

    iget-object v1, v1, Lcom/b/a/c/b/j$a;->a:Lcom/b/a/c/b/g$d;

    iget-object v2, p0, Lcom/b/a/c/b/j$a$1;->a:Lcom/b/a/c/b/j$a;

    iget-object v2, v2, Lcom/b/a/c/b/j$a;->b:Landroid/support/v4/e/l$a;

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b/g;-><init>(Lcom/b/a/c/b/g$d;Landroid/support/v4/e/l$a;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/b/j$a$1;->a()Lcom/b/a/c/b/g;

    move-result-object v0

    return-object v0
.end method
