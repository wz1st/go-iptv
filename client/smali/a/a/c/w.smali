.class final La/a/c/w;
.super La/a/b;


# instance fields
.field final synthetic b:La/a/c/e;

.field final synthetic c:La/a/c/d$c;


# direct methods
.method varargs constructor <init>(La/a/c/d$c;Ljava/lang/String;[Ljava/lang/Object;La/a/c/e;)V
    .locals 0

    iput-object p1, p0, La/a/c/w;->c:La/a/c/d$c;

    iput-object p4, p0, La/a/c/w;->b:La/a/c/e;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, La/a/c/w;->c:La/a/c/d$c;

    iget-object v0, v0, La/a/c/d$c;->c:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->f(La/a/c/d;)La/a/c/d$b;

    move-result-object v0

    iget-object v1, p0, La/a/c/w;->b:La/a/c/e;

    invoke-virtual {v0, v1}, La/a/c/d$b;->a(La/a/c/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FramedConnection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, La/a/c/w;->c:La/a/c/d$c;

    iget-object v4, v4, La/a/c/d$c;->c:La/a/c/d;

    invoke-static {v4}, La/a/c/d;->a(La/a/c/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, La/a/f/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, La/a/c/w;->b:La/a/c/e;

    sget-object v1, La/a/c/a;->m:La/a/c/a;

    invoke-virtual {v0, v1}, La/a/c/e;->b(La/a/c/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
