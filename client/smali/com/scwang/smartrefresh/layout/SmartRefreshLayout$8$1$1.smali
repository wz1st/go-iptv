.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e(Z)Lcom/scwang/smartrefresh/layout/a/i;

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->p:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0
.end method
