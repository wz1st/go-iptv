.class Lcom/airbnb/lottie/bm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Lcom/airbnb/lottie/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->a()Lcom/airbnb/lottie/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->b()Lcom/airbnb/lottie/n;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/bm;->a:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->b()Lcom/airbnb/lottie/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/z;->b()Lcom/airbnb/lottie/n;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/bm;->b:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->c()Lcom/airbnb/lottie/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/bm;->c:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->d()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/bm;->d:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->e()Lcom/airbnb/lottie/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/bm;->e:Lcom/airbnb/lottie/n;

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bm;->a:Lcom/airbnb/lottie/n;

    return-object v0
.end method

.method b()Lcom/airbnb/lottie/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bm;->b:Lcom/airbnb/lottie/n;

    return-object v0
.end method

.method c()Lcom/airbnb/lottie/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Lcom/airbnb/lottie/ba;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bm;->c:Lcom/airbnb/lottie/n;

    return-object v0
.end method

.method d()Lcom/airbnb/lottie/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bm;->d:Lcom/airbnb/lottie/n;

    return-object v0
.end method

.method e()Lcom/airbnb/lottie/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bm;->e:Lcom/airbnb/lottie/n;

    return-object v0
.end method
