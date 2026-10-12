.class Lcom/airbnb/lottie/az;
.super Lcom/airbnb/lottie/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/ag",
        "<",
        "Lcom/airbnb/lottie/ba;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/ba;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ag;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/airbnb/lottie/af;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/az;->b(Lcom/airbnb/lottie/af;F)Lcom/airbnb/lottie/ba;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/airbnb/lottie/af;F)Lcom/airbnb/lottie/ba;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/ba;",
            ">;F)",
            "Lcom/airbnb/lottie/ba;"
        }
    .end annotation

    iget-object v0, p1, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ba;

    iget-object v1, p1, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ba;

    new-instance v2, Lcom/airbnb/lottie/ba;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->a()F

    move-result v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/ba;->a()F

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->b()F

    move-result v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/ba;->b()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/ao;->a(FFF)F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/airbnb/lottie/ba;-><init>(FF)V

    return-object v2
.end method
