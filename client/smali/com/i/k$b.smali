.class final Lcom/i/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/i/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
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
.method public constructor <init>(Lcom/i/k;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/i/k$b;->e:Z

    iput-boolean v1, p0, Lcom/i/k$b;->f:Z

    iput-boolean v1, p0, Lcom/i/k$b;->g:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/i/k$b;)Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/i/k$b;->f:Z

    return-void
.end method

.method public a(Lcom/i/c$a;)V
    .locals 4

    iget-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Lcom/i/k$a;

    iget-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/k;

    iget-object v2, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0, v2, p0}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Lcom/i/k$b;->c:I

    iget v2, p0, Lcom/i/k$b;->d:I

    invoke-interface {p1, v0, v1, v2}, Lcom/i/c$a;->a(Lcom/i/c$b;II)V

    :cond_1
    iget-boolean v1, p0, Lcom/i/k$b;->b:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v1, Lcom/i/k$a;

    iget-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/k;

    iget-object v2, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0, v2, p0}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/i/k$b;->c:I

    iget v3, p0, Lcom/i/k$b;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/i/c$a;->a(Lcom/i/c$b;III)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/i/k$b;->e:Z

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/i/k$b;->g:Z

    return-void
.end method

.method public b(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    iput-boolean v3, p0, Lcom/i/k$b;->b:Z

    iput v3, p0, Lcom/i/k$b;->c:I

    iput v3, p0, Lcom/i/k$b;->d:I

    new-instance v1, Lcom/i/k$a;

    iget-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/k;

    invoke-direct {v1, v0, p1, p0}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    iget-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

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

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    iput-boolean v0, p0, Lcom/i/k$b;->b:Z

    iput v0, p0, Lcom/i/k$b;->c:I

    iput v0, p0, Lcom/i/k$b;->d:I

    new-instance v1, Lcom/i/k$a;

    iget-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/k;

    invoke-direct {v1, v0, p1, p0}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    iget-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

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
    const-string v0, "TextureRenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/i/k$b;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/i/k$b;->e:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    iput-object p1, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/i/k$b;->b:Z

    iput p2, p0, Lcom/i/k$b;->c:I

    iput p3, p0, Lcom/i/k$b;->d:I

    new-instance v1, Lcom/i/k$a;

    iget-object v0, p0, Lcom/i/k$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/k;

    invoke-direct {v1, v0, p1, p0}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    iget-object v0, p0, Lcom/i/k$b;->i:Ljava/util/Map;

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

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/i/c$a;->a(Lcom/i/c$b;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/i/k$b;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/i/k$b;->e:Z

    if-nez v0, :cond_2

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/i/k$b;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/i/k$b;->e:Z

    if-nez v0, :cond_5

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/i/k$b;->a(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/i/k$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/i/k$b;->e:Z

    if-nez v0, :cond_8

    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/i/k$b;->a(Z)V

    goto :goto_0

    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
