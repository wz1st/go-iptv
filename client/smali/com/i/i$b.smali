.class final Lcom/i/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/i/c$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/i/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/i/c$a;)V
    .locals 4

    iget-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Lcom/i/i$a;

    iget-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/i;

    iget-object v2, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/i/i$a;-><init>(Lcom/i/i;Landroid/view/SurfaceHolder;)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Lcom/i/i$b;->d:I

    iget v2, p0, Lcom/i/i$b;->e:I

    invoke-interface {p1, v0, v1, v2}, Lcom/i/c$a;->a(Lcom/i/c$b;II)V

    :cond_1
    iget-boolean v1, p0, Lcom/i/i$b;->b:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v1, Lcom/i/i$a;

    iget-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/i;

    iget-object v2, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/i/i$a;-><init>(Lcom/i/i;Landroid/view/SurfaceHolder;)V

    move-object v0, v1

    :cond_2
    iget v1, p0, Lcom/i/i$b;->c:I

    iget v2, p0, Lcom/i/i$b;->d:I

    iget v3, p0, Lcom/i/i$b;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/i/c$a;->a(Lcom/i/c$b;III)V

    :cond_3
    return-void
.end method

.method public b(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iput-object p1, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/i/i$b;->b:Z

    iput p2, p0, Lcom/i/i$b;->c:I

    iput p3, p0, Lcom/i/i$b;->d:I

    iput p4, p0, Lcom/i/i$b;->e:I

    new-instance v1, Lcom/i/i$a;

    iget-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/i;

    iget-object v2, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/i/i$a;-><init>(Lcom/i/i;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/c$a;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/i/c$a;->a(Lcom/i/c$b;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    iput-boolean v3, p0, Lcom/i/i$b;->b:Z

    iput v3, p0, Lcom/i/i$b;->c:I

    iput v3, p0, Lcom/i/i$b;->d:I

    iput v3, p0, Lcom/i/i$b;->e:I

    new-instance v1, Lcom/i/i$a;

    iget-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/i;

    iget-object v2, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/i/i$a;-><init>(Lcom/i/i;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/c$a;

    invoke-interface {v0, v1, v3, v3}, Lcom/i/c$a;->a(Lcom/i/c$b;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    iput-boolean v1, p0, Lcom/i/i$b;->b:Z

    iput v1, p0, Lcom/i/i$b;->c:I

    iput v1, p0, Lcom/i/i$b;->d:I

    iput v1, p0, Lcom/i/i$b;->e:I

    new-instance v1, Lcom/i/i$a;

    iget-object v0, p0, Lcom/i/i$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/i;

    iget-object v2, p0, Lcom/i/i$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/i/i$a;-><init>(Lcom/i/i;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/i/i$b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/c$a;

    invoke-interface {v0, v1}, Lcom/i/c$a;->a(Lcom/i/c$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
