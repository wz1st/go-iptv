.class Landroid/support/v4/b/b$a;
.super Landroid/support/v4/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/b;


# direct methods
.method constructor <init>(Landroid/support/v4/b/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/b$a;->a:Landroid/support/v4/b/b;

    invoke-direct {p0}, Landroid/support/v4/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/b$a;->a:Landroid/support/v4/b/b;

    iget-object v0, v0, Landroid/support/v4/b/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/b$a;->a:Landroid/support/v4/b/b;

    iget-object v0, v0, Landroid/support/v4/b/b;->b:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/b/b$b;

    iget-object v2, p0, Landroid/support/v4/b/b$a;->a:Landroid/support/v4/b/b;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/b/b$b;-><init>(Landroid/support/v4/b/b;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/b$a;->a:Landroid/support/v4/b/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/b;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
