.class Lcom/airbnb/lottie/ay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ay$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/z;

.field private final b:Lcom/airbnb/lottie/f;

.field private final c:Lcom/airbnb/lottie/b;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/ay;->a:Lcom/airbnb/lottie/z;

    iput-object p2, p0, Lcom/airbnb/lottie/ay;->b:Lcom/airbnb/lottie/f;

    iput-object p3, p0, Lcom/airbnb/lottie/ay;->c:Lcom/airbnb/lottie/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/ay$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/ay;-><init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/b;)V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ay;->c:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method b()Lcom/airbnb/lottie/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ay;->b:Lcom/airbnb/lottie/f;

    return-object v0
.end method

.method c()Lcom/airbnb/lottie/z;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ay;->a:Lcom/airbnb/lottie/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ay;->c:Lcom/airbnb/lottie/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/b;->c()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ay;->a:Lcom/airbnb/lottie/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ay;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
