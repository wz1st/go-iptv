.class public Lcom/eztv/powerful/widget/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/eztv/powerful/widget/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/b/a;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/b/a;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->c:Ljava/lang/Long;

    return-void
.end method

.method private d()Ljava/lang/Long;
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/b/a;)I
    .locals 2

    invoke-virtual {p1}, Lcom/eztv/powerful/widget/a/b/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eztv/powerful/widget/a/b/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {p0, p1}, Lcom/eztv/powerful/widget/a/b/a;->a(Lcom/eztv/powerful/widget/a/b/a;)I

    move-result v0

    return v0
.end method
