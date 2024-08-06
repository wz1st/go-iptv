.class public Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.super Landroid/transition/Visibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field static final b:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field static final c:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field static final d:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field static final e:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field private static final g:Landroid/animation/TimeInterpolator;


# instance fields
.field final f:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field private h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

.field private i:Landroid/transition/Visibility;

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->g:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->b:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->c:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->d:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->e:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x800003

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->f:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->f:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbSlide:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$l;->lbSlide_lb_slideEdge:I

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)F
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    :goto_0
    return-void

    :sswitch_1
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->b:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->c:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->e:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->d:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->f:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_4
        0x70 -> :sswitch_5
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
        0x800007 -> :sswitch_2
    .end sparse-switch
.end method

.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-super {p0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/view/ViewGroup;)F
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->j:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public clone()Landroid/transition/Transition;
    .locals 2

    invoke-super {p0}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v1}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/Visibility;

    iput-object v1, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    const/4 v0, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eq p1, p2, :cond_0

    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    invoke-virtual {v1, p0, p1, p2, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;->a(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    invoke-virtual {v1, p0, p1, p2, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;->b(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v5

    sget-object v8, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->g:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/support/v17/leanback/transition/a;->a(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v0, v2

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eq p1, p2, :cond_0

    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    invoke-virtual {v1, p0, p1, p2, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;->a(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->h:Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;

    invoke-virtual {v1, p0, p1, p2, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;->b(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v7

    sget-object v8, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->g:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/support/v17/leanback/transition/a;->a(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v0, v2

    goto :goto_0
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-super {p0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->i:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    return-void
.end method
