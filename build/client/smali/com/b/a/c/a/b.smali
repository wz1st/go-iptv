.class public abstract Lcom/b/a/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/a/b;->b:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/b/a/c/a/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/a/d$a",
            "<-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/a/b;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/b/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/c/a/b;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/a/b;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/b/a/c/a/b;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AssetPathFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AssetPathFetcher"

    const-string v2, "Failed to load data from asset manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/a/b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/a/b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/b/a/c/a/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/b/a/c/a;
    .locals 1

    sget-object v0, Lcom/b/a/c/a;->a:Lcom/b/a/c/a;

    return-object v0
.end method
