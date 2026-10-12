.class public Lcom/g/a/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/i;)Lcom/g/a/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/g/a/i;",
            ")",
            "Lcom/g/a/b/d",
            "<",
            "Lcom/g/a/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    new-instance v1, Lcom/g/a/d/d;

    invoke-direct {v1, p0, p1}, Lcom/g/a/d/d;-><init>(Lcom/g/a/d/a;Lcom/g/a/i;)V

    new-instance v2, Lcom/g/a/d/e;

    invoke-direct {v2, p0, v0}, Lcom/g/a/d/e;-><init>(Lcom/g/a/d/a;Lcom/g/a/h;)V

    invoke-interface {p1, v2}, Lcom/g/a/i;->a(Lcom/g/a/a/c;)V

    new-instance v2, Lcom/g/a/d/f;

    invoke-direct {v2, p0, v1, v0}, Lcom/g/a/d/f;-><init>(Lcom/g/a/d/a;Lcom/g/a/b/g;Lcom/g/a/h;)V

    invoke-interface {p1, v2}, Lcom/g/a/i;->b(Lcom/g/a/a/a;)V

    return-object v1
.end method
