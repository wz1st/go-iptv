.class Lcom/airbnb/lottie/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/k$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/airbnb/lottie/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/q;

    invoke-direct {v0}, Lcom/airbnb/lottie/q;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/q;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/high16 v0, 0x437f0000    # 255.0f

    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v2, v1, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/q;->a(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
