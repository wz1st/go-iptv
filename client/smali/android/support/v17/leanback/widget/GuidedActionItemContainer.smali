.class Landroid/support/v17/leanback/widget/GuidedActionItemContainer;
.super Landroid/support/v17/leanback/widget/l;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->a:Z

    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/support/v17/leanback/widget/y;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/l;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/l;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/y;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method
