.class public Lcom/b/a/c/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/c/f$b;,
        Lcom/b/a/c/c/f$e;,
        Lcom/b/a/c/c/f$a;,
        Lcom/b/a/c/c/f$c;,
        Lcom/b/a/c/c/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/n",
        "<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/f$d",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/c/c/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/f$d",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/f;->a:Lcom/b/a/c/c/f$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/c/n$a",
            "<TData;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/n$a;

    new-instance v1, Lcom/b/a/h/b;

    invoke-direct {v1, p1}, Lcom/b/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/b/a/c/c/f$c;

    iget-object v3, p0, Lcom/b/a/c/c/f;->a:Lcom/b/a/c/c/f$d;

    invoke-direct {v2, p1, v3}, Lcom/b/a/c/c/f$c;-><init>(Ljava/io/File;Lcom/b/a/c/c/f$d;)V

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/c/n$a;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/a/d;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/c/f;->a(Ljava/io/File;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/b/a/c/c/f;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
