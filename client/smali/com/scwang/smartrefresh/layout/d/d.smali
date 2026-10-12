.class public Lcom/scwang/smartrefresh/layout/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/j;


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:Lcom/scwang/smartrefresh/layout/a/j;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->b:Lcom/scwang/smartrefresh/layout/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->b:Lcom/scwang/smartrefresh/layout/a/j;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/j;->a(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->a:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->b:Lcom/scwang/smartrefresh/layout/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->b:Lcom/scwang/smartrefresh/layout/a/j;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/j;->b(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/d;->a:Landroid/graphics/PointF;

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/d/d;->c:Z

    invoke-static {p1, v0, v1}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result v0

    goto :goto_0
.end method
