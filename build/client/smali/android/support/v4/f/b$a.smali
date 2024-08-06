.class final Landroid/support/v4/f/b$a;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/f/b;


# direct methods
.method constructor <init>(Landroid/support/v4/f/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/b;->a(Landroid/view/View;)Landroid/support/v4/f/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/f/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-static {p2}, Landroid/support/v4/f/a/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/f/a/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/f/b;->a(Landroid/view/View;Landroid/support/v4/f/a/b;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/f/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/f/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/b;->a(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/b$a;->a:Landroid/support/v4/f/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
