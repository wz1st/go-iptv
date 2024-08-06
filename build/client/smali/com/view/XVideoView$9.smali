.class Lcom/view/XVideoView$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/XVideoView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/view/XVideoView;


# direct methods
.method constructor <init>(Lcom/view/XVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/view/XVideoView;->b:Z

    const/4 v0, 0x0

    sput v0, Lcom/view/XVideoView;->c:F

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->c(Lcom/view/XVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->c(Lcom/view/XVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->c(Lcom/view/XVideoView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    iget-object v1, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v1}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/XVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v1}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v0}, Lcom/view/XVideoView;->f(Lcom/view/XVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    iget-object v2, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v2}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/view/XVideoView;->a(Lcom/view/XVideoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    iget-object v1, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    invoke-static {v1}, Lcom/view/XVideoView;->e(Lcom/view/XVideoView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/view/XVideoView;->a:J

    iget-object v0, p0, Lcom/view/XVideoView$9;->a:Lcom/view/XVideoView;

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v0, v1}, Lcom/view/XVideoView;->a(Lcom/view/XVideoView;F)F

    return-void
.end method
