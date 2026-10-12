.class Lcom/i/l$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/i/l;


# direct methods
.method constructor <init>(Lcom/i/l;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/i/c$b;)V
    .locals 2

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/i/l;->a(Lcom/i/l;Lcom/i/c$b;)Lcom/i/c$b;

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-virtual {v0}, Lcom/i/l;->a()V

    goto :goto_0
.end method

.method public a(Lcom/i/c$b;II)V
    .locals 2

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0, p1}, Lcom/i/l;->a(Lcom/i/l;Lcom/i/c$b;)Lcom/i/c$b;

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    iget-object v1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/i/l;->a(Lcom/i/l;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->v(Lcom/i/l;)V

    goto :goto_0
.end method

.method public a(Lcom/i/c$b;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/i/c$b;->a()Lcom/i/c;

    move-result-object v0

    iget-object v3, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v3}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0, p3}, Lcom/i/l;->i(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0, p4}, Lcom/i/l;->j(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->t(Lcom/i/l;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v3}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/i/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v3}, Lcom/i/l;->a(Lcom/i/l;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v3}, Lcom/i/l;->b(Lcom/i/l;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iget-object v1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->u(Lcom/i/l;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    iget-object v1, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->u(Lcom/i/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/i/l;->seekTo(I)V

    :cond_4
    iget-object v0, p0, Lcom/i/l$9;->a:Lcom/i/l;

    invoke-virtual {v0}, Lcom/i/l;->start()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
