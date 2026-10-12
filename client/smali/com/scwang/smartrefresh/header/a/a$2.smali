.class Lcom/scwang/smartrefresh/header/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/a/a$2;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a$a;->d()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a$a;->b()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$2;->a:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v1, v1, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iput v1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/header/a/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    iput-boolean v2, v0, Lcom/scwang/smartrefresh/header/a/a;->c:Z

    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/header/a/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    iget v1, v1, Lcom/scwang/smartrefresh/header/a/a;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/header/a/a;->b:F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$2;->b:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smartrefresh/header/a/a;->b:F

    return-void
.end method
