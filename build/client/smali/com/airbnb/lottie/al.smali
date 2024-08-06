.class public Lcom/airbnb/lottie/al;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/al$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/al;->a:I

    iput p2, p0, Lcom/airbnb/lottie/al;->b:I

    iput-object p3, p0, Lcom/airbnb/lottie/al;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/al;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/airbnb/lottie/al$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/al;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/al;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/al;->d:Ljava/lang/String;

    return-object v0
.end method
