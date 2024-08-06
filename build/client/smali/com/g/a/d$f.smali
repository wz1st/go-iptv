.class final Lcom/g/a/d$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/g/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/g/a/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/g/a/d$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/g/a/d$f;

    invoke-direct {v0}, Lcom/g/a/d$f;-><init>()V

    sput-object v0, Lcom/g/a/d$f;->a:Lcom/g/a/d$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/d$e;Lcom/g/a/d$e;)I
    .locals 4

    iget-wide v0, p1, Lcom/g/a/d$e;->b:J

    iget-wide v2, p2, Lcom/g/a/d$e;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/g/a/d$e;->b:J

    iget-wide v2, p2, Lcom/g/a/d$e;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/g/a/d$e;

    check-cast p2, Lcom/g/a/d$e;

    invoke-virtual {p0, p1, p2}, Lcom/g/a/d$f;->a(Lcom/g/a/d$e;Lcom/g/a/d$e;)I

    move-result v0

    return v0
.end method
