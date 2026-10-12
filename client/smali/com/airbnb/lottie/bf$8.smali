.class Lcom/airbnb/lottie/bf$8;
.super Landroid/graphics/Paint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/bf;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/bf;I)V
    .locals 1

    iput-object p1, p0, Lcom/airbnb/lottie/bf$8;->a:Lcom/airbnb/lottie/bf;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/bf$8;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
