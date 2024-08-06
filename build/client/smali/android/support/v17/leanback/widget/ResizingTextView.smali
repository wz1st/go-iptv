.class Landroid/support/v17/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:F

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->f:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->g:Z

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView_resizeTrigger:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->a:I

    sget v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView_resizedTextSize:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    sget v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView_maintainLineSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->c:Z

    sget v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->d:I

    sget v0, Landroid/support/v17/leanback/a$l;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingRelative(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->h:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->i:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->j:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->k:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->g:Z

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->h:I

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->i:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->j:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->k:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->a(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->a:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_b

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getMaxLines()I

    move-result v3

    if-le v3, v1, :cond_b

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    if-eqz v0, :cond_7

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    move v2, v1

    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->i:F

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->h:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->c:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    move v2, v1

    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->j:I

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->d:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->k:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->e:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v5

    if-eq v5, v4, :cond_4

    :cond_3
    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/ResizingTextView;->a(II)V

    move v2, v1

    :cond_4
    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->f:Z

    if-eqz v2, :cond_5

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->b:I

    if-eq v4, v5, :cond_8

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->h:I

    if-eq v3, v4, :cond_8

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->h:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    move v2, v1

    :cond_8
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->c:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->i:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    iget v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->i:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    move v2, v1

    :cond_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->j:I

    if-ne v3, v4, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->k:I

    if-eq v3, v4, :cond_4

    :cond_a
    iget v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->j:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->k:I

    invoke-direct {p0, v2, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->a(II)V

    move v2, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/widget/m;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method
