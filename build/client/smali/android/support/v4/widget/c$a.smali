.class Landroid/support/v4/widget/c$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/c;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/c;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/c$a;->a:Landroid/support/v4/widget/c;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/c$a;->a:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->b()V

    return-void
.end method
