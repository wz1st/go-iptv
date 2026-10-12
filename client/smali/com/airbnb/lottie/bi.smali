.class Lcom/airbnb/lottie/bi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/bi$a;,
        Lcom/airbnb/lottie/bi$c;,
        Lcom/airbnb/lottie/bi$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/a;

.field private final d:Lcom/airbnb/lottie/c;

.field private final e:Lcom/airbnb/lottie/b;

.field private final f:Lcom/airbnb/lottie/bi$b;

.field private final g:Lcom/airbnb/lottie/bi$c;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/b;Ljava/util/List;Lcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/bi$b;Lcom/airbnb/lottie/bi$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/b;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/b;",
            ">;",
            "Lcom/airbnb/lottie/a;",
            "Lcom/airbnb/lottie/c;",
            "Lcom/airbnb/lottie/b;",
            "Lcom/airbnb/lottie/bi$b;",
            "Lcom/airbnb/lottie/bi$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/bi;->a:Lcom/airbnb/lottie/b;

    iput-object p2, p0, Lcom/airbnb/lottie/bi;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/airbnb/lottie/bi;->c:Lcom/airbnb/lottie/a;

    iput-object p4, p0, Lcom/airbnb/lottie/bi;->d:Lcom/airbnb/lottie/c;

    iput-object p5, p0, Lcom/airbnb/lottie/bi;->e:Lcom/airbnb/lottie/b;

    iput-object p6, p0, Lcom/airbnb/lottie/bi;->f:Lcom/airbnb/lottie/bi$b;

    iput-object p7, p0, Lcom/airbnb/lottie/bi;->g:Lcom/airbnb/lottie/bi$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/b;Ljava/util/List;Lcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/bi$b;Lcom/airbnb/lottie/bi$c;Lcom/airbnb/lottie/bi$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/bi;-><init>(Lcom/airbnb/lottie/b;Ljava/util/List;Lcom/airbnb/lottie/a;Lcom/airbnb/lottie/c;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/bi$b;Lcom/airbnb/lottie/bi$c;)V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/a;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->c:Lcom/airbnb/lottie/a;

    return-object v0
.end method

.method b()Lcom/airbnb/lottie/c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->d:Lcom/airbnb/lottie/c;

    return-object v0
.end method

.method c()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->e:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->b:Ljava/util/List;

    return-object v0
.end method

.method e()Lcom/airbnb/lottie/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->a:Lcom/airbnb/lottie/b;

    return-object v0
.end method

.method f()Lcom/airbnb/lottie/bi$b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->f:Lcom/airbnb/lottie/bi$b;

    return-object v0
.end method

.method g()Lcom/airbnb/lottie/bi$c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/bi;->g:Lcom/airbnb/lottie/bi$c;

    return-object v0
.end method
