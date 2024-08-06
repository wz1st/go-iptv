.class public final Lcom/b/a/c/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/e",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d/a/r;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/d/a/r;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/d/a/r;-><init>(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)V

    iput-object v0, p0, Lcom/b/a/c/a/k;->a:Lcom/b/a/c/d/a/r;

    iget-object v0, p0, Lcom/b/a/c/a/k;->a:Lcom/b/a/c/d/a/r;

    const/high16 v1, 0x500000

    invoke-virtual {v0, v1}, Lcom/b/a/c/d/a/r;->mark(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/a/k;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/a/k;->a:Lcom/b/a/c/d/a/r;

    invoke-virtual {v0}, Lcom/b/a/c/d/a/r;->b()V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/a/k;->a:Lcom/b/a/c/d/a/r;

    invoke-virtual {v0}, Lcom/b/a/c/d/a/r;->reset()V

    iget-object v0, p0, Lcom/b/a/c/a/k;->a:Lcom/b/a/c/d/a/r;

    return-object v0
.end method
