.class public final La/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements La/s;


# instance fields
.field private final a:La/m;


# direct methods
.method public constructor <init>(La/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/d/a;->a:La/m;

    return-void
.end method


# virtual methods
.method public final a(La/s$a;)La/y;
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v3

    invoke-virtual {v3}, La/w;->f()La/w$a;

    move-result-object v4

    invoke-virtual {v3}, La/w;->a()La/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La/x;->b()La/t;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "Content-Type"

    invoke-virtual {v1}, La/t;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    :cond_0
    invoke-virtual {v0}, La/x;->a()J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_5

    const-string v5, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v4, v0}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    :cond_1
    :goto_0
    const-string v0, "Host"

    invoke-virtual {v3, v0}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Host"

    invoke-virtual {v3}, La/w;->g()La/r;

    move-result-object v1

    invoke-static {v1, v2}, La/a/c;->a(La/r;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    :cond_2
    const-string v0, "Connection"

    invoke-virtual {v3, v0}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v4, v0, v1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    :cond_3
    const-string v0, "Accept-Encoding"

    invoke-virtual {v3, v0}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v4, v0, v1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, La/a/d/a;->a:La/m;

    invoke-virtual {v3}, La/w;->g()La/r;

    move-result-object v5

    invoke-interface {v0, v5}, La/m;->a(La/r;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v2, v7, :cond_6

    if-lez v2, :cond_4

    const-string v0, "; "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/l;

    invoke-virtual {v0}, La/l;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, La/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {v4, v0, v1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    goto/16 :goto_0

    :cond_6
    const-string v0, "Cookie"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    :cond_7
    const-string v0, "User-Agent"

    invoke-virtual {v3, v0}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "User-Agent"

    invoke-static {}, La/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    :cond_8
    invoke-virtual {v4}, La/w$a;->a()La/w;

    move-result-object v0

    invoke-interface {p1, v0}, La/s$a;->a(La/w;)La/y;

    move-result-object v0

    iget-object v2, p0, La/a/d/a;->a:La/m;

    invoke-virtual {v3}, La/w;->g()La/r;

    move-result-object v4

    invoke-virtual {v0}, La/y;->e()La/q;

    move-result-object v5

    invoke-static {v2, v4, v5}, La/a/d/f;->a(La/m;La/r;La/q;)V

    invoke-virtual {v0}, La/y;->f()La/y$a;

    move-result-object v2

    invoke-virtual {v2, v3}, La/y$a;->a(La/w;)La/y$a;

    move-result-object v2

    if-eqz v1, :cond_9

    const-string v1, "gzip"

    const-string v3, "Content-Encoding"

    invoke-virtual {v0, v3}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, La/a/d/f;->b(La/y;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lb/i;

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v3

    invoke-virtual {v3}, La/z;->d()Lb/d;

    move-result-object v3

    invoke-direct {v1, v3}, Lb/i;-><init>(Lb/m;)V

    invoke-virtual {v0}, La/y;->e()La/q;

    move-result-object v0

    invoke-virtual {v0}, La/q;->a()La/q$a;

    move-result-object v0

    const-string v3, "Content-Encoding"

    invoke-virtual {v0, v3}, La/q$a;->b(Ljava/lang/String;)La/q$a;

    move-result-object v0

    const-string v3, "Content-Length"

    invoke-virtual {v0, v3}, La/q$a;->b(Ljava/lang/String;)La/q$a;

    move-result-object v0

    invoke-virtual {v0}, La/q$a;->a()La/q;

    move-result-object v0

    invoke-virtual {v2, v0}, La/y$a;->a(La/q;)La/y$a;

    new-instance v3, La/a/d/j;

    invoke-static {v1}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v1

    invoke-direct {v3, v0, v1}, La/a/d/j;-><init>(La/q;Lb/d;)V

    invoke-virtual {v2, v3}, La/y$a;->a(La/z;)La/y$a;

    :cond_9
    invoke-virtual {v2}, La/y$a;->a()La/y;

    move-result-object v0

    return-object v0

    :cond_a
    move v1, v2

    goto/16 :goto_1
.end method
