.class Landroid/support/v17/leanback/app/GuidedStepRootLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->a:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->a:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->b:Z

    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    const/16 v3, 0x42

    const/16 v2, 0x11

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_4

    :cond_0
    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/y;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_5

    if-ne p2, v2, :cond_6

    :cond_3
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->a:Z

    if-eqz v1, :cond_1

    :cond_4
    move-object p1, v0

    goto :goto_0

    :cond_5
    if-eq p2, v3, :cond_3

    :cond_6
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->b:Z

    if-nez v1, :cond_4

    goto :goto_0
.end method
