.class Lcom/airbnb/lottie/be;
.super Lcom/airbnb/lottie/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/n",
        "<",
        "Lcom/airbnb/lottie/bb;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/airbnb/lottie/bb;

.field private final d:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/bb;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/airbnb/lottie/bb;

    invoke-direct {v0}, Lcom/airbnb/lottie/bb;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/be;->c:Lcom/airbnb/lottie/bb;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/be;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/airbnb/lottie/af;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/be;->b(Lcom/airbnb/lottie/af;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/airbnb/lottie/af;F)Landroid/graphics/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/bb;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/bb;

    iget-object v1, p1, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/bb;

    iget-object v2, p0, Lcom/airbnb/lottie/be;->c:Lcom/airbnb/lottie/bb;

    invoke-virtual {v2, v0, v1, p2}, Lcom/airbnb/lottie/bb;->a(Lcom/airbnb/lottie/bb;Lcom/airbnb/lottie/bb;F)V

    iget-object v0, p0, Lcom/airbnb/lottie/be;->c:Lcom/airbnb/lottie/bb;

    iget-object v1, p0, Lcom/airbnb/lottie/be;->d:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/ao;->a(Lcom/airbnb/lottie/bb;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/be;->d:Landroid/graphics/Path;

    return-object v0
.end method
