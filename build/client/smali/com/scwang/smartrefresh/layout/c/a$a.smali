.class public Lcom/scwang/smartrefresh/layout/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field a:B

.field final synthetic b:Lcom/scwang/smartrefresh/layout/c/a;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/c/a;B)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p2, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-byte v0, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/c/a;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/scwang/smartrefresh/layout/c/a;->m:F

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/scwang/smartrefresh/layout/c/a;->p:F

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->a:B

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a$a;->b:Lcom/scwang/smartrefresh/layout/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/scwang/smartrefresh/layout/c/a;->q:I

    goto :goto_0
.end method
