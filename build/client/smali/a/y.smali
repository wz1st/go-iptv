.class public final La/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/y$a;
    }
.end annotation


# instance fields
.field private final a:La/w;

.field private final b:La/v;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:La/p;

.field private final f:La/q;

.field private final g:La/z;

.field private final h:La/y;

.field private final i:La/y;

.field private final j:La/y;

.field private final k:J

.field private final l:J

.field private volatile m:La/d;


# direct methods
.method private constructor <init>(La/y$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/y$a;->a(La/y$a;)La/w;

    move-result-object v0

    iput-object v0, p0, La/y;->a:La/w;

    invoke-static {p1}, La/y$a;->b(La/y$a;)La/v;

    move-result-object v0

    iput-object v0, p0, La/y;->b:La/v;

    invoke-static {p1}, La/y$a;->c(La/y$a;)I

    move-result v0

    iput v0, p0, La/y;->c:I

    invoke-static {p1}, La/y$a;->d(La/y$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/y;->d:Ljava/lang/String;

    invoke-static {p1}, La/y$a;->e(La/y$a;)La/p;

    move-result-object v0

    iput-object v0, p0, La/y;->e:La/p;

    invoke-static {p1}, La/y$a;->f(La/y$a;)La/q$a;

    move-result-object v0

    invoke-virtual {v0}, La/q$a;->a()La/q;

    move-result-object v0

    iput-object v0, p0, La/y;->f:La/q;

    invoke-static {p1}, La/y$a;->g(La/y$a;)La/z;

    move-result-object v0

    iput-object v0, p0, La/y;->g:La/z;

    invoke-static {p1}, La/y$a;->h(La/y$a;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y;->h:La/y;

    invoke-static {p1}, La/y$a;->i(La/y$a;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y;->i:La/y;

    invoke-static {p1}, La/y$a;->j(La/y$a;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y;->j:La/y;

    invoke-static {p1}, La/y$a;->k(La/y$a;)J

    move-result-wide v0

    iput-wide v0, p0, La/y;->k:J

    invoke-static {p1}, La/y$a;->l(La/y$a;)J

    move-result-wide v0

    iput-wide v0, p0, La/y;->l:J

    return-void
.end method

.method synthetic constructor <init>(La/y$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/y;-><init>(La/y$a;)V

    return-void
.end method

.method static synthetic a(La/y;)La/w;
    .locals 1

    iget-object v0, p0, La/y;->a:La/w;

    return-object v0
.end method

.method static synthetic b(La/y;)La/v;
    .locals 1

    iget-object v0, p0, La/y;->b:La/v;

    return-object v0
.end method

.method static synthetic c(La/y;)I
    .locals 1

    iget v0, p0, La/y;->c:I

    return v0
.end method

.method static synthetic d(La/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(La/y;)La/p;
    .locals 1

    iget-object v0, p0, La/y;->e:La/p;

    return-object v0
.end method

.method static synthetic f(La/y;)La/q;
    .locals 1

    iget-object v0, p0, La/y;->f:La/q;

    return-object v0
.end method

.method static synthetic g(La/y;)La/z;
    .locals 1

    iget-object v0, p0, La/y;->g:La/z;

    return-object v0
.end method

.method static synthetic h(La/y;)La/y;
    .locals 1

    iget-object v0, p0, La/y;->h:La/y;

    return-object v0
.end method

.method static synthetic i(La/y;)La/y;
    .locals 1

    iget-object v0, p0, La/y;->i:La/y;

    return-object v0
.end method

.method static synthetic j(La/y;)La/y;
    .locals 1

    iget-object v0, p0, La/y;->j:La/y;

    return-object v0
.end method

.method static synthetic k(La/y;)J
    .locals 2

    iget-wide v0, p0, La/y;->k:J

    return-wide v0
.end method

.method static synthetic l(La/y;)J
    .locals 2

    iget-wide v0, p0, La/y;->l:J

    return-wide v0
.end method


# virtual methods
.method public final a()La/z;
    .locals 1

    iget-object v0, p0, La/y;->g:La/z;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/y;->f:La/q;

    invoke-virtual {v0, p1}, La/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final b()La/d;
    .locals 1

    iget-object v0, p0, La/y;->m:La/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/y;->f:La/q;

    invoke-static {v0}, La/d;->a(La/q;)La/d;

    move-result-object v0

    iput-object v0, p0, La/y;->m:La/d;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/y;->c:I

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, La/y;->g:La/z;

    invoke-virtual {v0}, La/z;->close()V

    return-void
.end method

.method public final d()La/p;
    .locals 1

    iget-object v0, p0, La/y;->e:La/p;

    return-object v0
.end method

.method public final e()La/q;
    .locals 1

    iget-object v0, p0, La/y;->f:La/q;

    return-object v0
.end method

.method public final f()La/y$a;
    .locals 2

    new-instance v0, La/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/y$a;-><init>(La/y;B)V

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, La/y;->l:J

    return-wide v0
.end method

.method public final h()La/w;
    .locals 1

    iget-object v0, p0, La/y;->a:La/w;

    return-object v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, La/y;->k:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/y;->b:La/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/y;->a:La/w;

    invoke-virtual {v1}, La/w;->g()La/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
