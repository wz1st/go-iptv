.class Lcom/b/a/c/d/e/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/e/g$d;,
        Lcom/b/a/c/d/e/g$a;,
        Lcom/b/a/c/d/e/g$c;,
        Lcom/b/a/c/d/e/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/j;

.field private final b:Lcom/b/a/b/a;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/d/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/a/c/b/a/e;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/b/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/b/a/c/d/e/g$a;

.field private k:Z

.field private l:Lcom/b/a/c/d/e/g$a;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/b/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/b/a/c/d/e/g$a;

.field private p:Lcom/b/a/c/d/e/g$d;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/a/e;Lcom/b/a/j;Lcom/b/a/b/a;Landroid/os/Handler;Lcom/b/a/i;Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            "Lcom/b/a/j;",
            "Lcom/b/a/b/a;",
            "Landroid/os/Handler;",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/b/a/c/d/e/g;->a:Lcom/b/a/j;

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/b/a/c/d/e/g$c;

    invoke-direct {v1, p0}, Lcom/b/a/c/d/e/g$c;-><init>(Lcom/b/a/c/d/e/g;)V

    invoke-direct {p4, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/b/a/c/d/e/g;->e:Lcom/b/a/c/b/a/e;

    iput-object p4, p0, Lcom/b/a/c/d/e/g;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/b/a/c/d/e/g;->i:Lcom/b/a/i;

    iput-object p3, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-virtual {p0, p6, p7}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/b/a/c;Lcom/b/a/b/a;IILcom/b/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c;",
            "Lcom/b/a/b/a;",
            "II",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/b/a/c;->a()Lcom/b/a/c/b/a/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c;->b(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/b/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c;->b(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/j;II)Lcom/b/a/i;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/b/a/c/d/e/g;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/j;Lcom/b/a/b/a;Landroid/os/Handler;Lcom/b/a/i;Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static a(Lcom/b/a/j;II)Lcom/b/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/j;",
            "II)",
            "Lcom/b/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/b/a/j;->f()Lcom/b/a/i;

    move-result-object v0

    sget-object v1, Lcom/b/a/c/b/i;->b:Lcom/b/a/c/b/i;

    invoke-static {v1}, Lcom/b/a/g/e;->a(Lcom/b/a/c/b/i;)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->a(Z)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->b(Z)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/b/a/g/e;->a(II)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method private j()I
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/i/j;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/g;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/g;->k:Z

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->m()V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/g;->f:Z

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/b/a/i/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->f()V

    iput-boolean v2, p0, Lcom/b/a/c/d/e/g;->h:Z

    :cond_2
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {p0, v0}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/c/d/e/g$a;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/b/a/c/d/e/g;->g:Z

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->c()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v2}, Lcom/b/a/b/a;->b()V

    new-instance v2, Lcom/b/a/c/d/e/g$a;

    iget-object v3, p0, Lcom/b/a/c/d/e/g;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v4}, Lcom/b/a/b/a;->e()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/b/a/c/d/e/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lcom/b/a/c/d/e/g;->l:Lcom/b/a/c/d/e/g$a;

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->i:Lcom/b/a/i;

    invoke-static {}, Lcom/b/a/c/d/e/g;->o()Lcom/b/a/c/h;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/g/e;->a(Lcom/b/a/c/h;)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Ljava/lang/Object;)Lcom/b/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->l:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;)Lcom/b/a/g/a/h;

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->e:Lcom/b/a/c/b/a/e;

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/b/a/c/b/a/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private static o()Lcom/b/a/c/h;
    .locals 4

    new-instance v0, Lcom/b/a/h/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/h/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method a(Lcom/b/a/c/d/e/g$a;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->p:Lcom/b/a/c/d/e/g$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->p:Lcom/b/a/c/d/e/g$d;

    invoke-interface {v0}, Lcom/b/a/c/d/e/g$d;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/g;->g:Z

    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->f:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/b/a/c/d/e/g$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->n()V

    iget-object v2, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    iput-object p1, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/e/g$b;

    invoke-interface {v0}, Lcom/b/a/c/d/e/g$b;->f()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->m()V

    goto :goto_0
.end method

.method a(Lcom/b/a/c/d/e/g$b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/c/d/e/g;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->k()V

    :cond_2
    return-void
.end method

.method a(Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/m;

    iput-object v0, p0, Lcom/b/a/c/d/e/g;->n:Lcom/b/a/c/m;

    invoke-static {p2}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->i:Lcom/b/a/i;

    new-instance v1, Lcom/b/a/g/e;

    invoke-direct {v1}, Lcom/b/a/g/e;-><init>()V

    invoke-virtual {v1, p1}, Lcom/b/a/g/e;->a(Lcom/b/a/c/m;)Lcom/b/a/g/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/d/e/g;->i:Lcom/b/a/i;

    return-void
.end method

.method b()I
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method b(Lcom/b/a/c/d/e/g$b;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->l()V

    :cond_0
    return-void
.end method

.method c()I
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    iget v0, v0, Lcom/b/a/c/d/e/g$a;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method g()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->d()I

    move-result v0

    return v0
.end method

.method h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->n()V

    invoke-direct {p0}, Lcom/b/a/c/d/e/g;->l()V

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->a:Lcom/b/a/j;

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    iput-object v2, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->l:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->a:Lcom/b/a/j;

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->l:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    iput-object v2, p0, Lcom/b/a/c/d/e/g;->l:Lcom/b/a/c/d/e/g$a;

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->a:Lcom/b/a/j;

    iget-object v1, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    iput-object v2, p0, Lcom/b/a/c/d/e/g;->o:Lcom/b/a/c/d/e/g$a;

    :cond_2
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->b:Lcom/b/a/b/a;

    invoke-interface {v0}, Lcom/b/a/b/a;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/g;->k:Z

    return-void
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/e/g;->j:Lcom/b/a/c/d/e/g$a;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/e/g;->m:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
