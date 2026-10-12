.class Landroid/support/v17/leanback/widget/SearchBar$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v4, 0x1f4

    const/4 v1, 0x3

    if-eq v1, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->b:Landroid/support/v17/leanback/widget/SearchBar$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->a()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->f:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v0

    :cond_1
    if-ne v0, p2, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->b:Landroid/support/v17/leanback/widget/SearchBar$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->a()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->f:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$2;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->a()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->f:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$3;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
