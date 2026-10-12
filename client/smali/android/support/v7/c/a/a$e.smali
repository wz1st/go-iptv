.class Landroid/support/v7/c/a/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/c/a/a$e;->a(Landroid/graphics/drawable/AnimationDrawable;Z)I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Landroid/support/v7/c/a/a$e;->c:I

    return v0
.end method

.method a(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    iput v3, p0, Landroid/support/v7/c/a/a$e;->b:I

    iget-object v1, p0, Landroid/support/v7/c/a/a$e;->a:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/c/a/a$e;->a:[I

    array-length v1, v1

    if-ge v1, v3, :cond_1

    :cond_0
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/support/v7/c/a/a$e;->a:[I

    :cond_1
    iget-object v4, p0, Landroid/support/v7/c/a/a$e;->a:[I

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_3

    if-eqz p2, :cond_2

    sub-int v0, v3, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    aput v0, v4, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iput v2, p0, Landroid/support/v7/c/a/a$e;->c:I

    return v2
.end method

.method public getInterpolation(F)F
    .locals 5

    iget v0, p0, Landroid/support/v7/c/a/a$e;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v2, v0

    iget v3, p0, Landroid/support/v7/c/a/a$e;->b:I

    iget-object v4, p0, Landroid/support/v7/c/a/a$e;->a:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v4, v1

    if-lt v2, v0, :cond_0

    aget v0, v4, v1

    sub-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-ge v1, v3, :cond_1

    int-to-float v0, v2

    iget v2, p0, Landroid/support/v7/c/a/a$e;->c:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1
    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
