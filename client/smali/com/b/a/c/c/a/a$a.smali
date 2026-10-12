.class public Lcom/b/a/c/c/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/o",
        "<",
        "Lcom/b/a/c/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/m",
            "<",
            "Lcom/b/a/c/c/g;",
            "Lcom/b/a/c/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/c/m;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/b/a/c/c/m;-><init>(J)V

    iput-object v0, p0, Lcom/b/a/c/c/a/a$a;->a:Lcom/b/a/c/c/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/c/r;)Lcom/b/a/c/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/r;",
            ")",
            "Lcom/b/a/c/c/n",
            "<",
            "Lcom/b/a/c/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/a/a;

    iget-object v1, p0, Lcom/b/a/c/c/a/a$a;->a:Lcom/b/a/c/c/m;

    invoke-direct {v0, v1}, Lcom/b/a/c/c/a/a;-><init>(Lcom/b/a/c/c/m;)V

    return-object v0
.end method
