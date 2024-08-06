.class public final Lcom/b/a/c/c/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/o",
        "<",
        "Ljava/lang/String;",
        "Landroid/content/res/AssetFileDescriptor;",
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
.method public a(Lcom/b/a/c/c/r;)Lcom/b/a/c/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/r;",
            ")",
            "Lcom/b/a/c/c/n",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/u;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lcom/b/a/c/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/c/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/c/c/u;-><init>(Lcom/b/a/c/c/n;)V

    return-object v0
.end method
