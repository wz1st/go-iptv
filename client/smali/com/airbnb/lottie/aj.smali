.class public Lcom/airbnb/lottie/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/aj$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/al;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v4/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Rect;

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:F


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJIF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aj;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aj;->b:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/e/h;

    invoke-direct {v0}, Landroid/support/v4/e/h;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aj;->c:Landroid/support/v4/e/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aj;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/airbnb/lottie/aj;->e:Landroid/graphics/Rect;

    iput-wide p2, p0, Lcom/airbnb/lottie/aj;->f:J

    iput-wide p4, p0, Lcom/airbnb/lottie/aj;->g:J

    iput p6, p0, Lcom/airbnb/lottie/aj;->h:I

    iput p7, p0, Lcom/airbnb/lottie/aj;->i:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJIFLcom/airbnb/lottie/aj$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/aj;-><init>(Landroid/graphics/Rect;JJIF)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/aj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/airbnb/lottie/aj;)Landroid/support/v4/e/h;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->c:Landroid/support/v4/e/h;

    return-object v0
.end method

.method static synthetic c(Lcom/airbnb/lottie/aj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/airbnb/lottie/aj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method a(J)Lcom/airbnb/lottie/ah;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->c:Landroid/support/v4/e/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/h;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ah;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/airbnb/lottie/aj;->g:J

    iget-wide v2, p0, Lcom/airbnb/lottie/aj;->f:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/aj;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method c()J
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/lottie/aj;->g:J

    return-wide v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->d:Ljava/util/List;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/al;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->b:Ljava/util/Map;

    return-object v0
.end method

.method g()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/aj;->b()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/aj;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/aj;->i:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LottieComposition:\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/aj;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ah;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
