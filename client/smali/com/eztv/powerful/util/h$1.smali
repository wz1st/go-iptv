.class final Lcom/eztv/powerful/util/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/util/h;->a(Ljava/lang/String;Lcom/eztv/powerful/util/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/eztv/powerful/util/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/eztv/powerful/util/e;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/util/h$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/eztv/powerful/util/h$1;->b:Lcom/eztv/powerful/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    invoke-virtual {v0}, La/u;->p()La/u$a;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, La/u$a;->a(JLjava/util/concurrent/TimeUnit;)La/u$a;

    move-result-object v0

    invoke-virtual {v0}, La/u$a;->a()La/u;

    move-result-object v0

    const-string v1, ""

    :try_start_0
    iget-object v1, p0, Lcom/eztv/powerful/util/h$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/eztv/powerful/util/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eztv/powerful/util/h$1;->a:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, La/w$a;

    invoke-direct {v1}, La/w$a;-><init>()V

    iget-object v2, p0, Lcom/eztv/powerful/util/h$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, La/w$a;->b(Ljava/lang/String;)La/w$a;

    move-result-object v1

    invoke-virtual {v1}, La/w$a;->a()La/w;

    move-result-object v1

    invoke-virtual {v0, v1}, La/u;->a(La/w;)La/e;

    move-result-object v0

    invoke-interface {v0}, La/e;->a()La/y;

    move-result-object v0

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v0

    invoke-virtual {v0}, La/z;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/eztv/powerful/util/h$1;->b:Lcom/eztv/powerful/util/e;

    invoke-interface {v1, v0}, Lcom/eztv/powerful/util/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/eztv/powerful/util/h$1;->b:Lcom/eztv/powerful/util/e;

    invoke-interface {v1, v0}, Lcom/eztv/powerful/util/e;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/eztv/powerful/util/h$1;->b:Lcom/eztv/powerful/util/e;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lcom/eztv/powerful/util/e;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
