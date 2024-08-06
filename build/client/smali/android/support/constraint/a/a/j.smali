.class public Landroid/support/constraint/a/a/j;
.super Landroid/support/constraint/a/a/f;


# instance fields
.field protected ai:[Landroid/support/constraint/a/a/f;

.field protected aj:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/f;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/constraint/a/a/f;

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/j;->aj:I

    return-void
.end method


# virtual methods
.method public J()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/j;->aj:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/f;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/j;->aj:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/f;

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->ai:[Landroid/support/constraint/a/a/f;

    iget v1, p0, Landroid/support/constraint/a/a/j;->aj:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/j;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/j;->aj:I

    return-void
.end method
