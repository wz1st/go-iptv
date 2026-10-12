.class public final La/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements La/a/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/d/c$a;,
        La/a/d/c$b;,
        La/a/d/c$c;,
        La/a/d/c$d;,
        La/a/d/c$e;,
        La/a/d/c$f;
    }
.end annotation


# instance fields
.field private final a:La/u;

.field private final b:La/a/b/g;

.field private final c:Lb/d;

.field private final d:Lb/c;

.field private e:I


# direct methods
.method public constructor <init>(La/u;La/a/b/g;Lb/d;Lb/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/d/c;->e:I

    iput-object p1, p0, La/a/d/c;->a:La/u;

    iput-object p2, p0, La/a/d/c;->b:La/a/b/g;

    iput-object p3, p0, La/a/d/c;->c:Lb/d;

    iput-object p4, p0, La/a/d/c;->d:Lb/c;

    return-void
.end method

.method static synthetic a(La/a/d/c;I)I
    .locals 0

    iput p1, p0, La/a/d/c;->e:I

    return p1
.end method

.method static synthetic a(La/a/d/c;)Lb/c;
    .locals 1

    iget-object v0, p0, La/a/d/c;->d:Lb/c;

    return-object v0
.end method

.method static synthetic a(Lb/h;)V
    .locals 2

    invoke-virtual {p0}, Lb/h;->d()Lb/n;

    move-result-object v0

    sget-object v1, Lb/n;->b:Lb/n;

    invoke-virtual {p0, v1}, Lb/h;->a(Lb/n;)Lb/h;

    invoke-virtual {v0}, Lb/n;->g_()Lb/n;

    invoke-virtual {v0}, Lb/n;->b()Lb/n;

    return-void
.end method

.method static synthetic b(La/a/d/c;)Lb/d;
    .locals 1

    iget-object v0, p0, La/a/d/c;->c:Lb/d;

    return-object v0
.end method

.method static synthetic c(La/a/d/c;)I
    .locals 1

    iget v0, p0, La/a/d/c;->e:I

    return v0
.end method

.method static synthetic d(La/a/d/c;)La/a/b/g;
    .locals 1

    iget-object v0, p0, La/a/d/c;->b:La/a/b/g;

    return-object v0
.end method

.method static synthetic e(La/a/d/c;)La/u;
    .locals 1

    iget-object v0, p0, La/a/d/c;->a:La/u;

    return-object v0
.end method


# virtual methods
.method public final a(La/y;)La/z;
    .locals 4

    invoke-static {p1}, La/a/d/f;->b(La/y;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, La/a/d/c;->b(J)Lb/m;

    move-result-object v0

    :goto_0
    new-instance v1, La/a/d/j;

    invoke-virtual {p1}, La/y;->e()La/q;

    move-result-object v2

    invoke-static {v0}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, La/a/d/j;-><init>(La/q;Lb/d;)V

    return-object v1

    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/y;->h()La/w;

    move-result-object v0

    invoke-virtual {v0}, La/w;->g()La/r;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/d/c;->a(La/r;)Lb/m;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, La/a/d/f;->a(La/y;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, La/a/d/c;->b(J)Lb/m;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, La/a/d/c;->c()Lb/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(J)Lb/l;
    .locals 3

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, La/a/d/c;->e:I

    new-instance v0, La/a/d/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, La/a/d/c$d;-><init>(La/a/d/c;JB)V

    return-object v0
.end method

.method public final a(La/w;J)Lb/l;
    .locals 2

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/d/c;->b()Lb/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, La/a/d/c;->a(J)Lb/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(La/r;)Lb/m;
    .locals 3

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, La/a/d/c;->e:I

    new-instance v0, La/a/d/c$c;

    invoke-direct {v0, p0, p1}, La/a/d/c$c;-><init>(La/a/d/c;La/r;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/d/c;->d:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V

    return-void
.end method

.method public final a(La/q;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, La/a/d/c;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/d/c;->d:Lb/c;

    invoke-interface {v0, p2}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    const/4 v0, 0x0

    invoke-virtual {p1}, La/q;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, La/a/d/c;->d:Lb/c;

    invoke-virtual {p1, v0}, La/q;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v2

    invoke-virtual {p1, v0}, La/q;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/d/c;->d:Lb/c;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/c;->b(Ljava/lang/String;)Lb/c;

    const/4 v0, 0x1

    iput v0, p0, La/a/d/c;->e:I

    return-void
.end method

.method public final a(La/w;)V
    .locals 2

    iget-object v0, p0, La/a/d/c;->b:La/a/b/g;

    invoke-virtual {v0}, La/a/b/g;->a()La/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/b/c;->a()La/aa;

    move-result-object v0

    invoke-virtual {v0}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, La/a/d/k;->a(La/w;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/w;->c()La/q;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, La/a/d/c;->a(La/q;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lb/l;
    .locals 3

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, La/a/d/c;->e:I

    new-instance v0, La/a/d/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/d/c$b;-><init>(La/a/d/c;B)V

    return-object v0
.end method

.method public final b(J)Lb/m;
    .locals 3

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, La/a/d/c;->e:I

    new-instance v0, La/a/d/c$e;

    invoke-direct {v0, p0, p1, p2}, La/a/d/c$e;-><init>(La/a/d/c;J)V

    return-object v0
.end method

.method public final c()Lb/m;
    .locals 3

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/d/c;->b:La/a/b/g;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, La/a/d/c;->e:I

    iget-object v0, p0, La/a/d/c;->b:La/a/b/g;

    invoke-virtual {v0}, La/a/b/g;->c()V

    new-instance v0, La/a/d/c$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/d/c$f;-><init>(La/a/d/c;B)V

    return-object v0
.end method

.method public final d()La/q;
    .locals 3

    new-instance v0, La/q$a;

    invoke-direct {v0}, La/q$a;-><init>()V

    :goto_0
    iget-object v1, p0, La/a/d/c;->c:Lb/d;

    invoke-interface {v1}, Lb/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, La/a/a;->a:La/a/a;

    invoke-virtual {v2, v0, v1}, La/a/a;->a(La/q$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/q$a;->a()La/q;

    move-result-object v0

    return-object v0
.end method

.method public final e()La/y$a;
    .locals 4

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, La/a/d/c;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, La/a/d/c;->c:Lb/d;

    invoke-interface {v0}, Lb/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/d/m;->a(Ljava/lang/String;)La/a/d/m;

    move-result-object v0

    new-instance v1, La/y$a;

    invoke-direct {v1}, La/y$a;-><init>()V

    iget-object v2, v0, La/a/d/m;->c:La/v;

    invoke-virtual {v1, v2}, La/y$a;->a(La/v;)La/y$a;

    move-result-object v1

    iget v2, v0, La/a/d/m;->a:I

    invoke-virtual {v1, v2}, La/y$a;->a(I)La/y$a;

    move-result-object v1

    iget-object v2, v0, La/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, La/y$a;->a(Ljava/lang/String;)La/y$a;

    move-result-object v1

    invoke-virtual {p0}, La/a/d/c;->d()La/q;

    move-result-object v2

    invoke-virtual {v1, v2}, La/y$a;->a(La/q;)La/y$a;

    move-result-object v1

    iget v0, v0, La/a/d/m;->a:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, La/a/d/c;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/a/d/c;->b:La/a/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final f()La/y$a;
    .locals 1

    invoke-virtual {p0}, La/a/d/c;->e()La/y$a;

    move-result-object v0

    return-object v0
.end method
