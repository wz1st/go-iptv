.class public Lcom/i/d;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# static fields
.field private static final I:[I


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/i/e;

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:Landroid/widget/TextView;

.field private J:I

.field private K:I

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Ljava/lang/String;

.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcom/i/c$a;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:I

.field private g:Lcom/i/c$b;

.field private h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/i/b;

.field private o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private p:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private q:I

.field private r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/content/Context;

.field private y:Lcom/i/h;

.field private z:Lcom/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/i/d;->I:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/i/d;->e:I

    iput v1, p0, Lcom/i/d;->f:I

    iput-object v4, p0, Lcom/i/d;->g:Lcom/i/c$b;

    iput-object v4, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v0, p0, Lcom/i/d;->u:Z

    iput-boolean v0, p0, Lcom/i/d;->v:Z

    iput-boolean v0, p0, Lcom/i/d;->w:Z

    iput-wide v2, p0, Lcom/i/d;->D:J

    iput-wide v2, p0, Lcom/i/d;->E:J

    iput-wide v2, p0, Lcom/i/d;->F:J

    iput-wide v2, p0, Lcom/i/d;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->b:I

    new-instance v0, Lcom/i/d$1;

    invoke-direct {v0, p0}, Lcom/i/d$1;-><init>(Lcom/i/d;)V

    iput-object v0, p0, Lcom/i/d;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/d;->J:I

    sget-object v0, Lcom/i/d;->I:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/d;->K:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    iput v1, p0, Lcom/i/d;->M:I

    iput v1, p0, Lcom/i/d;->N:I

    iput v1, p0, Lcom/i/d;->O:I

    iput-boolean v1, p0, Lcom/i/d;->P:Z

    invoke-direct {p0, p1}, Lcom/i/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/i/d;->e:I

    iput v1, p0, Lcom/i/d;->f:I

    iput-object v4, p0, Lcom/i/d;->g:Lcom/i/c$b;

    iput-object v4, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v0, p0, Lcom/i/d;->u:Z

    iput-boolean v0, p0, Lcom/i/d;->v:Z

    iput-boolean v0, p0, Lcom/i/d;->w:Z

    iput-wide v2, p0, Lcom/i/d;->D:J

    iput-wide v2, p0, Lcom/i/d;->E:J

    iput-wide v2, p0, Lcom/i/d;->F:J

    iput-wide v2, p0, Lcom/i/d;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->b:I

    new-instance v0, Lcom/i/d$1;

    invoke-direct {v0, p0}, Lcom/i/d$1;-><init>(Lcom/i/d;)V

    iput-object v0, p0, Lcom/i/d;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/d;->J:I

    sget-object v0, Lcom/i/d;->I:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/d;->K:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    iput v1, p0, Lcom/i/d;->M:I

    iput v1, p0, Lcom/i/d;->N:I

    iput v1, p0, Lcom/i/d;->O:I

    iput-boolean v1, p0, Lcom/i/d;->P:Z

    invoke-direct {p0, p1}, Lcom/i/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/i/d;->e:I

    iput v1, p0, Lcom/i/d;->f:I

    iput-object v4, p0, Lcom/i/d;->g:Lcom/i/c$b;

    iput-object v4, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v0, p0, Lcom/i/d;->u:Z

    iput-boolean v0, p0, Lcom/i/d;->v:Z

    iput-boolean v0, p0, Lcom/i/d;->w:Z

    iput-wide v2, p0, Lcom/i/d;->D:J

    iput-wide v2, p0, Lcom/i/d;->E:J

    iput-wide v2, p0, Lcom/i/d;->F:J

    iput-wide v2, p0, Lcom/i/d;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->b:I

    new-instance v0, Lcom/i/d$1;

    invoke-direct {v0, p0}, Lcom/i/d$1;-><init>(Lcom/i/d;)V

    iput-object v0, p0, Lcom/i/d;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/d;->J:I

    sget-object v0, Lcom/i/d;->I:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/d;->K:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    iput v1, p0, Lcom/i/d;->M:I

    iput v1, p0, Lcom/i/d;->N:I

    iput v1, p0, Lcom/i/d;->O:I

    iput-boolean v1, p0, Lcom/i/d;->P:Z

    invoke-direct {p0, p1}, Lcom/i/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/i/d;->e:I

    iput v1, p0, Lcom/i/d;->f:I

    iput-object v4, p0, Lcom/i/d;->g:Lcom/i/c$b;

    iput-object v4, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v0, p0, Lcom/i/d;->u:Z

    iput-boolean v0, p0, Lcom/i/d;->v:Z

    iput-boolean v0, p0, Lcom/i/d;->w:Z

    iput-wide v2, p0, Lcom/i/d;->D:J

    iput-wide v2, p0, Lcom/i/d;->E:J

    iput-wide v2, p0, Lcom/i/d;->F:J

    iput-wide v2, p0, Lcom/i/d;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->b:I

    new-instance v0, Lcom/i/d$1;

    invoke-direct {v0, p0}, Lcom/i/d$1;-><init>(Lcom/i/d;)V

    iput-object v0, p0, Lcom/i/d;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/d;->J:I

    sget-object v0, Lcom/i/d;->I:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/d;->K:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    iput v1, p0, Lcom/i/d;->M:I

    iput v1, p0, Lcom/i/d;->N:I

    iput v1, p0, Lcom/i/d;->O:I

    iput-boolean v1, p0, Lcom/i/d;->P:Z

    invoke-direct {p0, p1}, Lcom/i/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/i/d;I)I
    .locals 0

    iput p1, p0, Lcom/i/d;->k:I

    return p1
.end method

.method static synthetic a(Lcom/i/d;Lcom/i/c$b;)Lcom/i/c$b;
    .locals 0

    iput-object p1, p0, Lcom/i/d;->g:Lcom/i/c$b;

    return-object p1
.end method

.method static synthetic a(Lcom/i/d;)Lcom/i/c;
    .locals 1

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/i/d;->x:Landroid/content/Context;

    new-instance v0, Lcom/i/h;

    iget-object v1, p0, Lcom/i/d;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/i/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-direct {p0}, Lcom/i/d;->h()V

    invoke-direct {p0}, Lcom/i/d;->g()V

    iput v2, p0, Lcom/i/d;->i:I

    iput v2, p0, Lcom/i/d;->j:I

    invoke-virtual {p0, v3}, Lcom/i/d;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/i/d;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/i/d;->requestFocus()Z

    iput v2, p0, Lcom/i/d;->e:I

    iput v2, p0, Lcom/i/d;->f:I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/i/d;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/i/d;->H:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/i/d;->H:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/i/d;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/i/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/i/d;->d:Landroid/net/Uri;

    iput-object p2, p0, Lcom/i/d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/d;->t:I

    invoke-direct {p0}, Lcom/i/d;->c()V

    invoke-virtual {p0}, Lcom/i/d;->requestLayout()V

    invoke-virtual {p0}, Lcom/i/d;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/i/d;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/i/d;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

    return-void
.end method

.method private a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Lcom/i/c$b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 5

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "mediacodec"

    int-to-long v2, v0

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-auto-rotate"

    int-to-long v2, v0

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-handle-resolution-change"

    int-to-long v2, v0

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/i/d;)I
    .locals 1

    iget v0, p0, Lcom/i/d;->f:I

    return v0
.end method

.method static synthetic b(Lcom/i/d;I)I
    .locals 0

    iput p1, p0, Lcom/i/d;->l:I

    return p1
.end method

.method static synthetic c(Lcom/i/d;)I
    .locals 1

    iget v0, p0, Lcom/i/d;->i:I

    return v0
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/i/d;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->g:Lcom/i/c$b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/i/d;->a(Z)V

    iget-object v0, p0, Lcom/i/d;->x:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :try_start_0
    iget-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/i/d;->a(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/d;->q:I

    iget-object v0, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v1}, Lcom/i/h;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Lcom/i/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/i/a;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    :goto_1
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/d;->g:Lcom/i/c$b;

    invoke-direct {p0, v0, v1}, Lcom/i/d;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/d;->D:J

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/i/e;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/i/d;->e:I

    invoke-direct {p0}, Lcom/i/d;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/i/d;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/d;->x:Landroid/content/Context;

    iget-object v2, p0, Lcom/i/d;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/i/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/i/d;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/i/d;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/i/d;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/i/d;)I
    .locals 1

    iget v0, p0, Lcom/i/d;->j:I

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0, p0}, Lcom/i/b;->a(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/i/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/i/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v1, v0}, Lcom/i/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/i/b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic e(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/i/d;)I
    .locals 1

    iget v0, p0, Lcom/i/d;->t:I

    return v0
.end method

.method private f()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/i/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/i/d;->e:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/i/d;->e:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/i/d;->L:Ljava/util/List;

    iget v1, p0, Lcom/i/d;->M:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/i/d;->N:I

    iget v0, p0, Lcom/i/d;->N:I

    invoke-virtual {p0, v0, v2}, Lcom/i/d;->a(II)V

    return-void
.end method

.method static synthetic g(Lcom/i/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/i/d;->c()V

    return-void
.end method

.method static synthetic h(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/i/d;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/d;->P:Z

    iget-boolean v0, p0, Lcom/i/d;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/i/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/i/g;->a()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/i/e;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const-wide/16 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/i/d;->d:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/i/d;->Q:Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "overlay-format"

    const-wide/32 v2, 0x32335652

    invoke-virtual {v0, v9, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    sget v1, Lcom/eztv/powerful/PlayerActivity;->e:I

    packed-switch v1, :pswitch_data_1

    :cond_0
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/i/d;->y:Lcom/i/h;

    invoke-virtual {v1}, Lcom/i/h;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v1, v0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    move-object v0, v1

    :cond_1
    return-object v0

    :pswitch_2
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AndroidMediaPlayer is Running."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/i/d;->Q:Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "mediacodec"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    const-string v1, "probsize"

    const-string v2, "4096"

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "analyzemaxduration"

    const-wide/32 v2, 0x1e8480

    invoke-virtual {v0, v8, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "packet-buffering"

    invoke-virtual {v0, v9, v1, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "flush_packets"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "infbuf"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v1, 0x2

    const-string v2, "skip_loop_filter"

    const-wide/16 v4, 0x30

    invoke-virtual {v0, v1, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "framedrop"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "http-detect-range-support"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "delay-optimization"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "cache-buffer-duration"

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v8, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "live-streaming"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "reconnect"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "rtsp_transport"

    const-string v2, "tcp"

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "analyzeduration"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "fflags"

    const-string v2, "fastseek"

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "http-detect-range-support"

    invoke-virtual {v0, v8, v1, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-auto-rotate"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec_all_videos"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-avc"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-hevc"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-mpeg2"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-mpeg4"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "soundtouch"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/i/d;->a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, v0, v8}, Lcom/i/d;->a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    iput-object v2, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    invoke-virtual {v0, v2}, Lcom/i/e;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    iput v1, p0, Lcom/i/d;->e:I

    iput v1, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->x:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "invalid render %d\n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/i/d;->setRenderView(Lcom/i/c;)V

    iput v3, p0, Lcom/i/d;->O:I

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/i/k;

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/i/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    iget v1, p0, Lcom/i/d;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/i/k;->setScaleX(F)V

    iget v1, p0, Lcom/i/d;->b:I

    neg-int v1, v1

    iput v1, p0, Lcom/i/d;->b:I

    :goto_1
    invoke-virtual {v0}, Lcom/i/k;->getSurfaceHolder()Lcom/i/c$b;

    move-result-object v1

    iget-object v2, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/i/c$b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/i/k;->a(II)V

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/i/k;->b(II)V

    iget v1, p0, Lcom/i/d;->K:I

    invoke-virtual {v0, v1}, Lcom/i/k;->setAspectRatio(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/i/d;->setRenderView(Lcom/i/c;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/i/d;->O:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/i/d;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/i/k;->setScaleY(F)V

    iget v1, p0, Lcom/i/d;->b:I

    neg-int v1, v1

    iput v1, p0, Lcom/i/d;->b:I

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/i/i;

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/i/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/i/d;->setRenderView(Lcom/i/c;)V

    iput v2, p0, Lcom/i/d;->O:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    iput-object v2, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput v1, p0, Lcom/i/d;->e:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/i/d;->f:I

    :cond_0
    iget-object v0, p0, Lcom/i/d;->x:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/d;->u:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/d;->v:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/d;->w:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "getBufferPercentage:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/i/d;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/i/d;->q:I

    :cond_0
    return v0
.end method

.method public getCurRender()I
    .locals 1

    iget v0, p0, Lcom/i/d;->O:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRenderView()Lcom/i/c;
    .locals 1

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/i/d;->j:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 4

    const-string v0, "onBufferingUpdate percent:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/i/d;->q:I

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    const/4 v2, 0x5

    const-string v0, "onCompletion"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/i/d;->e:I

    iput v2, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/i/d;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_1
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/i/d;->e:I

    iput v2, p0, Lcom/i/d;->f:I

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/i/d;->r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/i/d;->r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/i/d;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    const v0, 0x7f0f000e

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f000d

    new-instance v2, Lcom/i/d$2;

    invoke-direct {v2, p0}, Lcom/i/d$2;-><init>(Lcom/i/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    const v0, 0x7f0f000f

    goto :goto_1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/i/d;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    sparse-switch p2, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    iput p3, p0, Lcom/i/d;->m:I

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    invoke-interface {v0, p3}, Lcom/i/c;->setVideoRotation(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_0
        0x2be -> :sswitch_0
        0x2bf -> :sswitch_0
        0x320 -> :sswitch_0
        0x321 -> :sswitch_0
        0x322 -> :sswitch_0
        0x385 -> :sswitch_0
        0x386 -> :sswitch_0
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/i/d;->pause()V

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/i/d;->start()V

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/i/d;->start()V

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    goto :goto_1

    :cond_5
    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/i/d;->pause()V

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/i/d;->e()V

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    const-string v0, "onPrepared"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/d;->E:J

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    iget-wide v2, p0, Lcom/i/d;->E:J

    iget-wide v4, p0, Lcom/i/d;->D:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/i/e;->a(J)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/i/d;->e:I

    iget-object v0, p0, Lcom/i/d;->p:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->p:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/i/b;->a(Z)V

    :cond_1
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/i/d;->i:I

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/i/d;->j:I

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    const-string v0, "onSeekComplete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/d;->G:J

    iget-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    iget-wide v2, p0, Lcom/i/d;->G:J

    iget-wide v4, p0, Lcom/i/d;->F:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/i/e;->b(J)V

    return-void
.end method

.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IjkTimedText;)V
    .locals 2

    const-string v0, "onTimedText"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/i/d;->H:Landroid/widget/TextView;

    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/IjkTimedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/i/d;->e()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/i/d;->e()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3

    const-string v0, "onVideoSizeChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/i/d;->i:I

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/i/d;->j:I

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    iput v0, p0, Lcom/i/d;->A:I

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v0

    iput v0, p0, Lcom/i/d;->B:I

    iget v0, p0, Lcom/i/d;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/i/d;->j:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    iget v1, p0, Lcom/i/d;->i:I

    iget v2, p0, Lcom/i/d;->j:I

    invoke-interface {v0, v1, v2}, Lcom/i/c;->a(II)V

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    iget v1, p0, Lcom/i/d;->A:I

    iget v2, p0, Lcom/i/d;->B:I

    invoke-interface {v0, v1, v2}, Lcom/i/c;->b(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/i/d;->requestLayout()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    iput v1, p0, Lcom/i/d;->e:I

    :cond_0
    iput v1, p0, Lcom/i/d;->f:I

    return-void
.end method

.method public seekTo(I)V
    .locals 4

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/d;->F:J

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->aq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pltv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/i/d;->t:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/d;->t:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/i/d;->t:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/i/d;->t:I

    goto :goto_0
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2

    new-instance v0, Lcom/i/e;

    invoke-virtual {p0}, Lcom/i/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/i/e;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/i/d;->C:Lcom/i/e;

    return-void
.end method

.method public setMediaController(Lcom/i/b;)V
    .locals 1

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :cond_0
    iput-object p1, p0, Lcom/i/d;->n:Lcom/i/b;

    invoke-direct {p0}, Lcom/i/d;->d()V

    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d;->r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d;->p:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setRenderView(Lcom/i/c;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    invoke-interface {v0}, Lcom/i/c;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/i/d;->z:Lcom/i/c;

    iget-object v2, p0, Lcom/i/d;->c:Lcom/i/c$a;

    invoke-interface {v1, v2}, Lcom/i/c;->b(Lcom/i/c$a;)V

    iput-object v4, p0, Lcom/i/d;->z:Lcom/i/c;

    invoke-virtual {p0, v0}, Lcom/i/d;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/i/d;->z:Lcom/i/c;

    iget v0, p0, Lcom/i/d;->K:I

    invoke-interface {p1, v0}, Lcom/i/c;->setAspectRatio(I)V

    iget v0, p0, Lcom/i/d;->i:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/i/d;->j:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/i/d;->i:I

    iget v1, p0, Lcom/i/d;->j:I

    invoke-interface {p1, v0, v1}, Lcom/i/c;->a(II)V

    :cond_3
    iget v0, p0, Lcom/i/d;->A:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/i/d;->B:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/i/d;->A:I

    iget v1, p0, Lcom/i/d;->B:I

    invoke-interface {p1, v0, v1}, Lcom/i/c;->b(II)V

    :cond_4
    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    invoke-interface {v0}, Lcom/i/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/i/d;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    iget-object v1, p0, Lcom/i/d;->c:Lcom/i/c$a;

    invoke-interface {v0, v1}, Lcom/i/c;->a(Lcom/i/c$a;)V

    iget-object v0, p0, Lcom/i/d;->z:Lcom/i/c;

    iget v1, p0, Lcom/i/d;->m:I

    invoke-interface {v0, v1}, Lcom/i/c;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setScreenReverse(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/i/d;->a(II)V

    return-void
.end method

.method public setScreenScale(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/i/d;->z:Lcom/i/c;

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/i/d;->z:Lcom/i/c;

    invoke-interface {v1, v0}, Lcom/i/c;->setAspectRatio(I)V

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSpeed(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d;->Q:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/i/d;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/i/d;->a:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/i/d;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/i/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    iput v1, p0, Lcom/i/d;->e:I

    :cond_0
    iput v1, p0, Lcom/i/d;->f:I

    return-void
.end method
