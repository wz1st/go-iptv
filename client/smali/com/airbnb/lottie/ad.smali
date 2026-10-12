.class final Lcom/airbnb/lottie/ad;
.super Lcom/airbnb/lottie/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/s",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/airbnb/lottie/ap;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/ap;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/s;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/ad;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/airbnb/lottie/ad;->b:Lcom/airbnb/lottie/ap;

    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/json/JSONObject;)Lcom/airbnb/lottie/aj;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ad;->a:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/aj$a;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/aj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/airbnb/lottie/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ad;->b:Lcom/airbnb/lottie/ap;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/ap;->a(Lcom/airbnb/lottie/aj;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ad;->a([Lorg/json/JSONObject;)Lcom/airbnb/lottie/aj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/aj;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ad;->a(Lcom/airbnb/lottie/aj;)V

    return-void
.end method
