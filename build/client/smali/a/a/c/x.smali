.class final La/a/c/x;
.super La/a/b;


# instance fields
.field final synthetic b:La/a/c/d$c;


# direct methods
.method varargs constructor <init>(La/a/c/d$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/a/c/x;->b:La/a/c/d$c;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, La/a/c/x;->b:La/a/c/d$c;

    iget-object v0, v0, La/a/c/d$c;->c:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->f(La/a/c/d;)La/a/c/d$b;

    move-result-object v0

    iget-object v1, p0, La/a/c/x;->b:La/a/c/d$c;

    iget-object v1, v1, La/a/c/d$c;->c:La/a/c/d;

    invoke-virtual {v0, v1}, La/a/c/d$b;->a(La/a/c/d;)V

    return-void
.end method
