.class public Lcom/eztv/powerful/widget/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/eztv/powerful/widget/a/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/Long;

.field private i:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/eztv/powerful/widget/a/b/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eztv/powerful/widget/a/b/b;->g:J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->h:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eztv/powerful/widget/a/b/b;->i:J

    iput p1, p0, Lcom/eztv/powerful/widget/a/b/b;->a:I

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/eztv/powerful/widget/a/b/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/eztv/powerful/widget/a/b/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/eztv/powerful/widget/a/b/b;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/eztv/powerful/widget/a/b/b;->g:J

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->h:Ljava/lang/Long;

    iput-wide p10, p0, Lcom/eztv/powerful/widget/a/b/b;->i:J

    iput-object p12, p0, Lcom/eztv/powerful/widget/a/b/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/b/b;)I
    .locals 2

    invoke-virtual {p1}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {p0, p1}, Lcom/eztv/powerful/widget/a/b/b;->a(Lcom/eztv/powerful/widget/a/b/b;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/b/b;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/eztv/powerful/widget/a/b/b;->i:J

    return-wide v0
.end method
