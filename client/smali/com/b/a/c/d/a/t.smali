.class public Lcom/b/a/c/d/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/a/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d/a/k;

.field private final b:Lcom/b/a/c/b/a/b;


# direct methods
.method public constructor <init>(Lcom/b/a/c/d/a/k;Lcom/b/a/c/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/t;->a:Lcom/b/a/c/d/a/k;

    iput-object p2, p0, Lcom/b/a/c/d/a/t;->b:Lcom/b/a/c/b/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/b/a/c/d/a/r;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/b/a/c/d/a/r;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-static {p1}, Lcom/b/a/i/d;->a(Ljava/io/InputStream;)Lcom/b/a/i/d;

    move-result-object v7

    new-instance v1, Lcom/b/a/i/g;

    invoke-direct {v1, v7}, Lcom/b/a/i/g;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lcom/b/a/c/d/a/t$a;

    invoke-direct {v5, p1, v7}, Lcom/b/a/c/d/a/t$a;-><init>(Lcom/b/a/c/d/a/r;Lcom/b/a/i/d;)V

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/d/a/t;->a:Lcom/b/a/c/d/a/k;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/c/d/a/k;->a(Ljava/io/InputStream;IILcom/b/a/c/j;Lcom/b/a/c/d/a/k$a;)Lcom/b/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v7}, Lcom/b/a/i/d;->b()V

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/b/a/c/d/a/r;->b()V

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/b/a/c/d/a/r;

    iget-object v0, p0, Lcom/b/a/c/d/a/t;->b:Lcom/b/a/c/b/a/b;

    invoke-direct {v1, p1, v0}, Lcom/b/a/c/d/a/r;-><init>(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)V

    const/4 v0, 0x1

    move v6, v0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/b/a/i/d;->b()V

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/b/a/c/d/a/r;->b()V

    :cond_2
    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/d/a/t;->a(Ljava/io/InputStream;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lcom/b/a/c/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/t;->a:Lcom/b/a/c/d/a/k;

    invoke-virtual {v0, p1}, Lcom/b/a/c/d/a/k;->a(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/a/t;->a(Ljava/io/InputStream;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
