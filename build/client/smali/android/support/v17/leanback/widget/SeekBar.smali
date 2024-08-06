.class public final Landroid/support/v17/leanback/widget/SeekBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SeekBar$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/support/v17/leanback/widget/SeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->g:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->f:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->d:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$c;->lb_playback_transport_progressbar_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$c;->lb_playback_transport_progressbar_active_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$c;->lb_playback_transport_progressbar_active_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->l:I

    return-void
.end method

.method private a()V
    .locals 10

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->n:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->c:Landroid/graphics/RectF;

    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->l:I

    :goto_1
    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->h:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SeekBar;->a:Landroid/graphics/RectF;

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v4

    sub-int v9, v2, v3

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v5, p0, Landroid/support/v17/leanback/widget/SeekBar;->i:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    int-to-float v7, v3

    iget v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v1, v8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->k:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->invalidate()V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->h:I

    return v0
.end method

.method public getSecondProgress()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->i:I

    return v0
.end method

.method public getSecondaryProgressColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->l:I

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->c:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->a:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->k:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SeekBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->o:Landroid/support/v17/leanback/widget/SeekBar$a;

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->o:Landroid/support/v17/leanback/widget/SeekBar$a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SeekBar$a;->a()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->o:Landroid/support/v17/leanback/widget/SeekBar$a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SeekBar$a;->b()Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAccessibilitySeekListener(Landroid/support/v17/leanback/widget/SeekBar$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->o:Landroid/support/v17/leanback/widget/SeekBar$a;

    return-void
.end method

.method public setActiveBarHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->n:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setActiveRadius(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->l:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->m:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    if-le p1, v0, :cond_1

    iget p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    :cond_0
    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->h:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    if-le p1, v0, :cond_1

    iget p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->j:I

    :cond_0
    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->i:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->a()V

    return-void

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setSecondaryProgressColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
