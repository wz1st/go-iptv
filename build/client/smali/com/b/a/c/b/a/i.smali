.class public final Lcom/b/a/c/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/a/a",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/b/a/c/b/a/i;->a([I)I

    move-result v0

    return v0
.end method

.method public a([I)I
    .locals 1

    array-length v0, p1

    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/c/b/a/i;->b(I)[I

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "IntegerArrayPool"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public b(I)[I
    .locals 1

    new-array v0, p1, [I

    return-object v0
.end method
