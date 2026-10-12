.class public Lcom/i/l;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final Q:[I


# instance fields
.field private A:Lcom/i/h;

.field private B:Lcom/i/c;

.field private C:I

.field private D:I

.field private E:Lcom/i/e;

.field private F:J

.field private G:J

.field private H:J

.field private I:J

.field private J:Landroid/widget/TextView;

.field private K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private R:I

.field private S:I

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:I

.field private W:Z

.field a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private aa:Ljava/lang/String;

.field b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field c:Lcom/i/c$a;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/Map;
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

.field private g:I

.field private h:I

.field private i:Lcom/i/c$b;

.field private j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/i/b;

.field private q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private s:I

.field private t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private u:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/i/l;->Q:[I

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
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    iput v1, p0, Lcom/i/l;->g:I

    iput v1, p0, Lcom/i/l;->h:I

    iput-object v5, p0, Lcom/i/l;->i:Lcom/i/c$b;

    iput-object v5, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v4, p0, Lcom/i/l;->w:Z

    iput-boolean v4, p0, Lcom/i/l;->x:Z

    iput-boolean v4, p0, Lcom/i/l;->y:Z

    iput-wide v2, p0, Lcom/i/l;->F:J

    iput-wide v2, p0, Lcom/i/l;->G:J

    iput-wide v2, p0, Lcom/i/l;->H:J

    iput-wide v2, p0, Lcom/i/l;->I:J

    new-instance v0, Lcom/i/l$1;

    invoke-direct {v0, p0}, Lcom/i/l$1;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/i/l$2;

    invoke-direct {v0, p0}, Lcom/i/l$2;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/i/l$3;

    invoke-direct {v0, p0}, Lcom/i/l$3;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/i/l$4;

    invoke-direct {v0, p0}, Lcom/i/l$4;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/i/l$5;

    invoke-direct {v0, p0}, Lcom/i/l$5;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/i/l$6;

    invoke-direct {v0, p0}, Lcom/i/l$6;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/i/l$7;

    invoke-direct {v0, p0}, Lcom/i/l$7;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/i/l$8;

    invoke-direct {v0, p0}, Lcom/i/l$8;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    new-instance v0, Lcom/i/l$9;

    invoke-direct {v0, p0}, Lcom/i/l$9;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/l;->R:I

    sget-object v0, Lcom/i/l;->Q:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/l;->S:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/l;->T:Ljava/util/List;

    iput v1, p0, Lcom/i/l;->U:I

    iput v1, p0, Lcom/i/l;->V:I

    iput-boolean v1, p0, Lcom/i/l;->W:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    iput v1, p0, Lcom/i/l;->g:I

    iput v1, p0, Lcom/i/l;->h:I

    iput-object v5, p0, Lcom/i/l;->i:Lcom/i/c$b;

    iput-object v5, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v4, p0, Lcom/i/l;->w:Z

    iput-boolean v4, p0, Lcom/i/l;->x:Z

    iput-boolean v4, p0, Lcom/i/l;->y:Z

    iput-wide v2, p0, Lcom/i/l;->F:J

    iput-wide v2, p0, Lcom/i/l;->G:J

    iput-wide v2, p0, Lcom/i/l;->H:J

    iput-wide v2, p0, Lcom/i/l;->I:J

    new-instance v0, Lcom/i/l$1;

    invoke-direct {v0, p0}, Lcom/i/l$1;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/i/l$2;

    invoke-direct {v0, p0}, Lcom/i/l$2;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/i/l$3;

    invoke-direct {v0, p0}, Lcom/i/l$3;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/i/l$4;

    invoke-direct {v0, p0}, Lcom/i/l$4;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/i/l$5;

    invoke-direct {v0, p0}, Lcom/i/l$5;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/i/l$6;

    invoke-direct {v0, p0}, Lcom/i/l$6;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/i/l$7;

    invoke-direct {v0, p0}, Lcom/i/l$7;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/i/l$8;

    invoke-direct {v0, p0}, Lcom/i/l$8;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    new-instance v0, Lcom/i/l$9;

    invoke-direct {v0, p0}, Lcom/i/l$9;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/l;->R:I

    sget-object v0, Lcom/i/l;->Q:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/l;->S:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/l;->T:Ljava/util/List;

    iput v1, p0, Lcom/i/l;->U:I

    iput v1, p0, Lcom/i/l;->V:I

    iput-boolean v1, p0, Lcom/i/l;->W:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    iput v1, p0, Lcom/i/l;->g:I

    iput v1, p0, Lcom/i/l;->h:I

    iput-object v5, p0, Lcom/i/l;->i:Lcom/i/c$b;

    iput-object v5, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v4, p0, Lcom/i/l;->w:Z

    iput-boolean v4, p0, Lcom/i/l;->x:Z

    iput-boolean v4, p0, Lcom/i/l;->y:Z

    iput-wide v2, p0, Lcom/i/l;->F:J

    iput-wide v2, p0, Lcom/i/l;->G:J

    iput-wide v2, p0, Lcom/i/l;->H:J

    iput-wide v2, p0, Lcom/i/l;->I:J

    new-instance v0, Lcom/i/l$1;

    invoke-direct {v0, p0}, Lcom/i/l$1;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/i/l$2;

    invoke-direct {v0, p0}, Lcom/i/l$2;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/i/l$3;

    invoke-direct {v0, p0}, Lcom/i/l$3;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/i/l$4;

    invoke-direct {v0, p0}, Lcom/i/l$4;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/i/l$5;

    invoke-direct {v0, p0}, Lcom/i/l$5;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/i/l$6;

    invoke-direct {v0, p0}, Lcom/i/l$6;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/i/l$7;

    invoke-direct {v0, p0}, Lcom/i/l$7;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/i/l$8;

    invoke-direct {v0, p0}, Lcom/i/l$8;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    new-instance v0, Lcom/i/l$9;

    invoke-direct {v0, p0}, Lcom/i/l$9;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/l;->R:I

    sget-object v0, Lcom/i/l;->Q:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/l;->S:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/l;->T:Ljava/util/List;

    iput v1, p0, Lcom/i/l;->U:I

    iput v1, p0, Lcom/i/l;->V:I

    iput-boolean v1, p0, Lcom/i/l;->W:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    iput v1, p0, Lcom/i/l;->g:I

    iput v1, p0, Lcom/i/l;->h:I

    iput-object v5, p0, Lcom/i/l;->i:Lcom/i/c$b;

    iput-object v5, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-boolean v4, p0, Lcom/i/l;->w:Z

    iput-boolean v4, p0, Lcom/i/l;->x:Z

    iput-boolean v4, p0, Lcom/i/l;->y:Z

    iput-wide v2, p0, Lcom/i/l;->F:J

    iput-wide v2, p0, Lcom/i/l;->G:J

    iput-wide v2, p0, Lcom/i/l;->H:J

    iput-wide v2, p0, Lcom/i/l;->I:J

    new-instance v0, Lcom/i/l$1;

    invoke-direct {v0, p0}, Lcom/i/l$1;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/i/l$2;

    invoke-direct {v0, p0}, Lcom/i/l$2;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/i/l$3;

    invoke-direct {v0, p0}, Lcom/i/l$3;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/i/l$4;

    invoke-direct {v0, p0}, Lcom/i/l$4;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/i/l$5;

    invoke-direct {v0, p0}, Lcom/i/l$5;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/i/l$6;

    invoke-direct {v0, p0}, Lcom/i/l$6;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/i/l$7;

    invoke-direct {v0, p0}, Lcom/i/l$7;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/i/l$8;

    invoke-direct {v0, p0}, Lcom/i/l$8;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    new-instance v0, Lcom/i/l$9;

    invoke-direct {v0, p0}, Lcom/i/l$9;-><init>(Lcom/i/l;)V

    iput-object v0, p0, Lcom/i/l;->c:Lcom/i/c$a;

    iput v1, p0, Lcom/i/l;->R:I

    sget-object v0, Lcom/i/l;->Q:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/i/l;->S:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/i/l;->T:Ljava/util/List;

    iput v1, p0, Lcom/i/l;->U:I

    iput v1, p0, Lcom/i/l;->V:I

    iput-boolean v1, p0, Lcom/i/l;->W:Z

    return-void
.end method

.method static synthetic a(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->k:I

    return v0
.end method

.method static synthetic a(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->k:I

    return p1
.end method

.method static synthetic a(Lcom/i/l;J)J
    .locals 1

    iput-wide p1, p0, Lcom/i/l;->G:J

    return-wide p1
.end method

.method static synthetic a(Lcom/i/l;Lcom/i/c$b;)Lcom/i/c$b;
    .locals 0

    iput-object p1, p0, Lcom/i/l;->i:Lcom/i/c$b;

    return-object p1
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

    iput-object p1, p0, Lcom/i/l;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/i/l;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/l;->v:I

    invoke-direct {p0}, Lcom/i/l;->b()V

    invoke-virtual {p0}, Lcom/i/l;->requestLayout()V

    invoke-virtual {p0}, Lcom/i/l;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/i/l;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/i/l;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

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

.method static synthetic b(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->l:I

    return v0
.end method

.method static synthetic b(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->l:I

    return p1
.end method

.method static synthetic b(Lcom/i/l;J)J
    .locals 1

    iput-wide p1, p0, Lcom/i/l;->I:J

    return-wide p1
.end method

.method private b()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/i/l;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->i:Lcom/i/c$b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/i/l;->a(Z)V

    iget-object v0, p0, Lcom/i/l;->z:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :try_start_0
    iget-object v0, p0, Lcom/i/l;->A:Lcom/i/h;

    invoke-virtual {v0}, Lcom/i/h;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/i/l;->a(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {p0}, Lcom/i/l;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->b:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->a:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->K:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/l;->s:I

    iget-object v0, p0, Lcom/i/l;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/i/l;->A:Lcom/i/h;

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

    iget-object v2, p0, Lcom/i/l;->e:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/i/a;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    :goto_1
    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->i:Lcom/i/c$b;

    invoke-direct {p0, v0, v1}, Lcom/i/l;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/i/c$b;)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/l;->F:J

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/i/l;->E:Lcom/i/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/i/l;->E:Lcom/i/e;

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/i/e;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/i/l;->g:I

    invoke-direct {p0}, Lcom/i/l;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/i/l;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/i/l;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/l;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/l;->h:I

    iget-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
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

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/i/l;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/i/l;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/i/l;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/i/l;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/l;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/i/l;->h:I

    iget-object v0, p0, Lcom/i/l;->M:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/i/l;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->C:I

    return p1
.end method

.method static synthetic c(Lcom/i/l;)Lcom/i/c;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0, p0}, Lcom/i/b;->a(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/i/l;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/i/l;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v1, v0}, Lcom/i/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/i/b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic d(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->C:I

    return v0
.end method

.method static synthetic d(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->D:I

    return p1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->D:I

    return v0
.end method

.method static synthetic e(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->g:I

    return p1
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/i/l;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/i/l;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/i/l;->g:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->h:I

    return p1
.end method

.method static synthetic f(Lcom/i/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/l;->G:J

    return-wide v0
.end method

.method static synthetic g(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->o:I

    return p1
.end method

.method static synthetic g(Lcom/i/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/l;->F:J

    return-wide v0
.end method

.method static synthetic h(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->s:I

    return p1
.end method

.method static synthetic h(Lcom/i/l;)Lcom/i/e;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->E:Lcom/i/e;

    return-object v0
.end method

.method static synthetic i(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->m:I

    return p1
.end method

.method static synthetic i(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic j(Lcom/i/l;I)I
    .locals 0

    iput p1, p0, Lcom/i/l;->n:I

    return p1
.end method

.method static synthetic j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic k(Lcom/i/l;)Lcom/i/b;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    return-object v0
.end method

.method static synthetic l(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic m(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->u:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic n(Lcom/i/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic p(Lcom/i/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lcom/i/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/l;->I:J

    return-wide v0
.end method

.method static synthetic r(Lcom/i/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/l;->H:J

    return-wide v0
.end method

.method static synthetic s(Lcom/i/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->h:I

    return v0
.end method

.method static synthetic u(Lcom/i/l;)I
    .locals 1

    iget v0, p0, Lcom/i/l;->v:I

    return v0
.end method

.method static synthetic v(Lcom/i/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/i/l;->b()V

    return-void
.end method


# virtual methods
.method public a(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x4

    const-wide/16 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/i/l;->e:Landroid/net/Uri;

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "IjkMediaPlayer is Running."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const-string v1, "probsize"

    const-string v2, "4096"

    invoke-virtual {v0, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "analyzemaxduration"

    const-wide/32 v2, 0x1e8480

    invoke-virtual {v0, v9, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "packet-buffering"

    invoke-virtual {v0, v8, v1, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "flush_packets"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "infbuf"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v1, 0x2

    const-string v2, "skip_loop_filter"

    const-wide/16 v4, 0x30

    invoke-virtual {v0, v1, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "framedrop"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "overlay-format"

    const-wide/32 v2, 0x32335652

    invoke-virtual {v0, v8, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/i/l;->aa:Ljava/lang/String;

    invoke-virtual {v0, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "http-detect-range-support"

    invoke-virtual {v0, v9, v1, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "delay-optimization"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "cache-buffer-duration"

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v9, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "live-streaming"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "reconnect"

    invoke-virtual {v0, v9, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "rtsp_transport"

    const-string v2, "tcp"

    invoke-virtual {v0, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "http-detect-range-support"

    invoke-virtual {v0, v9, v1, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-auto-rotate"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec_all_videos"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-avc"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-hevc"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-mpeg2"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "mediacodec-mpeg4"

    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_0
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/i/l;->A:Lcom/i/h;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    iput-object v2, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput v1, p0, Lcom/i/l;->g:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/i/l;->h:I

    :cond_0
    iget-object v0, p0, Lcom/i/l;->z:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/l;->w:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/l;->x:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/i/l;->y:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/i/l;->s:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

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

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/i/l;->l:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

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
    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/i/l;->pause()V

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/i/l;->start()V

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/i/l;->start()V

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    goto :goto_1

    :cond_5
    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/i/l;->pause()V

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->c()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/i/l;->d()V

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/i/l;->d()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/i/l;->d()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    iput v1, p0, Lcom/i/l;->g:I

    :cond_0
    iput v1, p0, Lcom/i/l;->h:I

    return-void
.end method

.method public seekTo(I)V
    .locals 4

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/l;->H:J

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/l;->v:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/i/l;->v:I

    goto :goto_0
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2

    new-instance v0, Lcom/i/e;

    invoke-virtual {p0}, Lcom/i/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/i/e;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/i/l;->E:Lcom/i/e;

    return-void
.end method

.method public setMediaController(Lcom/i/b;)V
    .locals 1

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-interface {v0}, Lcom/i/b;->a()V

    :cond_0
    iput-object p1, p0, Lcom/i/l;->p:Lcom/i/b;

    invoke-direct {p0}, Lcom/i/l;->c()V

    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l;->u:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l;->r:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setRender(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/i/l;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "invalid render %d\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/i/l;->setRenderView(Lcom/i/c;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/i/k;

    invoke-virtual {p0}, Lcom/i/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/i/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/i/k;->getSurfaceHolder()Lcom/i/c$b;

    move-result-object v1

    iget-object v2, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/i/c$b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/i/k;->a(II)V

    iget-object v1, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/i/k;->b(II)V

    iget v1, p0, Lcom/i/l;->S:I

    invoke-virtual {v0, v1}, Lcom/i/k;->setAspectRatio(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/i/l;->setRenderView(Lcom/i/c;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/i/i;

    invoke-virtual {p0}, Lcom/i/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/i/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/i/l;->setRenderView(Lcom/i/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderView(Lcom/i/c;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    invoke-interface {v0}, Lcom/i/c;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l;->B:Lcom/i/c;

    iget-object v2, p0, Lcom/i/l;->c:Lcom/i/c$a;

    invoke-interface {v1, v2}, Lcom/i/c;->b(Lcom/i/c$a;)V

    iput-object v4, p0, Lcom/i/l;->B:Lcom/i/c;

    invoke-virtual {p0, v0}, Lcom/i/l;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/i/l;->B:Lcom/i/c;

    iget v0, p0, Lcom/i/l;->S:I

    invoke-interface {p1, v0}, Lcom/i/c;->setAspectRatio(I)V

    iget v0, p0, Lcom/i/l;->k:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/i/l;->l:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/i/l;->k:I

    iget v1, p0, Lcom/i/l;->l:I

    invoke-interface {p1, v0, v1}, Lcom/i/c;->a(II)V

    :cond_3
    iget v0, p0, Lcom/i/l;->C:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/i/l;->D:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/i/l;->C:I

    iget v1, p0, Lcom/i/l;->D:I

    invoke-interface {p1, v0, v1}, Lcom/i/c;->b(II)V

    :cond_4
    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    invoke-interface {v0}, Lcom/i/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/i/l;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    iget-object v1, p0, Lcom/i/l;->c:Lcom/i/c$a;

    invoke-interface {v0, v1}, Lcom/i/c;->a(Lcom/i/c$a;)V

    iget-object v0, p0, Lcom/i/l;->B:Lcom/i/c;

    iget v1, p0, Lcom/i/l;->o:I

    invoke-interface {v0, v1}, Lcom/i/c;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setScreenScale(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/i/l;->B:Lcom/i/c;

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/i/l;->B:Lcom/i/c;

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

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l;->aa:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/i/l;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/i/l;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/i/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    iput v1, p0, Lcom/i/l;->g:I

    :cond_0
    iput v1, p0, Lcom/i/l;->h:I

    return-void
.end method
