.class Landroid/support/v4/f/a/c$b;
.super Landroid/support/v4/f/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/f/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/f/a/c$a;-><init>(Landroid/support/v4/f/a/c;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/a/c$b;->a:Landroid/support/v4/f/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a/c;->b(I)Landroid/support/v4/f/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/f/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method
