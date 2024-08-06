.class public Lcom/k/a/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Lcom/k/a/d;

.field e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/k/a/h$a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/k/a/h$a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/k/a/h$a;->c:Z

    const-string v0, "PRETTY_LOGGER"

    iput-object v0, p0, Lcom/k/a/h$a;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/k/a/h$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/k/a/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/k/a/h;
    .locals 2

    iget-object v0, p0, Lcom/k/a/h$a;->d:Lcom/k/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/k/a/e;

    invoke-direct {v0}, Lcom/k/a/e;-><init>()V

    iput-object v0, p0, Lcom/k/a/h$a;->d:Lcom/k/a/d;

    :cond_0
    new-instance v0, Lcom/k/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/k/a/h;-><init>(Lcom/k/a/h$a;Lcom/k/a/h$1;)V

    return-object v0
.end method
