.class Landroid/support/v7/widget/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c;

.field private b:Landroid/support/v7/widget/c$e;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c;Landroid/support/v7/widget/c$e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/c$c;->b:Landroid/support/v7/widget/c$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    invoke-static {v0}, Landroid/support/v7/widget/c;->d(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    invoke-static {v0}, Landroid/support/v7/widget/c;->e(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->f()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    invoke-static {v0}, Landroid/support/v7/widget/c;->f(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/n;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/c$c;->b:Landroid/support/v7/widget/c$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/c$e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    iget-object v1, p0, Landroid/support/v7/widget/c$c;->b:Landroid/support/v7/widget/c$e;

    iput-object v1, v0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$e;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/c$c;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/c;->j:Landroid/support/v7/widget/c$c;

    return-void
.end method
