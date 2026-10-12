.class final enum Lcom/airbnb/lottie/am$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/am$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/am$b;

.field public static final enum b:Lcom/airbnb/lottie/am$b;

.field public static final enum c:Lcom/airbnb/lottie/am$b;

.field public static final enum d:Lcom/airbnb/lottie/am$b;

.field private static final synthetic e:[Lcom/airbnb/lottie/am$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/airbnb/lottie/am$b;

    const-string v1, "MaskModeAdd"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/am$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/am$b;->a:Lcom/airbnb/lottie/am$b;

    new-instance v0, Lcom/airbnb/lottie/am$b;

    const-string v1, "MaskModeSubtract"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/am$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/am$b;->b:Lcom/airbnb/lottie/am$b;

    new-instance v0, Lcom/airbnb/lottie/am$b;

    const-string v1, "MaskModeIntersect"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/am$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/am$b;->c:Lcom/airbnb/lottie/am$b;

    new-instance v0, Lcom/airbnb/lottie/am$b;

    const-string v1, "MaskModeUnknown"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/am$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/am$b;->d:Lcom/airbnb/lottie/am$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/lottie/am$b;

    sget-object v1, Lcom/airbnb/lottie/am$b;->a:Lcom/airbnb/lottie/am$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/am$b;->b:Lcom/airbnb/lottie/am$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/am$b;->c:Lcom/airbnb/lottie/am$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/lottie/am$b;->d:Lcom/airbnb/lottie/am$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/lottie/am$b;->e:[Lcom/airbnb/lottie/am$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/am$b;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/am$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/am$b;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/am$b;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/am$b;->e:[Lcom/airbnb/lottie/am$b;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/am$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/am$b;

    return-object v0
.end method
