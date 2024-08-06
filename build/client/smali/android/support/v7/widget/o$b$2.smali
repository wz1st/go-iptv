.class Landroid/support/v7/widget/o$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/o$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/o$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/o$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    iget-object v1, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    iget-object v1, v1, Landroid/support/v7/widget/o$b;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/o$b;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/o$b;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/o$b;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/o$b$2;->a:Landroid/support/v7/widget/o$b;

    invoke-static {v0}, Landroid/support/v7/widget/o$b;->a(Landroid/support/v7/widget/o$b;)V

    goto :goto_0
.end method
