.class public Lcom/view/IJKVideoView;
.super Lcom/i/d;


# static fields
.field static g:F


# instance fields
.field d:J

.field e:Z

.field f:Ljava/text/SimpleDateFormat;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/os/CountDownTimer;

.field private k:Landroid/widget/PopupWindow;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I

.field private p:F

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/view/IJKVideoView;->g:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/i/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/view/IJKVideoView;->e:Z

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/view/IJKVideoView;->p:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/view/IJKVideoView;->q:Landroid/os/Handler;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/i/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/view/IJKVideoView;->e:Z

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/view/IJKVideoView;->p:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/view/IJKVideoView;->q:Landroid/os/Handler;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/i/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/view/IJKVideoView;->e:Z

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/view/IJKVideoView;->p:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/view/IJKVideoView;->q:Landroid/os/Handler;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/view/IJKVideoView;F)F
    .locals 0

    iput p1, p0, Lcom/view/IJKVideoView;->p:F

    return p1
.end method

.method static synthetic a(Lcom/view/IJKVideoView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/view/IJKVideoView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/view/IJKVideoView;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/view/IJKVideoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x9

    const-string v0, ""

    div-int/lit16 v0, p1, 0x3e8

    div-int/lit16 v1, v0, 0xe10

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    if-lez v1, :cond_3

    if-le v2, v3, :cond_1

    if-le v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-le v2, v3, :cond_5

    if-le v0, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-le v0, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/view/IJKVideoView;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->j:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic d(Lcom/view/IJKVideoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/view/IJKVideoView;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic f(Lcom/view/IJKVideoView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/view/IJKVideoView;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->aE:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a01f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/view/IJKVideoView;->h:Landroid/widget/TextView;

    const v0, 0x7f0a01f2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ff

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/view/IJKVideoView;->l:Landroid/view/View;

    const v1, 0x7f0a00fe

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    const v1, 0x7f0a0127

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/view/IJKVideoView;->n:Landroid/view/View;

    const v1, 0x7f0a0178

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getDuration()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getBufferPercentage()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getDuration()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v1, p0, Lcom/view/IJKVideoView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/view/IJKVideoView;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->getDuration()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/view/IJKVideoView;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/view/IJKVideoView;->o:I

    div-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/view/IJKVideoView;->o:I

    div-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/eztv/powerful/PlayerActivity;->a()Lcom/warkiz/widget/IndicatorSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->requestFocus()Z

    const v0, 0x7f0a0209

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/view/IJKVideoView$1;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$1;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->n:Landroid/view/View;

    new-instance v1, Lcom/view/IJKVideoView$2;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$2;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    new-instance v1, Lcom/view/IJKVideoView$3;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$3;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->l:Landroid/view/View;

    new-instance v1, Lcom/view/IJKVideoView$4;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$4;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    new-instance v1, Lcom/view/IJKVideoView$5;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$5;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    new-instance v1, Lcom/view/IJKVideoView$6;

    invoke-direct {v1, p0}, Lcom/view/IJKVideoView$6;-><init>(Lcom/view/IJKVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->l:Landroid/view/View;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    const v3, 0x7f08009e

    invoke-static {v1, v3}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v2, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    new-instance v0, Lcom/view/IJKVideoView$7;

    invoke-direct {v0, p0, p0}, Lcom/view/IJKVideoView$7;-><init>(Lcom/view/IJKVideoView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/view/IJKVideoView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/view/IJKVideoView;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/view/IJKVideoView;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->l:Landroid/view/View;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    const v3, 0x7f08009f

    invoke-static {v1, v3}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/view/IJKVideoView;->e:Z

    sget v0, Lcom/view/IJKVideoView;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sput v0, Lcom/view/IJKVideoView;->g:F

    sget v0, Lcom/view/IJKVideoView;->g:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, 0x3ba3d70a    # 0.005f

    iput v0, p0, Lcom/view/IJKVideoView;->p:F

    :cond_0
    invoke-virtual {p0}, Lcom/view/IJKVideoView;->c()V

    iget v0, p0, Lcom/view/IJKVideoView;->p:F

    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p1, :cond_1

    neg-int v0, v0

    :cond_1
    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/view/IJKVideoView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/view/IJKVideoView;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/view/IJKVideoView;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/view/IJKVideoView;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/view/IJKVideoView;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/view/IJKVideoView;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/view/IJKVideoView;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    new-instance v0, Lcom/view/IJKVideoView$8;

    invoke-direct {v0, p0}, Lcom/view/IJKVideoView$8;-><init>(Lcom/view/IJKVideoView;)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->r:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/view/IJKVideoView;->j:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/view/IJKVideoView$9;

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/view/IJKVideoView$9;-><init>(Lcom/view/IJKVideoView;JJ)V

    iput-object v0, p0, Lcom/view/IJKVideoView;->j:Landroid/os/CountDownTimer;

    :goto_0
    iget-object v0, p0, Lcom/view/IJKVideoView;->j:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/view/IJKVideoView;->j:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-static {}, Lcom/eztv/powerful/a/a/a;->b()V

    invoke-super {p0}, Lcom/i/d;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/view/IJKVideoView;->o:I

    return-void
.end method
