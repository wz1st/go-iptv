.class public final Landroid/support/v4/f/b/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/f/b/e;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/f/b/e;-><init>(FFFF)V

    goto :goto_0
.end method
