.class final La/a/c/p;
.super La/a/b;


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    iput-object p1, p0, La/a/c/p;->d:La/a/c/d;

    iput p4, p0, La/a/c/p;->b:I

    iput-wide p5, p0, La/a/c/p;->c:J

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La/a/c/p;->d:La/a/c/d;

    iget-object v0, v0, La/a/c/d;->j:La/a/c/c;

    iget v1, p0, La/a/c/p;->b:I

    iget-wide v2, p0, La/a/c/p;->c:J

    invoke-interface {v0, v1, v2, v3}, La/a/c/c;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
