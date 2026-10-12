.class final enum Lcom/airbnb/lottie/av$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/av$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/av$b;

.field public static final enum b:Lcom/airbnb/lottie/av$b;

.field private static final synthetic d:[Lcom/airbnb/lottie/av$b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/airbnb/lottie/av$b;

    const-string v1, "Star"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/lottie/av$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/lottie/av$b;->a:Lcom/airbnb/lottie/av$b;

    new-instance v0, Lcom/airbnb/lottie/av$b;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, v2, v4}, Lcom/airbnb/lottie/av$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/lottie/av$b;->b:Lcom/airbnb/lottie/av$b;

    new-array v0, v4, [Lcom/airbnb/lottie/av$b;

    sget-object v1, Lcom/airbnb/lottie/av$b;->a:Lcom/airbnb/lottie/av$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/av$b;->b:Lcom/airbnb/lottie/av$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/airbnb/lottie/av$b;->d:[Lcom/airbnb/lottie/av$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/airbnb/lottie/av$b;->c:I

    return-void
.end method

.method static a(I)Lcom/airbnb/lottie/av$b;
    .locals 5

    invoke-static {}, Lcom/airbnb/lottie/av$b;->values()[Lcom/airbnb/lottie/av$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/airbnb/lottie/av$b;->c:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/av$b;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/av$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/av$b;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/av$b;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/av$b;->d:[Lcom/airbnb/lottie/av$b;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/av$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/av$b;

    return-object v0
.end method
