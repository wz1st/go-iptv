.class Lcom/airbnb/lottie/a;
.super Lcom/airbnb/lottie/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/m",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/airbnb/lottie/aj;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Integer;Lcom/airbnb/lottie/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/a;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Integer;)V

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/bl;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->c:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/r;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/r;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic b()Lcom/airbnb/lottie/n;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableColorValue{initialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
