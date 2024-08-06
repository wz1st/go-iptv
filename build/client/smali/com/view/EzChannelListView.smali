.class public Lcom/view/EzChannelListView;
.super Landroid/support/v17/leanback/widget/VerticalGridView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/view/EzChannelListView$a;
    }
.end annotation


# instance fields
.field P:Lcom/view/EzChannelListView$a;

.field public Q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/eztv/powerful/PlayerActivity;->d:I

    iput v0, p0, Lcom/view/EzChannelListView;->Q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/eztv/powerful/PlayerActivity;->d:I

    iput v0, p0, Lcom/view/EzChannelListView;->Q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/eztv/powerful/PlayerActivity;->d:I

    iput v0, p0, Lcom/view/EzChannelListView;->Q:I

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/VerticalGridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public setDataChangedListener(Lcom/view/EzChannelListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/view/EzChannelListView;->P:Lcom/view/EzChannelListView$a;

    return-void
.end method
