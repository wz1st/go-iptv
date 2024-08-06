.class final Lcom/b/a/c/c/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/b/a/c/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/f$d",
            "<TData;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/b/a/c/c/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/b/a/c/c/f$d",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/f$c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/b/a/c/c/f$c;->b:Lcom/b/a/c/c/f$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/c/f$c;->b:Lcom/b/a/c/c/f$d;

    invoke-interface {v0}, Lcom/b/a/c/c/f$d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/a/d$a",
            "<-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/c/f$c;->b:Lcom/b/a/c/c/f$d;

    iget-object v1, p0, Lcom/b/a/c/c/f$c;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/b/a/c/c/f$d;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/c/f$c;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/b/a/c/c/f$c;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FileLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FileLoader"

    const-string v2, "Failed to open file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/c/f$c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/c/f$c;->b:Lcom/b/a/c/c/f$d;

    iget-object v1, p0, Lcom/b/a/c/c/f$c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/b/a/c/c/f$d;->a(Ljava/lang/Object;)V
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
