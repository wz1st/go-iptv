.class Lcom/airbnb/lottie/bj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/bj$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/b;

.field private final b:Lcom/airbnb/lottie/b;

.field private final c:Lcom/airbnb/lottie/b;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/bj;->a:Lcom/airbnb/lottie/b;

    iput-object p2, p0, Lcom/airbnb/lottie/bj;->b:Lcom/airbnb/lottie/b;

    iput-object p3, p0, Lcom/airbnb/lottie/bj;->c:Lcom/airbnb/lottie/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/bj$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/bj;-><init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;)V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bj;->b:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method b()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bj;->a:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method c()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bj;->c:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/bj;->a:Lcom/airbnb/lottie/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/bj;->b:Lcom/airbnb/lottie/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/bj;->c:Lcom/airbnb/lottie/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
