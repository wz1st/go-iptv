.class public Landroid/support/v4/app/w;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/arch/lifecycle/e;
.implements Landroid/support/v4/f/e$a;


# instance fields
.field private a:Landroid/support/v4/e/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/n",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/e/n;

    invoke-direct {v0}, Landroid/support/v4/e/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w;->a:Landroid/support/v4/e/n;

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/w;->b:Landroid/arch/lifecycle/f;

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w;->b:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/f/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, p0, p1}, Landroid/support/v4/f/e;->a(Landroid/support/v4/f/e$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/f/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/w;->b:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
