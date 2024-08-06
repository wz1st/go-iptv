.class public final Lcom/b/a/i/b;
.super Landroid/support/v4/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/e/a",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    invoke-super {p0, p1, p2}, Landroid/support/v4/e/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/e/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/n",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    invoke-super {p0, p1}, Landroid/support/v4/e/a;->a(Landroid/support/v4/e/n;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    invoke-super {p0}, Landroid/support/v4/e/a;->clear()V

    return-void
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    invoke-super {p0, p1}, Landroid/support/v4/e/a;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/b/a/i/b;->i:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/e/a;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    :cond_0
    iget v0, p0, Lcom/b/a/i/b;->i:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i/b;->i:I

    invoke-super {p0, p1, p2}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
