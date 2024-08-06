.class final La/a/c/o;
.super La/a/b;


# instance fields
.field final synthetic b:I

.field final synthetic c:La/a/c/a;

.field final synthetic d:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILa/a/c/a;)V
    .locals 0

    iput-object p1, p0, La/a/c/o;->d:La/a/c/d;

    iput p4, p0, La/a/c/o;->b:I

    iput-object p5, p0, La/a/c/o;->c:La/a/c/a;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La/a/c/o;->d:La/a/c/d;

    iget v1, p0, La/a/c/o;->b:I

    iget-object v2, p0, La/a/c/o;->c:La/a/c/a;

    invoke-virtual {v0, v1, v2}, La/a/c/d;->b(ILa/a/c/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
