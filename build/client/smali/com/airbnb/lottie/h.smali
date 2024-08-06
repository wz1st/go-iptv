.class Lcom/airbnb/lottie/h;
.super Lcom/airbnb/lottie/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/m",
        "<",
        "Lcom/airbnb/lottie/bb;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<",
            "Lcom/airbnb/lottie/bb;",
            ">;>;",
            "Lcom/airbnb/lottie/aj;",
            "Lcom/airbnb/lottie/bb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->d:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/bb;Lcom/airbnb/lottie/h$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/h;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/bb;)V

    return-void
.end method


# virtual methods
.method a(Lcom/airbnb/lottie/bb;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/h;->d:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/airbnb/lottie/ao;->a(Lcom/airbnb/lottie/bb;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/h;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/airbnb/lottie/bb;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->a(Lcom/airbnb/lottie/bb;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/airbnb/lottie/bl;

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/bb;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/h;->a(Lcom/airbnb/lottie/bb;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/be;

    iget-object v1, p0, Lcom/airbnb/lottie/h;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/be;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
