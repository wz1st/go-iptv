.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ac:Lcom/scwang/smartrefresh/layout/f/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ac:Lcom/scwang/smartrefresh/layout/f/b;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/f/b;->a(Lcom/scwang/smartrefresh/layout/a/i;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/f/b;->a(Lcom/scwang/smartrefresh/layout/a/i;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(I)Lcom/scwang/smartrefresh/layout/a/i;

    goto :goto_0
.end method
