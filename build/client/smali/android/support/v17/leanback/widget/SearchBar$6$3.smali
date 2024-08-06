.class Landroid/support/v17/leanback/widget/SearchBar$6$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar$6;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/SearchBar$6;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->a:Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->a:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/SearchBar;->g:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->a:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->d:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->requestFocus()Z

    return-void
.end method
