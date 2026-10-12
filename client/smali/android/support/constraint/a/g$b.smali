.class Landroid/support/constraint/a/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/constraint/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/constraint/a/g$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/constraint/a/g$b;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/g$b;->b:I

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v3, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    aput-object v1, v3, v2

    iget v1, p0, Landroid/support/constraint/a/g$b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/g$b;->b:I

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a([Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    array-length v0, p1

    if-le p2, v0, :cond_0

    array-length p2, p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    iget v2, p0, Landroid/support/constraint/a/g$b;->b:I

    iget-object v3, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/constraint/a/g$b;->b:I

    aput-object v1, v2, v3

    iget v1, p0, Landroid/support/constraint/a/g$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/g$b;->b:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/support/constraint/a/g$b;->b:I

    iget-object v1, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/g$b;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/constraint/a/g$b;->b:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/g$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/g$b;->b:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
