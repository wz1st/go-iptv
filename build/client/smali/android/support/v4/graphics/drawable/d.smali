.class Landroid/support/v4/graphics/drawable/d;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/b;
.implements Landroid/support/v4/graphics/drawable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/d$b;,
        Landroid/support/v4/graphics/drawable/d$a;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field b:Landroid/support/v4/graphics/drawable/d$a;

.field c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Landroid/graphics/PorterDuff$Mode;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v4/graphics/drawable/d;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->b()Landroid/support/v4/graphics/drawable/d$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/d$a;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-direct {p0, p2}, Landroid/support/v4/graphics/drawable/d;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/d$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/d$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private a([I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/d$a;->c:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/d$a;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-boolean v4, p0, Landroid/support/v4/graphics/drawable/d;->f:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/graphics/drawable/d;->d:I

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/d;->e:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_0

    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/graphics/drawable/d;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput v2, p0, Landroid/support/v4/graphics/drawable/d;->d:I

    iput-object v3, p0, Landroid/support/v4/graphics/drawable/d;->e:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v4/graphics/drawable/d;->f:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/d;->f:Z

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->clearColorFilter()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/drawable/d;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/d;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/d;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/d;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/d$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->invalidateSelf()V

    return-void
.end method

.method b()Landroid/support/v4/graphics/drawable/d$a;
    .locals 3

    new-instance v0, Landroid/support/v4/graphics/drawable/d$b;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/d$b;-><init>(Landroid/support/v4/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/d$a;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/d$a;->a:I

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/d$a;->c:Landroid/content/res/ColorStateList;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->b()Landroid/support/v4/graphics/drawable/d$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/support/v4/graphics/drawable/d$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Z

    :cond_2
    return-object p0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/graphics/drawable/d;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setState([I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/d;->a([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/d;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/d$a;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/d;->a([I)Z

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->b:Landroid/support/v4/graphics/drawable/d$a;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/d$a;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/d;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/d;->a([I)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/d;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
