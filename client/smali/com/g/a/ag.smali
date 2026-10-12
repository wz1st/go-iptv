.class final Lcom/g/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/q$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/g/a/q$a",
        "<",
        "Lcom/g/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/q;


# direct methods
.method constructor <init>(Lcom/g/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/ag;->a:Lcom/g/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/ag;->a:Lcom/g/a/q;

    invoke-static {v0}, Lcom/g/a/q;->a(Lcom/g/a/q;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/g/a/h;

    invoke-virtual {p0, p1}, Lcom/g/a/ag;->a(Lcom/g/a/h;)V

    return-void
.end method
