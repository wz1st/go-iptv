.class public Lcom/b/a/c/c/f$e;
.super Lcom/b/a/c/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/c/c/f$a",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/c/f$e$1;

    invoke-direct {v0}, Lcom/b/a/c/c/f$e$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/b/a/c/c/f$a;-><init>(Lcom/b/a/c/c/f$d;)V

    return-void
.end method
