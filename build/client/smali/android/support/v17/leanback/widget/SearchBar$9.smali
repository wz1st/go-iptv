.class Landroid/support/v17/leanback/widget/SearchBar$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->b()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchEditText;->requestFocusFromTouch()Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v8, v0, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/SearchEditText;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/SearchEditText;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/support/v17/leanback/widget/SearchEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->a:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->c:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getHeight()I

    move-result v1

    int-to-float v12, v1

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
