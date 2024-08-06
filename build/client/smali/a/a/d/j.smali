.class public final La/a/d/j;
.super La/z;


# instance fields
.field private final a:La/q;

.field private final b:Lb/d;


# direct methods
.method public constructor <init>(La/q;Lb/d;)V
    .locals 0

    invoke-direct {p0}, La/z;-><init>()V

    iput-object p1, p0, La/a/d/j;->a:La/q;

    iput-object p2, p0, La/a/d/j;->b:Lb/d;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object v0, p0, La/a/d/j;->a:La/q;

    invoke-static {v0}, La/a/d/f;->a(La/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()La/t;
    .locals 2

    iget-object v0, p0, La/a/d/j;->a:La/q;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, La/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, La/t;->a(Ljava/lang/String;)La/t;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lb/d;
    .locals 1

    iget-object v0, p0, La/a/d/j;->b:Lb/d;

    return-object v0
.end method
