.class Lcom/airbnb/lottie/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/t;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/t;->b:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/t;->c:Landroid/graphics/PointF;

    return-void
.end method

.method constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/t;->a:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/airbnb/lottie/t;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/airbnb/lottie/t;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->a:Landroid/graphics/PointF;

    return-object v0
.end method

.method a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method b()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method c()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method c(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/t;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
