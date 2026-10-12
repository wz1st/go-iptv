.class Lcom/view/IJKVideoView$9;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/IJKVideoView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/view/IJKVideoView;


# direct methods
.method constructor <init>(Lcom/view/IJKVideoView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    iget-boolean v0, v0, Lcom/view/IJKVideoView;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v1}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v1}, Lcom/view/IJKVideoView;->getBufferPercentage()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v2}, Lcom/view/IJKVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-static {v0}, Lcom/view/IJKVideoView;->f(Lcom/view/IJKVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    iget-object v2, p0, Lcom/view/IJKVideoView$9;->a:Lcom/view/IJKVideoView;

    invoke-virtual {v2}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/view/IJKVideoView;->a(Lcom/view/IJKVideoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
