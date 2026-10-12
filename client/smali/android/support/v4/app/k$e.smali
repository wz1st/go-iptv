.class Landroid/support/v4/app/k$e;
.super Landroid/view/animation/AnimationSet;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->e:Z

    iput-object p2, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/k$e;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/k$e;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->e:Z

    iget-boolean v1, p0, Landroid/support/v4/app/k$e;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/k$e;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->c:Z

    iget-object v1, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroid/support/v4/app/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/t;

    goto :goto_0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->e:Z

    iget-boolean v1, p0, Landroid/support/v4/app/k$e;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/k$e;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->c:Z

    iget-object v1, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroid/support/v4/app/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/t;

    goto :goto_0
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/k$e;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/k$e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k$e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/k$e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$e;->d:Z

    goto :goto_0
.end method
