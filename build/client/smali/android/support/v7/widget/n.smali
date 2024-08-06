.class Landroid/support/v7/widget/n;
.super Landroid/widget/PopupWindow;


# static fields
.field private static final a:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/n;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    sget-object v0, Landroid/support/v7/a/a$j;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/av;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->PopupWindow_overlapAnchor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/av;->a(IZ)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->a(Z)V

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->PopupWindow_android_popupBackground:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/n;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->a()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/n;->a:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/n;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/j;->a(Landroid/widget/PopupWindow;Z)V

    goto :goto_0
.end method


# virtual methods
.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/n;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/n;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/n;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/n;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 6

    sget-boolean v0, Landroid/support/v7/widget/n;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/n;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    move v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method
