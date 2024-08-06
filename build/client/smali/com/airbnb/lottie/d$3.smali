.class Lcom/airbnb/lottie/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/d;
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
        "Lcom/airbnb/lottie/ba;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/d;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/d;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/d$3;->a:Lcom/airbnb/lottie/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/ba;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/d$3;->a:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/ba;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d$3;->a(Lcom/airbnb/lottie/ba;)V

    return-void
.end method
