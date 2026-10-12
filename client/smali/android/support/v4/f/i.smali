.class public final Landroid/support/v4/f/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
