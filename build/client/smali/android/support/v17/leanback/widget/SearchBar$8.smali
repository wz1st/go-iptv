.class Landroid/support/v17/leanback/widget/SearchBar$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->a()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->e()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/SearchBar;->g:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/SearchBar;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->d()V

    goto :goto_0
.end method
