.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/scwang/smartrefresh/layout/b/c;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    sget-object v0, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_Layout_layout_srlBackgroundColor:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:I

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->f:[Lcom/scwang/smartrefresh/layout/b/c;

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/b/c;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
