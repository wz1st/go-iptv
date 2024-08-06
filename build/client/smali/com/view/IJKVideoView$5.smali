.class Lcom/view/IJKVideoView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/IJKVideoView;->a(Landroid/content/Context;Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v0, p2}, Lcom/view/IJKVideoView;->seekTo(I)V

    :cond_1
    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v1}, Lcom/view/IJKVideoView;->getBufferPercentage()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v2}, Lcom/view/IJKVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->f(Lcom/view/IJKVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    invoke-static {v1, p2}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    int-to-long v2, p2

    iput-wide v2, v0, Lcom/view/IJKVideoView;->d:J

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    iget-object v1, p0, Lcom/view/IJKVideoView$5;->a:Lcom/view/IJKVideoView;

    iget-wide v2, v1, Lcom/view/IJKVideoView;->d:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/view/IJKVideoView;->seekTo(I)V

    return-void
.end method
