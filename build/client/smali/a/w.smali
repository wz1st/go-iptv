.class public final La/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/w$a;
    }
.end annotation


# instance fields
.field private final a:La/r;

.field private final b:Ljava/lang/String;

.field private final c:La/q;

.field private final d:La/x;

.field private final e:Ljava/lang/Object;

.field private volatile f:La/d;


# direct methods
.method private constructor <init>(La/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/w$a;->a(La/w$a;)La/r;

    move-result-object v0

    iput-object v0, p0, La/w;->a:La/r;

    invoke-static {p1}, La/w$a;->b(La/w$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/w;->b:Ljava/lang/String;

    invoke-static {p1}, La/w$a;->c(La/w$a;)La/q$a;

    move-result-object v0

    invoke-virtual {v0}, La/q$a;->a()La/q;

    move-result-object v0

    iput-object v0, p0, La/w;->c:La/q;

    invoke-static {p1}, La/w$a;->d(La/w$a;)La/x;

    move-result-object v0

    iput-object v0, p0, La/w;->d:La/x;

    invoke-static {p1}, La/w$a;->e(La/w$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La/w$a;->e(La/w$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/w;->e:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method synthetic constructor <init>(La/w$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/w;-><init>(La/w$a;)V

    return-void
.end method

.method static synthetic a(La/w;)La/r;
    .locals 1

    iget-object v0, p0, La/w;->a:La/r;

    return-object v0
.end method

.method static synthetic b(La/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(La/w;)La/x;
    .locals 1

    iget-object v0, p0, La/w;->d:La/x;

    return-object v0
.end method

.method static synthetic d(La/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/w;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(La/w;)La/q;
    .locals 1

    iget-object v0, p0, La/w;->c:La/q;

    return-object v0
.end method


# virtual methods
.method public final a()La/x;
    .locals 1

    iget-object v0, p0, La/w;->d:La/x;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/w;->c:La/q;

    invoke-virtual {v0, p1}, La/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()La/d;
    .locals 1

    iget-object v0, p0, La/w;->f:La/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/w;->c:La/q;

    invoke-static {v0}, La/d;->a(La/q;)La/d;

    move-result-object v0

    iput-object v0, p0, La/w;->f:La/d;

    goto :goto_0
.end method

.method public final c()La/q;
    .locals 1

    iget-object v0, p0, La/w;->c:La/q;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, La/w;->a:La/r;

    invoke-virtual {v0}, La/r;->h()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()La/w$a;
    .locals 2

    new-instance v0, La/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/w$a;-><init>(La/w;B)V

    return-object v0
.end method

.method public final g()La/r;
    .locals 1

    iget-object v0, p0, La/w;->a:La/r;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/w;->a:La/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/w;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, La/w;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
