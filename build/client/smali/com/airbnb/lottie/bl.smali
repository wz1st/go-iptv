.class Lcom/airbnb/lottie/bl;
.super Lcom/airbnb/lottie/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/ag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/ag;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/bl;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/af;F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/af",
            "<TT;>;F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bl;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bl;->c:Ljava/lang/Object;

    return-object v0
.end method
