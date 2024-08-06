.class public Landroid/support/d/a/c;
.super Landroid/support/d/a/h;

# interfaces
.implements Landroid/support/d/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/d/a/c$a;,
        Landroid/support/d/a/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/graphics/drawable/Drawable$Callback;

.field private d:Landroid/support/d/a/c$a;

.field private e:Landroid/content/Context;

.field private f:Landroid/animation/ArgbEvaluator;

.field private g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/support/d/a/c;-><init>(Landroid/content/Context;Landroid/support/d/a/c$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/d/a/c;-><init>(Landroid/content/Context;Landroid/support/d/a/c$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/d/a/c$a;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/d/a/h;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/c;->f:Landroid/animation/ArgbEvaluator;

    iput-object v0, p0, Landroid/support/d/a/c;->g:Landroid/animation/Animator$AnimatorListener;

    iput-object v0, p0, Landroid/support/d/a/c;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/d/a/c$1;

    invoke-direct {v0, p0}, Landroid/support/d/a/c$1;-><init>(Landroid/support/d/a/c;)V

    iput-object v0, p0, Landroid/support/d/a/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p1, p0, Landroid/support/d/a/c;->e:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/d/a/c$a;

    iget-object v1, p0, Landroid/support/d/a/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/d/a/c$a;-><init>(Landroid/content/Context;Landroid/support/d/a/c$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/d/a/c;
    .locals 1

    new-instance v0, Landroid/support/d/a/c;

    invoke-direct {v0, p0}, Landroid/support/d/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/d/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 3

    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Landroid/support/d/a/c;->a(Landroid/animation/Animator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/support/d/a/c;->f:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/c;->f:Landroid/animation/ArgbEvaluator;

    :cond_2
    iget-object v0, p0, Landroid/support/d/a/c;->f:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/d/a/c;->a(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/d/a/c$a;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    new-instance v1, Landroid/support/v4/e/a;

    invoke-direct {v1}, Landroid/support/v4/e/a;-><init>()V

    iput-object v1, v0, Landroid/support/d/a/c$a;->e:Landroid/support/v4/e/a;

    :cond_1
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->e:Landroid/support/v4/e/a;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    invoke-super {p0}, Landroid/support/d/a/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/d/a/c;->invalidateSelf()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/d/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget v1, v1, Landroid/support/d/a/c$a;->a:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/d/a/c$b;

    iget-object v1, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/d/a/c$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/d/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    invoke-super {p0}, Landroid/support/d/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/d/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-eq v0, v6, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "animated-vector"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/d/a/a;->e:[I

    invoke-static {p1, p4, p3, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v2, p4}, Landroid/support/d/a/i;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/d/a/i;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/d/a/i;->a(Z)V

    iget-object v3, p0, Landroid/support/d/a/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v2, v3}, Landroid/support/d/a/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v3, v3, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v3, v3, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/d/a/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v3, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iput-object v2, v3, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    :cond_5
    const-string v2, "target"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/d/a/a;->f:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/support/d/a/c;->e:Landroid/content/Context;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/d/a/c;->e:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/support/d/a/e;->a(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/support/d/a/c;->a(Ljava/lang/String;Landroid/animation/Animator;)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    invoke-virtual {v0}, Landroid/support/d/a/c$a;->a()V

    goto/16 :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->isAutoMirrored()Z

    move-result v0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0}, Landroid/support/d/a/i;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/support/d/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setAlpha(I)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setAutoMirrored(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/d/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/d/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/d/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/d/a/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/d/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/d/a/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->b:Landroid/support/d/a/i;

    invoke-virtual {v0, p1, p2}, Landroid/support/d/a/i;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/support/d/a/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/support/d/a/c;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/c;->d:Landroid/support/d/a/c$a;

    iget-object v0, v0, Landroid/support/d/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
