.class Lcom/airbnb/lottie/ai$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/ai;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/n$a",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/ai;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/ai$1;->a:Lcom/airbnb/lottie/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/lottie/ai$1;->a:Lcom/airbnb/lottie/ai;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/airbnb/lottie/ai;->setVisible(ZZ)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ai$1;->a(Ljava/lang/Float;)V

    return-void
.end method
