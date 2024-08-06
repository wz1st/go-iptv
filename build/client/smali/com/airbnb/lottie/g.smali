.class Lcom/airbnb/lottie/g;
.super Lcom/airbnb/lottie/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/m",
        "<",
        "Lcom/airbnb/lottie/ba;",
        "Lcom/airbnb/lottie/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/aj;)V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/ba;

    invoke-direct {v0}, Lcom/airbnb/lottie/ba;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/m;-><init>(Lcom/airbnb/lottie/aj;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/g;-><init>(Lcom/airbnb/lottie/aj;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/ba;",
            ">;>;",
            "Lcom/airbnb/lottie/aj;",
            "Lcom/airbnb/lottie/ba;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/ba;Lcom/airbnb/lottie/g$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/g;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/ba;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Lcom/airbnb/lottie/ba;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/bl;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->c:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/az;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/az;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic b()Lcom/airbnb/lottie/n;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    return-object v0
.end method
