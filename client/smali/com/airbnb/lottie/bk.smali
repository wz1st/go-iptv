.class Lcom/airbnb/lottie/bk;
.super Lcom/airbnb/lottie/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/ag",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/PointF;

.field private final d:Lcom/airbnb/lottie/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/ag",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/airbnb/lottie/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/ag",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/ag;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bk;->c:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/bk;->d:Lcom/airbnb/lottie/ag;

    iput-object p2, p0, Lcom/airbnb/lottie/bk;->e:Lcom/airbnb/lottie/ag;

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/airbnb/lottie/af;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/bk;->b(Lcom/airbnb/lottie/af;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->d:Lcom/airbnb/lottie/ag;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ag;->a(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->e:Lcom/airbnb/lottie/ag;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ag;->a(F)V

    iget-object v1, p0, Lcom/airbnb/lottie/bk;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->d:Lcom/airbnb/lottie/ag;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ag;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->e:Lcom/airbnb/lottie/ag;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ag;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/bk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n$a;

    iget-object v2, p0, Lcom/airbnb/lottie/bk;->c:Landroid/graphics/PointF;

    invoke-interface {v0, v2}, Lcom/airbnb/lottie/n$a;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Lcom/airbnb/lottie/af;F)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/af",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bk;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/bk;->c()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/bk;->b(Lcom/airbnb/lottie/af;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
