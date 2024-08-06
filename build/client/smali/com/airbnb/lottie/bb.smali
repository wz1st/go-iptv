.class Lcom/airbnb/lottie/bb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/bb$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/t;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/airbnb/lottie/bb;->c:Z

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/bb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/bb;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method a(Lcom/airbnb/lottie/bb;Lcom/airbnb/lottie/bb;F)V
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bb;->b:Landroid/graphics/PointF;

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/airbnb/lottie/bb;->c:Z

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curves must have the same number of control points. This: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tShape 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tShape 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    new-instance v2, Lcom/airbnb/lottie/t;

    invoke-direct {v2}, Lcom/airbnb/lottie/t;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->a()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/bb;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/airbnb/lottie/bb;->a(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    invoke-virtual {p1}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/t;

    invoke-virtual {p2}, Lcom/airbnb/lottie/bb;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/t;

    invoke-virtual {v0}, Lcom/airbnb/lottie/t;->a()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/t;->b()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/t;->c()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v1}, Lcom/airbnb/lottie/t;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1}, Lcom/airbnb/lottie/t;->b()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v1}, Lcom/airbnb/lottie/t;->c()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/t;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v9, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v3

    invoke-virtual {v0, v8, v3}, Lcom/airbnb/lottie/t;->a(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/t;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/airbnb/lottie/t;->b(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/t;

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v3

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v1, p3}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/airbnb/lottie/t;->c(FF)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/bb;->c:Z

    return v0
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/bb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/bb;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
