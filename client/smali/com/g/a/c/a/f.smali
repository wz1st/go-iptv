.class public Lcom/g/a/c/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/g/a/c/a/a",
        "<",
        "Lcom/g/a/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/g/a/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/g/a/c/a/f;Lcom/g/a/c/e;)Lcom/g/a/c/e;
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/a/f;->a:Lcom/g/a/c/e;

    return-object p1
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/c/a/f;->c()Lcom/g/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/g/a/i;Lcom/g/a/a/a;)V
    .locals 2

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    new-instance v1, Lcom/g/a/c/a/k;

    invoke-direct {v1, p0, v0}, Lcom/g/a/c/a/k;-><init>(Lcom/g/a/c/a/f;Lcom/g/a/h;)V

    invoke-interface {p1, v1}, Lcom/g/a/i;->a(Lcom/g/a/a/c;)V

    new-instance v1, Lcom/g/a/c/a/l;

    invoke-direct {v1, p0, p2, v0}, Lcom/g/a/c/a/l;-><init>(Lcom/g/a/c/a/f;Lcom/g/a/a/a;Lcom/g/a/h;)V

    invoke-interface {p1, v1}, Lcom/g/a/i;->b(Lcom/g/a/a/a;)V

    return-void
.end method

.method public c()Lcom/g/a/c/e;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/a/f;->a:Lcom/g/a/c/e;

    return-object v0
.end method

.method public d_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
