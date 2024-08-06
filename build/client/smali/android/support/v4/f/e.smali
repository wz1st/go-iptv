.class public Landroid/support/v4/f/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f/e$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/f/e;->a:Z

    sput-object v1, Landroid/support/v4/f/e;->b:Ljava/lang/reflect/Method;

    sput-boolean v0, Landroid/support/v4/f/e;->c:Z

    sput-object v1, Landroid/support/v4/f/e;->d:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Landroid/support/v4/f/e;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/app/Dialog;

    const-string v1, "mOnKeyListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f/e;->d:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v4/f/e;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sput-boolean v2, Landroid/support/v4/f/e;->c:Z

    :cond_0
    sget-object v0, Landroid/support/v4/f/e;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Landroid/support/v4/f/e;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroid/support/v4/f/e;->a:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onMenuKeyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f/e;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    sput-boolean v6, Landroid/support/v4/f/e;->a:Z

    :cond_0
    sget-object v0, Landroid/support/v4/f/e;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Landroid/support/v4/f/e;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v2, p1}, Landroid/support/v4/f/e;->a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/f/t;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/support/v4/f/e;->a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/f/t;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/support/v4/f/e$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    invoke-interface {p0, p3}, Landroid/support/v4/f/e$a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p3}, Landroid/support/v4/f/e;->a(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_4

    check-cast p2, Landroid/app/Dialog;

    invoke-static {p2, p3}, Landroid/support/v4/f/e;->a(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1, p3}, Landroid/support/v4/f/t;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-interface {p0, p3}, Landroid/support/v4/f/e$a;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
