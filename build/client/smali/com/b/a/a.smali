.class abstract Lcom/b/a/a;
.super Lcom/b/a/e/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end method

.method b()Lcom/b/a/d/l$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
