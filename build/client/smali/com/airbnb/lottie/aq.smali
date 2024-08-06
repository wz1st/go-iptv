.class Lcom/airbnb/lottie/aq;
.super Lcom/airbnb/lottie/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/aq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/af",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/aj;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/af;-><init>(Lcom/airbnb/lottie/aj;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/aj;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/aq$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/aq;-><init>(Lcom/airbnb/lottie/aj;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/aq;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/aq;->f:Landroid/graphics/Path;

    return-object p1
.end method


# virtual methods
.method e()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aq;->f:Landroid/graphics/Path;

    return-object v0
.end method
