.class public Lcom/k/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/k/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3}, Lcom/k/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "NO_TAG"

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
