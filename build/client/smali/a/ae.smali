.class final La/ae;
.super Ljava/lang/Object;

# interfaces
.implements La/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/r;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/r;",
            ")",
            "Ljava/util/List",
            "<",
            "La/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/r;",
            "Ljava/util/List",
            "<",
            "La/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
