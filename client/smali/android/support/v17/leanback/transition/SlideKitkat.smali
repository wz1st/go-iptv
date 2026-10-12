.class Landroid/support/v17/leanback/transition/SlideKitkat;
.super Landroid/transition/Visibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/SlideKitkat$d;,
        Landroid/support/v17/leanback/transition/SlideKitkat$c;,
        Landroid/support/v17/leanback/transition/SlideKitkat$b;,
        Landroid/support/v17/leanback/transition/SlideKitkat$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/animation/TimeInterpolator;

.field private static final b:Landroid/animation/TimeInterpolator;

.field private static final e:Landroid/support/v17/leanback/transition/SlideKitkat$a;

.field private static final f:Landroid/support/v17/leanback/transition/SlideKitkat$a;

.field private static final g:Landroid/support/v17/leanback/transition/SlideKitkat$a;

.field private static final h:Landroid/support/v17/leanback/transition/SlideKitkat$a;

.field private static final i:Landroid/support/v17/leanback/transition/SlideKitkat$a;

.field private static final j:Landroid/support/v17/leanback/transition/SlideKitkat$a;


# instance fields
.field private c:I

.field private d:Landroid/support/v17/leanback/transition/SlideKitkat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->b:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->e:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->f:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->g:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->h:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->i:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$6;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$6;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->j:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/transition/SlideKitkat;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbSlide:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$l;->lbSlide_lb_slideEdge:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat;->a(I)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbSlide_android_duration:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/transition/SlideKitkat;->setDuration(J)Landroid/transition/Transition;

    :cond_0
    sget v1, Landroid/support/v17/leanback/a$l;->lbSlide_android_startDelay:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/transition/SlideKitkat;->setStartDelay(J)Landroid/transition/Transition;

    :cond_1
    sget v1, Landroid/support/v17/leanback/a$l;->lbSlide_android_interpolator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFF",
            "Landroid/animation/TimeInterpolator;",
            "I)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/support/v17/leanback/a$f;->lb_slide_transition_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    if-eqz v0, :cond_1

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne v1, p2, :cond_0

    aget v0, v0, v4

    :goto_0
    sget v1, Landroid/support/v17/leanback/a$f;->lb_slide_transition_value:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, v3

    aput p4, v1, v4

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$d;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/transition/SlideKitkat$d;-><init>(Landroid/view/View;Landroid/util/Property;FFI)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {v6, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v6

    :cond_0
    aget v0, v0, v3

    goto :goto_0

    :cond_1
    move v0, p3

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->e:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->c:I

    return-void

    :sswitch_1
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->f:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->g:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->h:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->i:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    goto :goto_0

    :sswitch_5
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->j:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->b(Landroid/view/View;)F

    move-result v4

    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->a(Landroid/view/View;)F

    move-result v3

    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->a()Landroid/util/Property;

    move-result-object v2

    sget-object v6, Landroid/support/v17/leanback/transition/SlideKitkat;->a:Landroid/animation/TimeInterpolator;

    const/4 v7, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Landroid/support/v17/leanback/transition/SlideKitkat;->a(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->b(Landroid/view/View;)F

    move-result v3

    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->a(Landroid/view/View;)F

    move-result v4

    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->d:Landroid/support/v17/leanback/transition/SlideKitkat$a;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$a;->a()Landroid/util/Property;

    move-result-object v2

    sget-object v6, Landroid/support/v17/leanback/transition/SlideKitkat;->b:Landroid/animation/TimeInterpolator;

    const/4 v7, 0x4

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Landroid/support/v17/leanback/transition/SlideKitkat;->a(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1
.end method
