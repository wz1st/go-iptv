.class final La/a/c/q;
.super La/a/b;


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:La/a/c/i;

.field final synthetic f:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ZIILa/a/c/i;)V
    .locals 0

    iput-object p1, p0, La/a/c/q;->f:La/a/c/d;

    iput-boolean p4, p0, La/a/c/q;->b:Z

    iput p5, p0, La/a/c/q;->c:I

    iput p6, p0, La/a/c/q;->d:I

    iput-object p7, p0, La/a/c/q;->e:La/a/c/i;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, La/a/c/q;->f:La/a/c/d;

    iget-boolean v1, p0, La/a/c/q;->b:Z

    iget v2, p0, La/a/c/q;->c:I

    iget v3, p0, La/a/c/q;->d:I

    iget-object v4, p0, La/a/c/q;->e:La/a/c/i;

    invoke-static {v0, v1, v2, v3, v4}, La/a/c/d;->a(La/a/c/d;ZIILa/a/c/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
