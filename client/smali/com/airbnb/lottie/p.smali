.class Lcom/airbnb/lottie/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/z;

.field private final b:Lcom/airbnb/lottie/f;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/p;->a:Lcom/airbnb/lottie/z;

    iput-object p2, p0, Lcom/airbnb/lottie/p;->b:Lcom/airbnb/lottie/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/p$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/p;-><init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/z;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/p;->a:Lcom/airbnb/lottie/z;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/p;->b:Lcom/airbnb/lottie/f;

    return-object v0
.end method
