.class Lcom/airbnb/lottie/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k$a",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/airbnb/lottie/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/k$a",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/e$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/e$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e$a;->a:Lcom/airbnb/lottie/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/airbnb/lottie/k$a;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/e$a;->a:Lcom/airbnb/lottie/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 1

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/e$a;->a(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
