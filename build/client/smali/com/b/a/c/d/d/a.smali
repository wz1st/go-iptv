.class public Lcom/b/a/c/d/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/d/d/b;

    invoke-direct {v0, p1}, Lcom/b/a/c/d/d/b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/d/d/a;->a(Ljava/io/File;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;Lcom/b/a/c/j;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/d/a;->a(Ljava/io/File;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
