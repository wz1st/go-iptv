.class Landroid/support/v7/widget/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static j:Landroid/support/v7/widget/ay;

.field private static k:Landroid/support/v7/widget/ay;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/CharSequence;

.field private final c:I

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroid/support/v7/widget/az;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/ay$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ay$1;-><init>(Landroid/support/v7/widget/ay;)V

    iput-object v0, p0, Landroid/support/v7/widget/ay;->d:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/ay$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ay$2;-><init>(Landroid/support/v7/widget/ay;)V

    iput-object v0, p0, Landroid/support/v7/widget/ay;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/ay;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/f/u;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ay;->c:I

    invoke-direct {p0}, Landroid/support/v7/widget/ay;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private static a(Landroid/support/v7/widget/ay;)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    invoke-direct {v0}, Landroid/support/v7/widget/ay;->c()V

    :cond_0
    sput-object p0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    invoke-direct {v0}, Landroid/support/v7/widget/ay;->b()V

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v7/widget/ay;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/ay;->f:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/ay;->c:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroid/support/v7/widget/ay;->g:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/ay;->c:I

    if-gt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Landroid/support/v7/widget/ay;->f:I

    iput v1, p0, Landroid/support/v7/widget/ay;->g:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ay;->f:I

    iput v0, p0, Landroid/support/v7/widget/ay;->g:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    if-ne v0, p0, :cond_0

    sput-object v2, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    iget-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->a()V

    iput-object v2, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    invoke-direct {p0}, Landroid/support/v7/widget/ay;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/ay;->j:Landroid/support/v7/widget/ay;

    if-ne v0, p0, :cond_1

    invoke-static {v2}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string v0, "TooltipCompatHandler"

    const-string v1, "sActiveHandler.mPopup == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a(Z)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/f/t;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;)V

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()V

    :cond_1
    sput-object p0, Landroid/support/v7/widget/ay;->k:Landroid/support/v7/widget/ay;

    iput-boolean p1, p0, Landroid/support/v7/widget/ay;->i:Z

    new-instance v0, Landroid/support/v7/widget/az;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    iget-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/ay;->f:I

    iget v3, p0, Landroid/support/v7/widget/ay;->g:I

    iget-boolean v4, p0, Landroid/support/v7/widget/ay;->i:Z

    iget-object v5, p0, Landroid/support/v7/widget/ay;->b:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/az;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/ay;->i:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x9c4

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/ay;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/ay;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/f/t;->j(Landroid/view/View;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/ay;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/az;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/ay;->d()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ay;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ay;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ay;->g:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ay;->a(Z)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/ay;->a()V

    return-void
.end method
