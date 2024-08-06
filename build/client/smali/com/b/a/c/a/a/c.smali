.class public Lcom/b/a/c/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/a/a/c$a;,
        Lcom/b/a/c/a/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/b/a/c/a/a/e;

.field private c:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/b/a/c/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/a/a/c;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/b/a/c/a/a/c;->b:Lcom/b/a/c/a/a/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/b/a/c/a/a/c;
    .locals 2

    new-instance v0, Lcom/b/a/c/a/a/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/c/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/b/a/c/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/b/a/c/a/a/d;)Lcom/b/a/c/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lcom/b/a/c/a/a/d;)Lcom/b/a/c/a/a/c;
    .locals 4

    invoke-static {p0}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->b()Lcom/b/a/c/b/a/b;

    move-result-object v0

    new-instance v1, Lcom/b/a/c/a/a/e;

    invoke-static {p0}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c;->h()Lcom/b/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/b/a/c/a/a/e;-><init>(Ljava/util/List;Lcom/b/a/c/a/a/d;Lcom/b/a/c/b/a/b;Landroid/content/ContentResolver;)V

    new-instance v0, Lcom/b/a/c/a/a/c;

    invoke-direct {v0, p1, v1}, Lcom/b/a/c/a/a/c;-><init>(Landroid/net/Uri;Lcom/b/a/c/a/a/e;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/b/a/c/a/a/c;
    .locals 2

    new-instance v0, Lcom/b/a/c/a/a/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/c/a/a/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/b/a/c/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/b/a/c/a/a/d;)Lcom/b/a/c/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/io/InputStream;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/b/a/c/a/a/c;->b:Lcom/b/a/c/a/a/e;

    iget-object v1, p0, Lcom/b/a/c/a/a/c;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/b/a/c/a/a/e;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/b/a/c/a/a/c;->b:Lcom/b/a/c/a/a/e;

    iget-object v2, p0, Lcom/b/a/c/a/a/c;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/b/a/c/a/a/e;->a(Landroid/net/Uri;)I

    move-result v0

    move v2, v0

    :goto_0
    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/b/a/c/a/g;

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/a/g;-><init>(Ljava/io/InputStream;I)V

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/a/d$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/c/a/a/c;->e()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/a/a/c;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/b/a/c/a/a/c;->c:Ljava/io/InputStream;

    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaStoreThumbFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MediaStoreThumbFetcher"

    const-string v2, "Failed to find thumbnail file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/a/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/a/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

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
