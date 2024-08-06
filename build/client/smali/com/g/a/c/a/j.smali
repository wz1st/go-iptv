.class final Lcom/g/a/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/g/a/b/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/a/a;

.field final synthetic b:Lcom/g/a/c/a/e;


# direct methods
.method constructor <init>(Lcom/g/a/c/a/e;Lcom/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/a/j;->b:Lcom/g/a/c/a/e;

    iput-object p2, p0, Lcom/g/a/c/a/j;->a:Lcom/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/g/a/c/a/j;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/a/j;->b:Lcom/g/a/c/a/e;

    iput-object p2, v0, Lcom/g/a/c/a/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/g/a/c/a/j;->a:Lcom/g/a/a/a;

    invoke-interface {v0, p1}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V

    return-void
.end method
