.class public Lcom/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/i;"
    }
.end annotation


# static fields
.field private static final d:Lcom/b/a/g/e;

.field private static final e:Lcom/b/a/g/e;

.field private static final f:Lcom/b/a/g/e;


# instance fields
.field protected final a:Lcom/b/a/c;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/b/a/d/h;

.field private final g:Lcom/b/a/d/n;

.field private final h:Lcom/b/a/d/m;

.field private final i:Lcom/b/a/d/p;

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/b/a/d/c;

.field private m:Lcom/b/a/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/b/a/g/e;->a(Ljava/lang/Class;)Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->g()Lcom/b/a/g/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->d:Lcom/b/a/g/e;

    const-class v0, Lcom/b/a/c/d/e/c;

    invoke-static {v0}, Lcom/b/a/g/e;->a(Ljava/lang/Class;)Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->g()Lcom/b/a/g/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->e:Lcom/b/a/g/e;

    sget-object v0, Lcom/b/a/c/b/i;->c:Lcom/b/a/c/b/i;

    invoke-static {v0}, Lcom/b/a/g/e;->a(Lcom/b/a/c/b/i;)Lcom/b/a/g/e;

    move-result-object v0

    sget-object v1, Lcom/b/a/g;->d:Lcom/b/a/g;

    invoke-virtual {v0, v1}, Lcom/b/a/g/e;->a(Lcom/b/a/g;)Lcom/b/a/g/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/g/e;->b(Z)Lcom/b/a/g/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->f:Lcom/b/a/g/e;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)V
    .locals 7

    new-instance v4, Lcom/b/a/d/n;

    invoke-direct {v4}, Lcom/b/a/d/n;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/c;->d()Lcom/b/a/d/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/b/a/j;-><init>(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Lcom/b/a/d/n;Lcom/b/a/d/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Lcom/b/a/d/n;Lcom/b/a/d/d;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/d/p;

    invoke-direct {v0}, Lcom/b/a/d/p;-><init>()V

    iput-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    new-instance v0, Lcom/b/a/j$1;

    invoke-direct {v0, p0}, Lcom/b/a/j$1;-><init>(Lcom/b/a/j;)V

    iput-object v0, p0, Lcom/b/a/j;->j:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/b/a/j;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    iput-object p2, p0, Lcom/b/a/j;->c:Lcom/b/a/d/h;

    iput-object p3, p0, Lcom/b/a/j;->h:Lcom/b/a/d/m;

    iput-object p4, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    iput-object p6, p0, Lcom/b/a/j;->b:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/b/a/j$a;

    invoke-direct {v1, p4}, Lcom/b/a/j$a;-><init>(Lcom/b/a/d/n;)V

    invoke-interface {p5, v0, v1}, Lcom/b/a/d/d;->a(Landroid/content/Context;Lcom/b/a/d/c$a;)Lcom/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/j;->l:Lcom/b/a/d/c;

    invoke-static {}, Lcom/b/a/i/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/j;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/j;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/b/a/j;->l:Lcom/b/a/d/c;

    invoke-interface {p2, v0}, Lcom/b/a/d/h;->a(Lcom/b/a/d/i;)V

    invoke-virtual {p1}, Lcom/b/a/c;->e()Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/j;->a(Lcom/b/a/g/e;)V

    invoke-virtual {p1, p0}, Lcom/b/a/c;->a(Lcom/b/a/j;)V

    return-void

    :cond_0
    invoke-interface {p2, p0}, Lcom/b/a/d/h;->a(Lcom/b/a/d/i;)V

    goto :goto_0
.end method

.method private c(Lcom/b/a/g/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/b/a/j;->b(Lcom/b/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    invoke-virtual {v0, p1}, Lcom/b/a/c;->a(Lcom/b/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/b/a/g/a/h;->b()Lcom/b/a/g/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/b/a/g/a/h;->b()Lcom/b/a/g/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/b/a/g/a/h;->a(Lcom/b/a/g/b;)V

    invoke-interface {v0}, Lcom/b/a/g/b;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/j;->g()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/i;->a(Ljava/io/File;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/b/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lcom/b/a/i",
            "<TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    iget-object v2, p0, Lcom/b/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/b/a/i;-><init>(Lcom/b/a/c;Lcom/b/a/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/j;->g()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v0}, Lcom/b/a/d/n;->a()V

    return-void
.end method

.method public a(Lcom/b/a/g/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/b/a/i/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/b/a/j;->c(Lcom/b/a/g/a/h;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/j;->k:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/j$2;

    invoke-direct {v1, p0, p1}, Lcom/b/a/j$2;-><init>(Lcom/b/a/j;Lcom/b/a/g/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lcom/b/a/g/a/h;Lcom/b/a/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;",
            "Lcom/b/a/g/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0, p1}, Lcom/b/a/d/p;->a(Lcom/b/a/g/a/h;)V

    iget-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v0, p2}, Lcom/b/a/d/n;->a(Lcom/b/a/g/b;)V

    return-void
.end method

.method protected a(Lcom/b/a/g/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->h()Lcom/b/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/j;->m:Lcom/b/a/g/e;

    return-void
.end method

.method b(Ljava/lang/Class;)Lcom/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/b/a/k",
            "<*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    invoke-virtual {v0}, Lcom/b/a/c;->e()Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/e;->a(Ljava/lang/Class;)Lcom/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v0}, Lcom/b/a/d/n;->b()V

    return-void
.end method

.method b(Lcom/b/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/b/a/g/a/h;->b()Lcom/b/a/g/b;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v2, v1}, Lcom/b/a/d/n;->b(Lcom/b/a/g/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v1, p1}, Lcom/b/a/d/p;->b(Lcom/b/a/g/a/h;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/b/a/g/a/h;->a(Lcom/b/a/g/b;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/j;->b()V

    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0}, Lcom/b/a/d/p;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/j;->a()V

    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0}, Lcom/b/a/d/p;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0}, Lcom/b/a/d/p;->e()V

    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0}, Lcom/b/a/d/p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a/h;

    invoke-virtual {p0, v0}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/j;->i:Lcom/b/a/d/p;

    invoke-virtual {v0}, Lcom/b/a/d/p;->b()V

    iget-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v0}, Lcom/b/a/d/n;->c()V

    iget-object v0, p0, Lcom/b/a/j;->c:Lcom/b/a/d/h;

    invoke-interface {v0, p0}, Lcom/b/a/d/h;->b(Lcom/b/a/d/i;)V

    iget-object v0, p0, Lcom/b/a/j;->c:Lcom/b/a/d/h;

    iget-object v1, p0, Lcom/b/a/j;->l:Lcom/b/a/d/c;

    invoke-interface {v0, v1}, Lcom/b/a/d/h;->b(Lcom/b/a/d/i;)V

    iget-object v0, p0, Lcom/b/a/j;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/j;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    invoke-virtual {v0, p0}, Lcom/b/a/c;->b(Lcom/b/a/j;)V

    return-void
.end method

.method public f()Lcom/b/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/b/a/j;->a(Ljava/lang/Class;)Lcom/b/a/i;

    move-result-object v0

    sget-object v1, Lcom/b/a/j;->d:Lcom/b/a/g/e;

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/b/a/j;->a(Ljava/lang/Class;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/b/a/g/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/j;->m:Lcom/b/a/g/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/j;->g:Lcom/b/a/d/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/j;->h:Lcom/b/a/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
