.class public Lcom/b/a/e;
.super Landroid/content/ContextWrapper;


# static fields
.field static final a:Lcom/b/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/k",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/b/a/c/b/a/b;

.field private final d:Lcom/b/a/h;

.field private final e:Lcom/b/a/g/a/e;

.field private final f:Lcom/b/a/g/e;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/k",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/b/a/c/b/j;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    sput-object v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b/a/c/b/a/b;Lcom/b/a/h;Lcom/b/a/g/a/e;Lcom/b/a/g/e;Ljava/util/Map;Lcom/b/a/c/b/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/c/b/a/b;",
            "Lcom/b/a/h;",
            "Lcom/b/a/g/a/e;",
            "Lcom/b/a/g/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/k",
            "<**>;>;",
            "Lcom/b/a/c/b/j;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/b/a/e;->c:Lcom/b/a/c/b/a/b;

    iput-object p3, p0, Lcom/b/a/e;->d:Lcom/b/a/h;

    iput-object p4, p0, Lcom/b/a/e;->e:Lcom/b/a/g/a/e;

    iput-object p5, p0, Lcom/b/a/e;->f:Lcom/b/a/g/e;

    iput-object p6, p0, Lcom/b/a/e;->g:Ljava/util/Map;

    iput-object p7, p0, Lcom/b/a/e;->h:Lcom/b/a/c/b/j;

    iput p8, p0, Lcom/b/a/e;->i:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/b/a/e;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/g/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/b/a/g/a/i",
            "<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/e;->e:Lcom/b/a/g/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/g/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/g/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/b/a/g/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/e;->f:Lcom/b/a/g/e;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/b/a/k;
    .locals 4
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

    iget-object v0, p0, Lcom/b/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/k;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/b/a/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/k;

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public b()Lcom/b/a/c/b/j;
    .locals 1

    iget-object v0, p0, Lcom/b/a/e;->h:Lcom/b/a/c/b/j;

    return-object v0
.end method

.method public c()Lcom/b/a/h;
    .locals 1

    iget-object v0, p0, Lcom/b/a/e;->d:Lcom/b/a/h;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/b/a/e;->i:I

    return v0
.end method

.method public e()Lcom/b/a/c/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/b/a/e;->c:Lcom/b/a/c/b/a/b;

    return-object v0
.end method
