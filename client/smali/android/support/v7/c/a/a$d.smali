.class Landroid/support/v7/c/a/a$d;
.super Landroid/support/v7/c/a/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/c/a/a$f;-><init>(Landroid/support/v7/c/a/a$1;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-eqz p2, :cond_1

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    new-instance v3, Landroid/support/v7/c/a/a$e;

    invoke-direct {v3, p1, p2}, Landroid/support/v7/c/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    const-string v4, "currentIndex"

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v0, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/c/a/a$e;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean p3, p0, Landroid/support/v7/c/a/a$d;->b:Z

    iput-object v0, p0, Landroid/support/v7/c/a/a$d;->a:Landroid/animation/ObjectAnimator;

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/c/a/a$d;->b:Z

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method
