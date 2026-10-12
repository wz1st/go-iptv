.class final enum Lcom/airbnb/lottie/ah$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/ah$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/ah$b;

.field public static final enum b:Lcom/airbnb/lottie/ah$b;

.field public static final enum c:Lcom/airbnb/lottie/ah$b;

.field public static final enum d:Lcom/airbnb/lottie/ah$b;

.field public static final enum e:Lcom/airbnb/lottie/ah$b;

.field public static final enum f:Lcom/airbnb/lottie/ah$b;

.field public static final enum g:Lcom/airbnb/lottie/ah$b;

.field private static final synthetic h:[Lcom/airbnb/lottie/ah$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "PreComp"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->a:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Solid"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->b:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Image"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->c:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Null"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->d:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Shape"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->e:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Text"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->f:Lcom/airbnb/lottie/ah$b;

    new-instance v0, Lcom/airbnb/lottie/ah$b;

    const-string v1, "Unknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ah$b;->g:Lcom/airbnb/lottie/ah$b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/airbnb/lottie/ah$b;

    sget-object v1, Lcom/airbnb/lottie/ah$b;->a:Lcom/airbnb/lottie/ah$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/ah$b;->b:Lcom/airbnb/lottie/ah$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/lottie/ah$b;->c:Lcom/airbnb/lottie/ah$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/lottie/ah$b;->d:Lcom/airbnb/lottie/ah$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/lottie/ah$b;->e:Lcom/airbnb/lottie/ah$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/lottie/ah$b;->f:Lcom/airbnb/lottie/ah$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/lottie/ah$b;->g:Lcom/airbnb/lottie/ah$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/lottie/ah$b;->h:[Lcom/airbnb/lottie/ah$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/ah$b;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/ah$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ah$b;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/ah$b;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/ah$b;->h:[Lcom/airbnb/lottie/ah$b;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/ah$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/ah$b;

    return-object v0
.end method
