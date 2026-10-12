.class Lcom/airbnb/lottie/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/e;

.field private final b:Lcom/airbnb/lottie/z;

.field private final c:Lcom/airbnb/lottie/g;

.field private final d:Lcom/airbnb/lottie/b;

.field private final e:Lcom/airbnb/lottie/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/e;

    iput-object p2, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/z;

    iput-object p3, p0, Lcom/airbnb/lottie/j;->c:Lcom/airbnb/lottie/g;

    iput-object p4, p0, Lcom/airbnb/lottie/j;->d:Lcom/airbnb/lottie/b;

    iput-object p5, p0, Lcom/airbnb/lottie/j;->e:Lcom/airbnb/lottie/c;

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/e;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/e;

    return-object v0
.end method

.method b()Lcom/airbnb/lottie/z;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/z;

    return-object v0
.end method

.method c()Lcom/airbnb/lottie/g;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lcom/airbnb/lottie/g;

    return-object v0
.end method

.method d()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/j;->d:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method e()Lcom/airbnb/lottie/c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/j;->e:Lcom/airbnb/lottie/c;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/bm;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/bm;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/bm;-><init>(Lcom/airbnb/lottie/j;)V

    return-object v0
.end method
