.class public Lcom/i/k;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/i/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/i/k$b;,
        Lcom/i/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/i/f;

.field private b:Lcom/i/k$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/i/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/i/k;)Lcom/i/k$b;
    .locals 1

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/i/f;

    invoke-direct {v0, p0}, Lcom/i/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    new-instance v0, Lcom/i/k$b;

    invoke-direct {v0, p0}, Lcom/i/k$b;-><init>(Lcom/i/k;)V

    iput-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-virtual {p0, v0}, Lcom/i/k;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->a(II)V

    invoke-virtual {p0}, Lcom/i/k;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-virtual {v0, p1}, Lcom/i/k$b;->a(Lcom/i/c$a;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->b(II)V

    invoke-virtual {p0}, Lcom/i/k;->requestLayout()V

    :cond_0
    return-void
.end method

.method public b(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-virtual {v0, p1}, Lcom/i/k$b;->b(Lcom/i/c$a;)V

    return-void
.end method

.method public getSurfaceHolder()Lcom/i/c$b;
    .locals 3

    new-instance v0, Lcom/i/k$a;

    iget-object v1, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-static {v1}, Lcom/i/k$b;->a(Lcom/i/k$b;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/i/k$a;-><init>(Lcom/i/k;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/i/k;->getView()Lcom/i/k;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/i/k;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-virtual {v0}, Lcom/i/k$b;->a()V

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/i/k;->b:Lcom/i/k$b;

    invoke-virtual {v0}, Lcom/i/k$b;->b()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/i/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/i/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->c(II)V

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0}, Lcom/i/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v1}, Lcom/i/f;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/i/k;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0, p1}, Lcom/i/f;->b(I)V

    invoke-virtual {p0}, Lcom/i/k;->requestLayout()V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/i/k;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setReverseX(I)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/i/k;->setScaleX(F)V

    return-void
.end method

.method public setReverseY(I)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/i/k;->setScaleY(F)V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/i/k;->a:Lcom/i/f;

    invoke-virtual {v0, p1}, Lcom/i/f;->a(I)V

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/i/k;->setRotation(F)V

    return-void
.end method
