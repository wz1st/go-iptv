.class public Lcom/b/a/c/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/c/a$b;,
        Lcom/b/a/c/c/a$c;,
        Lcom/b/a/c/c/a$a;
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
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/res/AssetManager;

.field private final c:Lcom/b/a/c/c/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/a$a",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/b/a/c/c/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/b/a/c/c/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lcom/b/a/c/c/a$a",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/a;->b:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/b/a/c/c/a;->c:Lcom/b/a/c/c/a$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/c/n$a",
            "<TData;>;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/b/a/c/c/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/b/a/c/c/n$a;

    new-instance v2, Lcom/b/a/h/b;

    invoke-direct {v2, p1}, Lcom/b/a/h/b;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/b/a/c/c/a;->c:Lcom/b/a/c/c/a$a;

    iget-object v4, p0, Lcom/b/a/c/c/a;->b:Landroid/content/res/AssetManager;

    invoke-interface {v3, v4, v0}, Lcom/b/a/c/c/a$a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/b/a/c/a/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/b/a/c/c/n$a;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/a/d;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/c/a;->a(Landroid/net/Uri;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android_asset"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/b/a/c/c/a;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
