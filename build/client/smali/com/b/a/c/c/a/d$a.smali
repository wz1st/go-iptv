.class public Lcom/b/a/c/c/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/a/d;
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
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/a/d$a;->a:Landroid/content/Context;

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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/a/d;

    iget-object v1, p0, Lcom/b/a/c/c/a/d$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/c/c/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
