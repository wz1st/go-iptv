.class public final Lcom/b/a/c/c/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/o;
.implements Lcom/b/a/c/c/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/w;
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
        "Landroid/net/Uri;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Lcom/b/a/c/c/w$c",
        "<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/w$a;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/b/a/c/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/b/a/c/a/d",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/a/a;

    iget-object v1, p0, Lcom/b/a/c/c/w$a;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lcom/b/a/c/a/a;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public a(Lcom/b/a/c/c/r;)Lcom/b/a/c/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/r;",
            ")",
            "Lcom/b/a/c/c/n",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/w;

    invoke-direct {v0, p0}, Lcom/b/a/c/c/w;-><init>(Lcom/b/a/c/c/w$c;)V

    return-object v0
.end method
