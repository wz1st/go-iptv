.class public final Landroid/support/v7/view/menu/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/support/v4/a/a/b;)Landroid/view/MenuItem;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/j;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/j;-><init>(Landroid/content/Context;Landroid/support/v4/a/a/b;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/i;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/i;-><init>(Landroid/content/Context;Landroid/support/v4/a/a/b;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/a/a/c;)Landroid/view/SubMenu;
    .locals 1

    new-instance v0, Landroid/support/v7/view/menu/t;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/t;-><init>(Landroid/content/Context;Landroid/support/v4/a/a/c;)V

    return-object v0
.end method
