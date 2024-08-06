.class public Lcom/b/a/c/c/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/a$a;
.implements Lcom/b/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/a$a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/b/a/c/c/o",
        "<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/a$b;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/b/a/c/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/c/a/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/a/h;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

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
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/a;

    iget-object v1, p0, Lcom/b/a/c/c/a$b;->a:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, p0}, Lcom/b/a/c/c/a;-><init>(Landroid/content/res/AssetManager;Lcom/b/a/c/c/a$a;)V

    return-object v0
.end method
