.class Landroid/support/v4/app/k$a;
.super Landroid/support/v4/app/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v4/app/k$b;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object p1, p0, Landroid/support/v4/app/k$a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/k$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/f/t;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k$a;->a:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/k$a$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/k$a$1;-><init>(Landroid/support/v4/app/k$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/k$b;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
