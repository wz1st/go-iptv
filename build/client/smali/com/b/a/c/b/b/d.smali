.class public Lcom/b/a/c/b/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/b/d$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/b/a/c/b/b/d$a;


# direct methods
.method public constructor <init>(Lcom/b/a/c/b/b/d$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/b/a/c/b/b/d;->a:J

    iput-object p1, p0, Lcom/b/a/c/b/b/d;->b:Lcom/b/a/c/b/b/d$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/c/b/b/a;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/c/b/b/d;->b:Lcom/b/a/c/b/b/d$a;

    invoke-interface {v1}, Lcom/b/a/c/b/b/d$a;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/b/a/c/b/b/d;->a:J

    invoke-static {v1, v2, v3}, Lcom/b/a/c/b/b/e;->a(Ljava/io/File;J)Lcom/b/a/c/b/b/a;

    move-result-object v0

    goto :goto_0
.end method
