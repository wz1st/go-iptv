.class Lcom/view/XVideoView$8;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/XVideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/view/XVideoView;


# direct methods
.method constructor <init>(Lcom/view/XVideoView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->a(Lcom/view/XVideoView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->a(Lcom/view/XVideoView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    iget-boolean v0, v0, Lcom/view/XVideoView;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-virtual {v1}, Lcom/view/XVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-virtual {v1}, Lcom/view/XVideoView;->getBufferPercentage()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-virtual {v2}, Lcom/view/XVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->f(Lcom/view/XVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    iget-object v2, p0, Lcom/view/XVideoView$8;->a:Lcom/view/XVideoView;

    invoke-virtual {v2}, Lcom/view/XVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/view/XVideoView;->a(Lcom/view/XVideoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
