.class final La/a/c/y;
.super La/a/b;


# instance fields
.field final synthetic b:La/a/c/k;

.field final synthetic c:La/a/c/d$c;


# direct methods
.method varargs constructor <init>(La/a/c/d$c;Ljava/lang/String;[Ljava/lang/Object;La/a/c/k;)V
    .locals 0

    iput-object p1, p0, La/a/c/y;->c:La/a/c/d$c;

    iput-object p4, p0, La/a/c/y;->b:La/a/c/k;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, La/a/c/y;->c:La/a/c/d$c;

    iget-object v0, v0, La/a/c/d$c;->c:La/a/c/d;

    iget-object v0, v0, La/a/c/d;->j:La/a/c/c;

    iget-object v1, p0, La/a/c/y;->b:La/a/c/k;

    invoke-interface {v0, v1}, La/a/c/c;->a(La/a/c/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
