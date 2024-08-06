.class public abstract Landroid/support/v7/widget/RecyclerView$t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$t$b;,
        Landroid/support/v7/widget/RecyclerView$t$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView$i;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/RecyclerView$t$a;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    new-instance v0, Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$t$a;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->j()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$t$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$t$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$t$b;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/support/v7/widget/RecyclerView$t$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method a(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->k()V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$t;->a(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    :cond_2
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$t$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->k()V

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$t;->a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$t$a;->a()Z

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$t$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->k()V

    goto :goto_1
.end method

.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float v0, v1, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$i;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is intended to only be used once. You should create a new instance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$u;->a:I

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$t;->e(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->g()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->h:Z

    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->n()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract g()V
.end method

.method public j()Landroid/support/v7/widget/RecyclerView$i;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v7/widget/RecyclerView$i;

    return-object v0
.end method

.method protected final k()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$u;->a:I

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$t;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v7/widget/RecyclerView$i;

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->N()I

    move-result v0

    return v0
.end method
