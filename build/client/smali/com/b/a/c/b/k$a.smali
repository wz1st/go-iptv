.class Lcom/b/a/c/b/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/u;Z)Lcom/b/a/c/b/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/u",
            "<TR;>;Z)",
            "Lcom/b/a/c/b/o",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/b/a/c/b/o;-><init>(Lcom/b/a/c/b/u;ZZ)V

    return-object v0
.end method
