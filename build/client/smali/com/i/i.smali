.class public Lcom/i/i;
.super Landroid/view/SurfaceView;

# interfaces
.implements Lcom/i/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/i/i$b;,
        Lcom/i/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/i/f;

.field private b:Lcom/i/i$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/i/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/i/f;

    invoke-direct {v0, p0}, Lcom/i/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    new-instance v0, Lcom/i/i$b;

    invoke-direct {v0, p0}, Lcom/i/i$b;-><init>(Lcom/i/i;)V

    iput-object v0, p0, Lcom/i/i;->b:Lcom/i/i$b;

    invoke-virtual {p0}, Lcom/i/i;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/i/i;->b:Lcom/i/i$b;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/i/i;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->a(II)V

    invoke-virtual {p0}, Lcom/i/i;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {p0}, Lcom/i/i;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/i;->b:Lcom/i/i$b;

    invoke-virtual {v0, p1}, Lcom/i/i$b;->a(Lcom/i/c$a;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->b(II)V

    invoke-virtual {p0}, Lcom/i/i;->requestLayout()V

    :cond_0
    return-void
.end method

.method public b(Lcom/i/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/i/i;->b:Lcom/i/i$b;

    invoke-virtual {v0, p1}, Lcom/i/i$b;->b(Lcom/i/c$a;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/i/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/i/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/i/f;->c(II)V

    iget-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v0}, Lcom/i/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v1}, Lcom/i/f;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/i/i;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/i/i;->a:Lcom/i/f;

    invoke-virtual {v0, p1}, Lcom/i/f;->b(I)V

    invoke-virtual {p0}, Lcom/i/i;->requestLayout()V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public setReverseX(I)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/i/i;->setScaleX(F)V

    return-void
.end method

.method public setReverseY(I)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/i/i;->setScaleY(F)V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
