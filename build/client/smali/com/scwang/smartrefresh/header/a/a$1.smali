.class Lcom/scwang/smartrefresh/header/a/a$1;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/header/a/a$a;

.field final synthetic b:Lcom/scwang/smartrefresh/header/a/a;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/a/a;Lcom/scwang/smartrefresh/header/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/header/a/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0, p1, v1}, Lcom/scwang/smartrefresh/header/a/a;->b(FLcom/scwang/smartrefresh/header/a/a$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a;->a(Lcom/scwang/smartrefresh/header/a/a$a;)F

    move-result v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v1, v1, Lcom/scwang/smartrefresh/header/a/a$a;->l:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v2, v2, Lcom/scwang/smartrefresh/header/a/a$a;->k:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v3, v3, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    iget-object v4, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v4, p1, v5}, Lcom/scwang/smartrefresh/header/a/a;->a(FLcom/scwang/smartrefresh/header/a/a$a;)V

    cmpg-float v4, p1, v8

    if-gtz v4, :cond_1

    div-float v4, p1, v8

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    sub-float v6, v9, v0

    sget-object v7, Lcom/scwang/smartrefresh/header/a/a;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    iput v2, v5, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    :cond_1
    cmpl-float v2, p1, v8

    if-lez v2, :cond_2

    sub-float v0, v9, v0

    sub-float v2, p1, v8

    div-float/2addr v2, v8

    iget-object v4, p0, Lcom/scwang/smartrefresh/header/a/a$1;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    sget-object v5, Lcom/scwang/smartrefresh/header/a/a;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, v4, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a;->b(F)V

    const/high16 v0, 0x43580000    # 216.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44870000    # 1080.0f

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget v2, v2, Lcom/scwang/smartrefresh/header/a/a;->b:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$1;->b:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/header/a/a;->c(F)V

    goto :goto_0
.end method
