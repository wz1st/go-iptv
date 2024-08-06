.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/f/m;
.implements Lcom/scwang/smartrefresh/layout/a/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;
    }
.end annotation


# static fields
.field protected static aJ:Lcom/scwang/smartrefresh/layout/a/a;

.field protected static aK:Lcom/scwang/smartrefresh/layout/a/b;

.field protected static aL:Lcom/scwang/smartrefresh/layout/a/c;

.field protected static aM:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field protected A:[I

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field protected M:Z

.field protected N:Z

.field protected O:Z

.field protected P:Z

.field protected Q:Z

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field protected U:Z

.field protected V:Z

.field protected W:Z

.field protected a:I

.field protected aA:Lcom/scwang/smartrefresh/layout/b/b;

.field protected aB:Lcom/scwang/smartrefresh/layout/b/b;

.field protected aC:J

.field protected aD:I

.field protected aE:I

.field protected aF:Z

.field protected aG:Z

.field protected aH:Z

.field protected aI:Z

.field protected aN:Z

.field protected aO:Landroid/view/MotionEvent;

.field protected aP:Ljava/lang/Runnable;

.field protected aQ:Landroid/animation/ValueAnimator;

.field protected aa:Z

.field protected ab:Lcom/scwang/smartrefresh/layout/f/d;

.field protected ac:Lcom/scwang/smartrefresh/layout/f/b;

.field protected ad:Lcom/scwang/smartrefresh/layout/f/c;

.field protected ae:Lcom/scwang/smartrefresh/layout/a/j;

.field protected af:I

.field protected ag:Z

.field protected ah:[I

.field protected ai:Landroid/support/v4/f/l;

.field protected aj:Landroid/support/v4/f/o;

.field protected ak:I

.field protected al:Lcom/scwang/smartrefresh/layout/b/a;

.field protected am:I

.field protected an:Lcom/scwang/smartrefresh/layout/b/a;

.field protected ao:I

.field protected ap:I

.field protected aq:F

.field protected ar:F

.field protected as:F

.field protected at:F

.field protected au:Lcom/scwang/smartrefresh/layout/a/g;

.field protected av:Lcom/scwang/smartrefresh/layout/a/g;

.field protected aw:Lcom/scwang/smartrefresh/layout/a/d;

.field protected ax:Landroid/graphics/Paint;

.field protected ay:Landroid/os/Handler;

.field protected az:Lcom/scwang/smartrefresh/layout/a/h;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:C

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:Landroid/widget/Scroller;

.field protected y:Landroid/view/VelocityTracker;

.field protected z:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aJ:Lcom/scwang/smartrefresh/layout/a/a;

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aK:Lcom/scwang/smartrefresh/layout/a/b;

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aL:Lcom/scwang/smartrefresh/layout/a/c;

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    const/16 v0, 0x6e

    iput-char v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aa:Z

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ah:[I

    new-instance v0, Landroid/support/v4/f/l;

    invoke-direct {v0, p0}, Landroid/support/v4/f/l;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    new-instance v0, Landroid/support/v4/f/o;

    invoke-direct {v0, p0}, Landroid/support/v4/f/o;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aj:Landroid/support/v4/f/o;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/a;->a:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/a;->a:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->as:F

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->at:F

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    new-instance v3, Lcom/scwang/smartrefresh/layout/g/b;

    sget v4, Lcom/scwang/smartrefresh/layout/g/b;->a:I

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/layout/g/b;-><init>(I)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sget-object v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aL:Lcom/scwang/smartrefresh/layout/a/c;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aL:Lcom/scwang/smartrefresh/layout/a/c;

    invoke-interface {v0, p1, p0}, Lcom/scwang/smartrefresh/layout/a/c;->a(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/a/i;)V

    :cond_2
    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlDragRate:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->as:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->as:F

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->at:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->at:F

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlReboundDuration:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ao:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ao:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ap:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ap:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    invoke-virtual {v0, v4}, Landroid/support/v4/f/l;->a(Z)V

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez v0, :cond_3

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    if-nez v0, :cond_4

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aa:Z

    if-nez v0, :cond_5

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aa:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/a;->g:Lcom/scwang/smartrefresh/layout/b/a;

    :goto_3
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/a;->g:Lcom/scwang/smartrefresh/layout/b/a;

    :goto_4
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    sget v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v4, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v0, :cond_d

    new-array v5, v6, [I

    aput v4, v5, v1

    aput v0, v5, v2

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    :cond_6
    :goto_5
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v0, :cond_7

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    :cond_7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    goto :goto_4

    :cond_d
    new-array v0, v2, [I

    aput v4, v0, v1

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    goto :goto_5

    :cond_e
    if-eqz v0, :cond_6

    new-array v4, v6, [I

    aput v1, v4, v1

    aput v0, v4, v2

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    goto :goto_5
.end method

.method static synthetic a(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smartrefresh/layout/a/a;)V
    .locals 0

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aJ:Lcom/scwang/smartrefresh/layout/a/a;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smartrefresh/layout/a/b;)V
    .locals 0

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aK:Lcom/scwang/smartrefresh/layout/a/b;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smartrefresh/layout/a/c;)V
    .locals 0

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aL:Lcom/scwang/smartrefresh/layout/a/c;

    return-void
.end method


# virtual methods
.method protected a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    :cond_1
    return-object v0
.end method

.method public a(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 6

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v1, v1, 0x10

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(IZZ)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 6

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v1, v1, 0x10

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/e;)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/e;II)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/e;II)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aG:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/b/a;->a()Lcom/scwang/smartrefresh/layout/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    const/4 p2, -0x1

    :cond_2
    if-nez p3, :cond_3

    const/4 p3, -0x2

    :cond_3
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-direct {v2, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(II)V

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/e;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    :goto_1
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/c;->h:Z

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-super {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/g;->setPrimaryColors([I)V

    :cond_4
    return-object p0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v2

    invoke-super {p0, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/f;)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/f;II)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/f;II)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aF:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/b/a;->a()Lcom/scwang/smartrefresh/layout/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    :cond_2
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(II)V

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/c;->h:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-super {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/g;->setPrimaryColors([I)V

    :cond_3
    return-object p0

    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/f/b;)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ac:Lcom/scwang/smartrefresh/layout/f/b;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/f/d;)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ab:Lcom/scwang/smartrefresh/layout/f/d;

    return-object p0
.end method

.method protected a()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->n:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/h;->b()Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->d:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->f:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->g:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->h:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->i:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->j:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_0
.end method

.method protected a(Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, p1, :cond_4

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/f/f;->a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/f/f;->a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/f/f;->a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_2
    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->p:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    goto :goto_0
.end method

.method protected a(F)Z
    .locals 9

    const/4 v0, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:I

    int-to-float p1, v2

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getScaleY()F

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    neg-float p1, p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v2, :cond_4

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v2, :cond_4

    :cond_2
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;

    invoke-direct {v1, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a()Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    move v1, v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/b;->x:Z

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    cmpg-float v0, p1, v4

    if-gez v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_a

    :cond_7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_a

    :cond_9
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v0, :cond_3

    :cond_a
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aN:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    neg-float v2, p1

    float-to-int v4, v2

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->i:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->j:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->d:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    :cond_3
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_1
.end method

.method protected a(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ZLcom/scwang/smartrefresh/layout/a/g;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/scwang/smartrefresh/layout/a/i;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    long-to-int v0, v0

    rsub-int v0, v0, 0x12c

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    return-object p0
.end method

.method protected b(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->n:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public c()Lcom/scwang/smartrefresh/layout/a/i;
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    long-to-int v0, v0

    rsub-int v0, v0, 0x12c

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0, v4, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZZ)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZZ)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method protected c(F)V
    .locals 14

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-string v0, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->n:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    float-to-int v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    :goto_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->p:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    float-to-int v1, p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    neg-double v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_6
    div-double v0, v10, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    double-to-int v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    float-to-int v1, p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v5, v5

    add-float/2addr v5, p1

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    neg-double v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_b
    div-double v0, v10, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v0, v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    double-to-int v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    neg-double v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_d

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_d
    div-double v0, v10, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    neg-double v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_f
    div-double v0, v10, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v0, v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0
.end method

.method public computeScroll()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-lez v0, :cond_8

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v1, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aN:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_7

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b(F)V

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aN:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public d(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v0, 0x6

    if-ne v4, v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    :goto_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    if-ne v0, v5, :cond_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v2, v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v1, v7

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_7

    add-int/lit8 v0, v3, -0x1

    :goto_4
    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float v10, v1, v0

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    const/4 v0, 0x5

    if-ne v4, v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    sub-float v1, v10, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    :cond_5
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v1, 0x2

    if-ne v4, v1, :cond_6

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :goto_5
    int-to-float v0, v0

    div-float v0, v4, v0

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4, v0, v3, v1}, Lcom/scwang/smartrefresh/layout/a/g;->a(FII)V

    :cond_6
    :goto_6
    move v0, v2

    :goto_7
    return v0

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4, v0, v3, v1}, Lcom/scwang/smartrefresh/layout/a/g;->a(FII)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v0, :cond_f

    :cond_b
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aF:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-nez v0, :cond_f

    :cond_d
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-eqz v0, :cond_10

    :cond_e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_10

    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7

    :cond_10
    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_13

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_13
    packed-switch v4, :pswitch_data_0

    :cond_14
    :goto_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_7

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->n:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    const/16 v0, 0x68

    iput-char v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/d;->a(Landroid/view/MotionEvent;)V

    :cond_16
    const/4 v0, 0x1

    goto/16 :goto_7

    :pswitch_1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    sub-float v11, v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v0, v10, v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    if-nez v1, :cond_2c

    iget-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v1, :cond_2c

    iget-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/16 v2, 0x76

    if-eq v1, v2, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2b

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b

    :cond_17
    const/16 v1, 0x76

    iput-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_26

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-ltz v1, :cond_19

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v1, :cond_26

    :cond_18
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/d;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v1, v1

    sub-float v1, v10, v1

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    :cond_1a
    :goto_9
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v1, :cond_2c

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v1, v10, v0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1b
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2a

    :cond_1c
    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    :goto_a
    invoke-interface {v2, v0}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    move v8, v1

    :goto_b
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_32

    float-to-int v0, v8

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    add-int v9, v0, v1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eqz v0, :cond_1e

    if-ltz v9, :cond_1f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-ltz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_31

    if-gtz v9, :cond_1f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-lez v0, :cond_31

    :cond_1f
    iput v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    if-nez v2, :cond_20

    const/4 v4, 0x0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v5, v2, v11

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_20
    const/4 v4, 0x2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v5, v2, v11

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    int-to-float v3, v9

    add-float v6, v2, v3

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_21

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    :cond_21
    if-lez v9, :cond_2d

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v0, :cond_2d

    :cond_22
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2d

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    :goto_c
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eqz v2, :cond_23

    if-ltz v0, :cond_24

    :cond_23
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v2, :cond_2f

    if-lez v0, :cond_2f

    :cond_24
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    :cond_25
    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_26
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1a

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v1, :cond_29

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v1, :cond_1a

    :cond_27
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_28

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-nez v1, :cond_29

    :cond_28
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    goto/16 :goto_9

    :cond_2a
    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    goto/16 :goto_a

    :cond_2b
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2c

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2c

    iget-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/16 v2, 0x76

    if-eq v1, v2, :cond_2c

    const/16 v1, 0x68

    iput-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    :cond_2c
    move v8, v0

    goto/16 :goto_b

    :cond_2d
    if-gez v9, :cond_34

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v0, :cond_34

    :cond_2e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_34

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_c

    :cond_2f
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_30
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v9, v0

    :cond_31
    int-to-float v0, v9

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_32
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_14

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(F)Z

    :pswitch_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    const/16 v0, 0x6e

    iput-char v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aO:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v10

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_33
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a()V

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_34
    move v0, v9

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p2, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v8

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    move v7, v0

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v0, v7

    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-eq v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v2, :cond_7

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v2, v3, :cond_10

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v2

    move v7, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p2, :cond_e

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v8

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    move v6, v0

    :goto_3
    int-to-float v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    :cond_a
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-eq v1, v2, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v1, :cond_e

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v2, v3, :cond_f

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v2

    move v6, v0

    goto :goto_3

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto/16 :goto_1

    :cond_f
    move v6, v0

    goto :goto_3

    :cond_10
    move v7, v0

    goto/16 :goto_2
.end method

.method public e(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b()Lcom/scwang/smartrefresh/layout/a/i;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c()Lcom/scwang/smartrefresh/layout/a/i;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public f(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    rsub-int v0, v0, 0x12c

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v4, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Z)Lcom/scwang/smartrefresh/layout/a/i;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    sub-long/2addr v2, v4

    if-eqz p1, :cond_0

    long-to-int v0, v2

    rsub-int v0, v0, 0x12c

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZZ)Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aj:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->a()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/scwang/smartrefresh/layout/a/e;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRefreshHeader()Lcom/scwang/smartrefresh/layout/a/f;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/f;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/scwang/smartrefresh/layout/b/b;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aH:Z

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-nez v2, :cond_0

    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aK:Lcom/scwang/smartrefresh/layout/a/b;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aK:Lcom/scwang/smartrefresh/layout/a/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/scwang/smartrefresh/layout/a/b;->a(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/a/i;)Lcom/scwang/smartrefresh/layout/a/f;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/f;)Lcom/scwang/smartrefresh/layout/a/i;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-nez v2, :cond_6

    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aJ:Lcom/scwang/smartrefresh/layout/a/a;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aJ:Lcom/scwang/smartrefresh/layout/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/scwang/smartrefresh/layout/a/a;->a(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/a/i;)Lcom/scwang/smartrefresh/layout/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/e;)Lcom/scwang/smartrefresh/layout/a/i;

    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_9

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    new-instance v4, Lcom/scwang/smartrefresh/layout/d/a;

    invoke-direct {v4, v3}, Lcom/scwang/smartrefresh/layout/d/a;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scwang/smartrefresh/layout/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/f;)Lcom/scwang/smartrefresh/layout/a/i;

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    new-instance v2, Lcom/scwang/smartrefresh/layout/footer/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scwang/smartrefresh/layout/footer/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/a/e;)Lcom/scwang/smartrefresh/layout/a/i;

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez v2, :cond_8

    :cond_7
    :goto_3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-nez v0, :cond_a

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, -0x9a00

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget v3, Lcom/scwang/smartrefresh/layout/a$c;->srl_content_empty:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-direct {v3, v6, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(II)V

    invoke-super {p0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/scwang/smartrefresh/layout/d/a;

    invoke-direct {v3, v2}, Lcom/scwang/smartrefresh/layout/d/a;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ae:Lcom/scwang/smartrefresh/layout/a/j;

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/a/d;->a(Lcom/scwang/smartrefresh/layout/a/j;)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/a/d;->a(Z)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v3, v4, v0, v2}, Lcom/scwang/smartrefresh/layout/a/d;->a(Lcom/scwang/smartrefresh/layout/a/h;Landroid/view/View;Landroid/view/View;)V

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_b

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-interface {v0, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/a/d;->a(III)V

    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/g;->setPrimaryColors([I)V

    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/g;->setPrimaryColors([I)V

    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/c;->h:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/c;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aH:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    :cond_1
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v10, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v4, v2

    move v0, v7

    move v5, v2

    :goto_0
    if-ge v4, v8, :cond_4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/g/b;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-lt v5, v6, :cond_1

    if-ne v4, v1, :cond_2

    :cond_1
    move v3, v4

    move v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    instance-of v3, v3, Lcom/scwang/smartrefresh/layout/a/g;

    if-nez v3, :cond_11

    if-ge v5, v1, :cond_11

    if-lez v4, :cond_3

    move v0, v1

    :goto_2
    move v3, v4

    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    if-ltz v0, :cond_f

    new-instance v3, Lcom/scwang/smartrefresh/layout/d/a;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/layout/d/a;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-ne v0, v1, :cond_7

    if-ne v8, v10, :cond_10

    move v3, v2

    :goto_3
    move v5, v2

    :goto_4
    if-ge v5, v8, :cond_e

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v5, v3, :cond_5

    if-eq v5, v6, :cond_9

    if-ne v3, v7, :cond_9

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-nez v4, :cond_9

    instance-of v4, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v4, :cond_9

    :cond_5
    instance-of v4, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v4, :cond_8

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/f;

    :goto_5
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    :cond_6
    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_7
    if-ne v8, v6, :cond_f

    move v6, v1

    move v3, v7

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/scwang/smartrefresh/layout/d/c;

    invoke-direct {v4, v0}, Lcom/scwang/smartrefresh/layout/d/c;-><init>(Landroid/view/View;)V

    move-object v0, v4

    goto :goto_5

    :cond_9
    if-eq v5, v6, :cond_a

    if-ne v6, v7, :cond_6

    instance-of v4, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v4, :cond_6

    :cond_a
    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez v4, :cond_c

    :cond_b
    move v4, v1

    :goto_7
    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    instance-of v4, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v4, :cond_d

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    :goto_8
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    goto :goto_6

    :cond_c
    move v4, v2

    goto :goto_7

    :cond_d
    new-instance v4, Lcom/scwang/smartrefresh/layout/d/b;

    invoke-direct {v4, v0}, Lcom/scwang/smartrefresh/layout/d/b;-><init>(Landroid/view/View;)V

    move-object v0, v4

    goto :goto_8

    :cond_e
    return-void

    :cond_f
    move v6, v7

    move v3, v7

    goto :goto_3

    :cond_10
    move v6, v7

    move v3, v2

    goto :goto_3

    :cond_11
    move v3, v0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_11

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/scwang/smartrefresh/layout/a$c;->srl_component_falsify:I

    invoke-virtual {v7, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v0

    if-ne v0, v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_3
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v9, v4, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v2, v5, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v10, v9, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p0, v1, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {v8, v9, v1, v10, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_6
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ao:I

    add-int/2addr v2, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v10, v9, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v11, :cond_12

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sub-int/2addr v0, v2

    :goto_7
    invoke-virtual {v8, v9, v1, v10, v0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_b

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    :goto_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v8

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v0, v10

    iget v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ap:I

    sub-int/2addr v0, v10

    iget-boolean v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v10

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_c

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_a
    add-int v11, v5, v5

    add-int/2addr v0, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v0, v10

    :cond_4
    sget-object v10, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v8, v10, :cond_d

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ap:I

    sub-int/2addr v0, v1

    :cond_5
    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_5

    :cond_9
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto/16 :goto_6

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_8

    :cond_b
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    if-nez v1, :cond_e

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->d:Lcom/scwang/smartrefresh/layout/b/c;

    if-eq v8, v1, :cond_e

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v8, v1, :cond_f

    :cond_e
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_f
    iget-boolean v1, v8, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    :goto_c
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    goto :goto_c

    :cond_11
    return-void

    :cond_12
    move v1, v2

    goto/16 :goto_7

    :cond_13
    move v1, v2

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1b

    invoke-super {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/scwang/smartrefresh/layout/a$c;->srl_component_falsify:I

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, v5, :cond_1e

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v3, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    iget v10, v10, Lcom/scwang/smartrefresh/layout/b/a;->m:I

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/a;->g:Lcom/scwang/smartrefresh/layout/b/a;

    iget v11, v11, Lcom/scwang/smartrefresh/layout/b/a;->m:I

    if-ge v10, v11, :cond_1f

    iget v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_d

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/a;->e:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v10, v11}, Lcom/scwang/smartrefresh/layout/b/a;->a(Lcom/scwang/smartrefresh/layout/b/a;)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/a;->e:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    move v1, v3

    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v3

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v3, v10, :cond_f

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_4
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v9, v0}, Landroid/view/View;->measure(II)V

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/a;->n:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/b/a;->b()Lcom/scwang/smartrefresh/layout/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    iget v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-interface {v0, v1, v3, v9}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/h;II)V

    :cond_6
    if-eqz v2, :cond_1e

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v4

    move v3, v0

    :goto_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, v5, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_7
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v4, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    iget v10, v10, Lcom/scwang/smartrefresh/layout/b/a;->m:I

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/a;->g:Lcom/scwang/smartrefresh/layout/b/a;

    iget v11, v11, Lcom/scwang/smartrefresh/layout/b/a;->m:I

    if-ge v10, v11, :cond_1d

    iget v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_12

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v10

    iget-object v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    sget-object v11, Lcom/scwang/smartrefresh/layout/b/a;->e:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v10, v11}, Lcom/scwang/smartrefresh/layout/b/a;->a(Lcom/scwang/smartrefresh/layout/b/a;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/a;->e:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    move v1, v4

    :cond_7
    :goto_8
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v4

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v4, v10, :cond_14

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_8
    :goto_9
    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v9, v0}, Landroid/view/View;->measure(II)V

    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/a;->n:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/b/a;->b()Lcom/scwang/smartrefresh/layout/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v10, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-interface {v0, v1, v4, v9}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/h;II)V

    :cond_a
    if-eqz v2, :cond_b

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v0

    if-ne v0, v5, :cond_1c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_a
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_b
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v5, :cond_18

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p0, v5, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v0

    if-eqz v2, :cond_19

    if-eqz v4, :cond_19

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    :goto_d
    add-int v4, v10, v0

    if-eqz v2, :cond_1a

    if-eqz v5, :cond_1a

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    :goto_e
    add-int/2addr v0, v4

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v8, v9, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v4, v3, v0

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto/16 :goto_3

    :cond_d
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v1, v10, :cond_1f

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v10, :cond_e

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/a;->n:Z

    if-nez v1, :cond_1f

    :cond_e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v10

    const/4 v10, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v1, -0x80000000

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v9, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_1f

    const/4 v1, -0x1

    if-eq v11, v10, :cond_3

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/a;->c:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v3, v10}, Lcom/scwang/smartrefresh/layout/b/a;->a(Lcom/scwang/smartrefresh/layout/b/a;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/a;->c:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->al:Lcom/scwang/smartrefresh/layout/b/a;

    goto/16 :goto_4

    :cond_f
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    :goto_f
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_5

    :cond_10
    const/4 v1, 0x0

    goto :goto_f

    :cond_11
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto/16 :goto_7

    :cond_12
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v1, v10, :cond_1d

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v10, :cond_13

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/a;->n:Z

    if-nez v1, :cond_1d

    :cond_13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v10

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v10

    const/4 v10, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v1, -0x80000000

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v9, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_1d

    const/4 v1, -0x1

    if-eq v11, v10, :cond_7

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    sget-object v10, Lcom/scwang/smartrefresh/layout/b/a;->c:Lcom/scwang/smartrefresh/layout/b/a;

    invoke-virtual {v4, v10}, Lcom/scwang/smartrefresh/layout/b/a;->a(Lcom/scwang/smartrefresh/layout/b/a;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v11

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v10

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    sget-object v4, Lcom/scwang/smartrefresh/layout/b/a;->c:Lcom/scwang/smartrefresh/layout/b/a;

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->an:Lcom/scwang/smartrefresh/layout/b/a;

    goto/16 :goto_8

    :cond_14
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    :goto_10
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_9

    :cond_15
    const/4 v1, 0x0

    goto :goto_10

    :cond_16
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto/16 :goto_a

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_1b
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-static {v4, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    return-void

    :cond_1c
    move v4, v3

    goto/16 :goto_2

    :cond_1d
    move v1, v4

    goto/16 :goto_8

    :cond_1e
    move v3, v4

    goto/16 :goto_6

    :cond_1f
    move v1, v3

    goto/16 :goto_4
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/f/l;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_1

    :cond_0
    neg-float v0, p3

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/f/l;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    mul-int/2addr v0, p3

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    :goto_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    sub-int v2, p3, v0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p4, v3}, Landroid/support/v4/f/l;->a(II[I[I)Z

    const/4 v1, 0x1

    aget v2, p4, v1

    add-int/2addr v0, v2

    aput v0, p4, v1

    return-void

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    move v0, p3

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    move v0, p3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ah:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/f/l;->a(IIII[I)Z

    move-result v1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ah:[I

    aget v0, v0, v6

    add-int v2, p5, v0

    if-gez v2, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ae:Lcom/scwang/smartrefresh/layout/a/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ae:Lcom/scwang/smartrefresh/layout/a/j;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/a/j;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-lez v2, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ae:Lcom/scwang/smartrefresh/layout/a/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ae:Lcom/scwang/smartrefresh/layout/a/j;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/a/d;->a()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/a/j;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    if-lez v2, :cond_8

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    :goto_0
    invoke-interface {v3, v0}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    :cond_6
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_7

    if-gez p3, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    :cond_7
    return-void

    :cond_8
    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aj:Landroid/support/v4/f/o;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/f/o;->a(Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    and-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/f/l;->b(I)Z

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aj:Landroid/support/v4/f/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/o;->a(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    invoke-virtual {v0}, Landroid/support/v4/f/l;->c()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->b()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/support/v4/f/t;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ai:Landroid/support/v4/f/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/l;->a(Z)V

    return-void
.end method

.method protected setStateDirectLoading(Z)V
    .locals 5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aC:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ac:Lcom/scwang/smartrefresh/layout/f/b;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ac:Lcom/scwang/smartrefresh/layout/f/b;

    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/f/b;->a(Lcom/scwang/smartrefresh/layout/a/i;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/g;->b(Lcom/scwang/smartrefresh/layout/a/i;II)V

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz p1, :cond_2

    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/f/b;->a(Lcom/scwang/smartrefresh/layout/a/i;)V

    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, v0, v2, v3}, Lcom/scwang/smartrefresh/layout/f/c;->b(Lcom/scwang/smartrefresh/layout/a/e;II)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-nez v0, :cond_0

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(I)Lcom/scwang/smartrefresh/layout/a/i;

    goto :goto_0
.end method

.method protected setStateLoading(Z)V
    .locals 7

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v2, v2

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v0, p0, v3, v4}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/i;II)V

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v3, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/f/c;->a(Lcom/scwang/smartrefresh/layout/a/e;II)V

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 7

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->j:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v0, p0, v3, v4}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/i;II)V

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/f;

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v3, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/f/c;->a(Lcom/scwang/smartrefresh/layout/a/f;II)V

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    :cond_1
    return-void
.end method
