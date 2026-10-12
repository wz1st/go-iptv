.class public final La/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements La/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La/a/d/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(La/s$a;)La/y;
    .locals 8

    move-object v0, p1

    check-cast v0, La/a/d/i;

    invoke-virtual {v0}, La/a/d/i;->b()La/a/d/h;

    move-result-object v1

    move-object v0, p1

    check-cast v0, La/a/d/i;

    invoke-virtual {v0}, La/a/d/i;->c()La/a/b/g;

    move-result-object v2

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v0}, La/a/d/h;->a(La/w;)V

    invoke-virtual {v0}, La/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/a/d/g;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, La/w;->a()La/x;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, La/w;->a()La/x;

    move-result-object v3

    invoke-virtual {v3}, La/x;->a()J

    move-result-wide v6

    invoke-interface {v1, v0, v6, v7}, La/a/d/h;->a(La/w;J)Lb/l;

    move-result-object v3

    invoke-static {v3}, Lb/k;->a(Lb/l;)Lb/c;

    move-result-object v3

    invoke-virtual {v0}, La/w;->a()La/x;

    move-result-object v6

    invoke-virtual {v6, v3}, La/x;->a(Lb/c;)V

    invoke-interface {v3}, Lb/c;->close()V

    :cond_0
    invoke-interface {v1}, La/a/d/h;->a()V

    invoke-interface {v1}, La/a/d/h;->f()La/y$a;

    move-result-object v3

    invoke-virtual {v3, v0}, La/y$a;->a(La/w;)La/y$a;

    move-result-object v0

    invoke-virtual {v2}, La/a/b/g;->a()La/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, La/a/b/c;->b()La/p;

    move-result-object v3

    invoke-virtual {v0, v3}, La/y$a;->a(La/p;)La/y$a;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, La/y$a;->b(J)La/y$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, La/y$a;->a(J)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    iget-boolean v3, p0, La/a/d/b;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, La/y;->c()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, La/y;->f()La/y$a;

    move-result-object v3

    invoke-interface {v1, v0}, La/a/d/h;->a(La/y;)La/z;

    move-result-object v0

    invoke-virtual {v3, v0}, La/y$a;->a(La/z;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    :cond_2
    const-string v1, "close"

    invoke-virtual {v0}, La/y;->h()La/w;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, La/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "close"

    const-string v3, "Connection"

    invoke-virtual {v0, v3}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v2}, La/a/b/g;->c()V

    :cond_4
    invoke-virtual {v0}, La/y;->c()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_6

    :cond_5
    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v2

    invoke-virtual {v2}, La/z;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v0

    invoke-virtual {v0}, La/z;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    return-object v0
.end method
