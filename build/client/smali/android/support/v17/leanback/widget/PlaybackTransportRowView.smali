.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->a:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->a:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;

    invoke-interface {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_5

    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x11

    if-eq p2, v0, :cond_4

    const/16 v0, 0x42

    if-ne p2, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method getOnUnhandledKeyListener()Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->a:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/support/v17/leanback/a$f;->playback_progress:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->a:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$a;

    return-void
.end method
