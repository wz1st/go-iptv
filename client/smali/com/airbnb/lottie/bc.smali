.class Lcom/airbnb/lottie/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/bc$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/airbnb/lottie/a;

.field private final c:Lcom/airbnb/lottie/c;


# direct methods
.method private constructor <init>(ZLcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/airbnb/lottie/bc;->a:Z

    iput-object p2, p0, Lcom/airbnb/lottie/bc;->b:Lcom/airbnb/lottie/a;

    iput-object p3, p0, Lcom/airbnb/lottie/bc;->c:Lcom/airbnb/lottie/c;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;Lcom/airbnb/lottie/bc$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/bc;-><init>(ZLcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/a;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bc;->b:Lcom/airbnb/lottie/a;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bc;->c:Lcom/airbnb/lottie/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/lottie/bc;->b:Lcom/airbnb/lottie/a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/bc;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/bc;->c:Lcom/airbnb/lottie/c;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
