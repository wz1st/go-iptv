.class Lcom/airbnb/lottie/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/z;


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Lcom/airbnb/lottie/b;

.field private final c:Lcom/airbnb/lottie/b;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i;->a:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/b;

    iput-object p2, p0, Lcom/airbnb/lottie/i;->c:Lcom/airbnb/lottie/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/bk;

    iget-object v1, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/i;->c:Lcom/airbnb/lottie/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/bk;-><init>(Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;)V

    return-object v0
.end method

.method public synthetic b()Lcom/airbnb/lottie/n;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/i;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    return-object v0
.end method
