.class final La/a/a/f;
.super La/z;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()La/t;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lb/d;
    .locals 1

    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    return-object v0
.end method
