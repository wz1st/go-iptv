.class Lcom/i/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/i/d;


# direct methods
.method constructor <init>(Lcom/i/d;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/i/c$b;)V
    .locals 2

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->a(Lcom/i/d;)Lcom/i/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "onSurfaceDestroyed: unmatched render callback\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/i/d;->a(Lcom/i/d;Lcom/i/c$b;)Lcom/i/c$b;

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-virtual {v0}, Lcom/i/d;->b()V

    goto :goto_0
.end method

.method public a(Lcom/i/c$b;II)V
    .locals 2

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->a(Lcom/i/d;)Lcom/i/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "onSurfaceCreated: unmatched render callback\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0, p1}, Lcom/i/d;->a(Lcom/i/d;Lcom/i/c$b;)Lcom/i/c$b;

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->e(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    iget-object v1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->e(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/i/d;->a(Lcom/i/d;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->g(Lcom/i/d;)V

    goto :goto_0
.end method

.method public a(Lcom/i/c$b;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v3, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v3}, Lcom/i/d;->a(Lcom/i/d;)Lcom/i/c;

    move-result-object v3

    if-eq v0, v3, :cond_1

    const-string v0, "onSurfaceChanged: unmatched render callback\n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0, p3}, Lcom/i/d;->a(Lcom/i/d;I)I

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0, p4}, Lcom/i/d;->b(Lcom/i/d;I)I

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->b(Lcom/i/d;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v3}, Lcom/i/d;->a(Lcom/i/d;)Lcom/i/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/i/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v3}, Lcom/i/d;->c(Lcom/i/d;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v3}, Lcom/i/d;->d(Lcom/i/d;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iget-object v1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->e(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->f(Lcom/i/d;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    iget-object v1, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->f(Lcom/i/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/i/d;->seekTo(I)V

    :cond_4
    iget-object v0, p0, Lcom/i/d$1;->a:Lcom/i/d;

    invoke-virtual {v0}, Lcom/i/d;->start()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
