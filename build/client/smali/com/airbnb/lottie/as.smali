.class Lcom/airbnb/lottie/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/k$a;


# annotations
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
.field static final a:Lcom/airbnb/lottie/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/as;

    invoke-direct {v0}, Lcom/airbnb/lottie/as;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/as;->a:Lcom/airbnb/lottie/as;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 3

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse point from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/as;->a(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
