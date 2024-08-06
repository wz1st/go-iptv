.class Lcom/view/IJKVideoView$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/IJKVideoView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/view/IJKVideoView;


# direct methods
.method constructor <init>(Lcom/view/IJKVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/view/IJKVideoView;->e:Z

    const/4 v0, 0x0

    sput v0, Lcom/view/IJKVideoView;->g:F

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    iget-object v1, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v1}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/IJKVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v1}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->f(Lcom/view/IJKVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    iget-object v2, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v2}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    iget-object v1, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    invoke-static {v1}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/view/IJKVideoView;->d:J

    iget-object v0, p0, Lcom/view/IJKVideoView$8;->a:Lcom/view/IJKVideoView;

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v0, v1}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;F)F

    return-void
.end method
