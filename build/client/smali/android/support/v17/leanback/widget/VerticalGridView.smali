.class public Landroid/support/v17/leanback/widget/VerticalGridView;
.super Landroid/support/v17/leanback/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->a(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbVerticalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(Landroid/content/res/TypedArray;)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbVerticalGridView_numberOfColumns:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->i(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    return-void
.end method

.method setColumnWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Landroid/support/v17/leanback/a$l;->lbVerticalGridView_columnWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v17/leanback/a$l;->lbVerticalGridView_columnWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->h(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    return-void
.end method
