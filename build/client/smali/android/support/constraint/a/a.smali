.class public Landroid/support/constraint/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private final b:Landroid/support/constraint/a/b;

.field private final c:Landroid/support/constraint/a/c;

.field private d:I

.field private e:Landroid/support/constraint/a/h;

.field private f:[I

.field private g:[I

.field private h:[F

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method constructor <init>(Landroid/support/constraint/a/b;Landroid/support/constraint/a/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/constraint/a/a;->a:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/a/a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a;->e:Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/a;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    iget v0, p0, Landroid/support/constraint/a/a;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget v0, p0, Landroid/support/constraint/a/a;->d:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    iput v1, p0, Landroid/support/constraint/a/a;->i:I

    iput v1, p0, Landroid/support/constraint/a/a;->j:I

    iput-boolean v2, p0, Landroid/support/constraint/a/a;->k:Z

    iput-object p1, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    iput-object p2, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    return-void
.end method

.method private a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/support/constraint/a/h;->i:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/h;Z)F
    .locals 7

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Landroid/support/constraint/a/a;->e:Landroid/support/constraint/a/h;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/a/a;->e:Landroid/support/constraint/a/h;

    :cond_0
    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v1, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v4, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v1, 0x0

    move v2, v3

    :goto_1
    if-eq v4, v3, :cond_1

    iget v5, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v4

    iget v6, p1, Landroid/support/constraint/a/h;->a:I

    if-ne v5, v6, :cond_6

    iget v0, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v4, v0, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    aget v0, v0, v4

    iput v0, p0, Landroid/support/constraint/a/a;->i:I

    :goto_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    :cond_3
    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    aput v3, v0, v4

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-eqz v0, :cond_4

    iput v4, p0, Landroid/support/constraint/a/a;->j:I

    :cond_4
    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aget v0, v0, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget-object v1, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v1, v4

    aput v1, v0, v2

    goto :goto_2

    :cond_6
    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    move v4, v5

    goto :goto_1
.end method

.method final a(I)Landroid/support/constraint/a/h;
    .locals 3

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v2, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/constraint/a/e;)Landroid/support/constraint/a/h;
    .locals 14

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget v7, p0, Landroid/support/constraint/a/a;->i:I

    move v10, v4

    move v11, v7

    move v0, v4

    move v2, v4

    move v3, v9

    move v5, v9

    move-object v6, v12

    move-object v8, v12

    :goto_0
    const/4 v4, -0x1

    if-eq v11, v4, :cond_8

    iget v4, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v10, v4, :cond_8

    iget-object v4, p0, Landroid/support/constraint/a/a;->h:[F

    aget v4, v4, v11

    const v12, 0x3a83126f    # 0.001f

    iget-object v7, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v13, p0, Landroid/support/constraint/a/a;->f:[I

    aget v13, v13, v11

    aget-object v7, v7, v13

    cmpg-float v13, v4, v9

    if-gez v13, :cond_2

    neg-float v12, v12

    cmpl-float v12, v4, v12

    if-lez v12, :cond_0

    iget-object v4, p0, Landroid/support/constraint/a/a;->h:[F

    aput v9, v4, v11

    iget-object v4, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {v7, v4}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    move v4, v9

    :cond_0
    :goto_1
    cmpl-float v12, v4, v9

    if-eqz v12, :cond_1

    iget-object v12, v7, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v13, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    if-ne v12, v13, :cond_5

    if-nez v6, :cond_3

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v2

    move v5, v4

    move-object v6, v7

    :cond_1
    :goto_2
    iget-object v4, p0, Landroid/support/constraint/a/a;->g:[I

    aget v7, v4, v11

    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v11, v7

    goto :goto_0

    :cond_2
    cmpg-float v12, v4, v12

    if-gez v12, :cond_0

    iget-object v4, p0, Landroid/support/constraint/a/a;->h:[F

    aput v9, v4, v11

    iget-object v4, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {v7, v4}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    move v4, v9

    goto :goto_1

    :cond_3
    cmpl-float v12, v5, v4

    if-lez v12, :cond_4

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v2

    move v5, v4

    move-object v6, v7

    goto :goto_2

    :cond_4
    if-nez v2, :cond_1

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v2, v1

    move v5, v4

    move-object v6, v7

    goto :goto_2

    :cond_5
    if-nez v6, :cond_1

    cmpg-float v12, v4, v9

    if-gez v12, :cond_1

    if-nez v8, :cond_6

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v0

    move v3, v4

    move-object v8, v7

    goto :goto_2

    :cond_6
    cmpl-float v12, v3, v4

    if-lez v12, :cond_7

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v0

    move v3, v4

    move-object v8, v7

    goto :goto_2

    :cond_7
    if-nez v0, :cond_1

    invoke-direct {p0, v7, p1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/e;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v0, v1

    move v3, v4

    move-object v8, v7

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    :goto_3
    return-object v6

    :cond_9
    move-object v6, v8

    goto :goto_3
.end method

.method a([ZLandroid/support/constraint/a/h;)Landroid/support/constraint/a/h;
    .locals 8

    const/4 v4, 0x0

    iget v3, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, v4

    move v5, v1

    move v6, v3

    :goto_0
    const/4 v1, -0x1

    if-eq v6, v1, :cond_3

    iget v1, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v5, v1, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a;->h:[F

    aget v1, v1, v6

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a;->f:[I

    aget v3, v3, v6

    aget-object v3, v1, v3

    if-eqz p1, :cond_0

    iget v1, v3, Landroid/support/constraint/a/h;->a:I

    aget-boolean v1, p1, v1

    if-nez v1, :cond_2

    :cond_0
    if-eq v3, p2, :cond_2

    iget-object v1, v3, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v7, Landroid/support/constraint/a/h$a;->c:Landroid/support/constraint/a/h$a;

    if-eq v1, v7, :cond_1

    iget-object v1, v3, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v7, Landroid/support/constraint/a/h$a;->d:Landroid/support/constraint/a/h$a;

    if-ne v1, v7, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/a/a;->h:[F

    aget v1, v1, v6

    cmpg-float v7, v1, v0

    if-gez v7, :cond_2

    move v0, v1

    move-object v2, v3

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v1, v6

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v3

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final a()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v2, p0, Landroid/support/constraint/a/a;->i:I

    move v0, v1

    :goto_0
    if-eq v2, v5, :cond_1

    iget v3, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v4, p0, Landroid/support/constraint/a/a;->f:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    :cond_0
    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v2, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Landroid/support/constraint/a/a;->i:I

    iput v5, p0, Landroid/support/constraint/a/a;->j:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a;->k:Z

    iput v1, p0, Landroid/support/constraint/a/a;->a:I

    return-void
.end method

.method a(F)V
    .locals 4

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aget v3, v2, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Landroid/support/constraint/a/b;Landroid/support/constraint/a/b;Z)V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v0, v2

    :goto_0
    if-eq v1, v7, :cond_3

    iget v3, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Landroid/support/constraint/a/a;->f:[I

    aget v3, v3, v1

    iget-object v4, p2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget v4, v4, Landroid/support/constraint/a/h;->a:I

    if-ne v3, v4, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aget v4, v0, v1

    iget-object v0, p2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {p0, v0, p3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    iget-object v0, p2, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    check-cast v0, Landroid/support/constraint/a/a;

    iget v3, v0, Landroid/support/constraint/a/a;->i:I

    move v1, v2

    :goto_1
    if-eq v3, v7, :cond_0

    iget v5, v0, Landroid/support/constraint/a/a;->a:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v5, v5, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v6, v0, Landroid/support/constraint/a/a;->f:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    iget-object v6, v0, Landroid/support/constraint/a/a;->h:[F

    aget v6, v6, v3

    mul-float/2addr v6, v4

    invoke-virtual {p0, v5, v6, p3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;FZ)V

    iget-object v5, v0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/support/constraint/a/b;->b:F

    iget v1, p2, Landroid/support/constraint/a/b;->b:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p1, Landroid/support/constraint/a/b;->b:F

    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    :cond_1
    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Landroid/support/constraint/a/b;[Landroid/support/constraint/a/b;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v0, v2

    :goto_0
    if-eq v1, v8, :cond_2

    iget v3, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v4, p0, Landroid/support/constraint/a/a;->f:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    iget v4, v3, Landroid/support/constraint/a/h;->b:I

    if-eq v4, v8, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aget v4, v0, v1

    invoke-virtual {p0, v3, v9}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    iget v0, v3, Landroid/support/constraint/a/h;->b:I

    aget-object v5, p2, v0

    iget-boolean v0, v5, Landroid/support/constraint/a/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, v5, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    check-cast v0, Landroid/support/constraint/a/a;

    iget v3, v0, Landroid/support/constraint/a/a;->i:I

    move v1, v2

    :goto_1
    if-eq v3, v8, :cond_0

    iget v6, v0, Landroid/support/constraint/a/a;->a:I

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v7, v0, Landroid/support/constraint/a/a;->f:[I

    aget v7, v7, v3

    aget-object v6, v6, v7

    iget-object v7, v0, Landroid/support/constraint/a/a;->h:[F

    aget v7, v7, v3

    mul-float/2addr v7, v4

    invoke-virtual {p0, v6, v7, v9}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;FZ)V

    iget-object v6, v0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/support/constraint/a/b;->b:F

    iget v1, v5, Landroid/support/constraint/a/b;->b:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p1, Landroid/support/constraint/a/b;->b:F

    iget-object v0, v5, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroid/support/constraint/a/h;F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Landroid/support/constraint/a/a;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    iget v2, p1, Landroid/support/constraint/a/h;->a:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    aput v4, v0, v1

    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->k:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v2, v3

    move v0, v4

    :goto_1
    if-eq v1, v4, :cond_5

    iget v5, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->a:I

    if-ne v5, v6, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aput p2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->a:I

    if-ge v5, v6, :cond_4

    move v0, v1

    :cond_4
    iget-object v5, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Landroid/support/constraint/a/a;->k:Z

    if-eqz v2, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    iget v2, p0, Landroid/support/constraint/a/a;->j:I

    aget v1, v1, v2

    if-ne v1, v4, :cond_b

    iget v1, p0, Landroid/support/constraint/a/a;->j:I

    :cond_6
    :goto_2
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    move v2, v3

    :goto_3
    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_c

    move v1, v2

    :cond_7
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v2, v2

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    iget v2, p0, Landroid/support/constraint/a/a;->d:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/constraint/a/a;->d:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a;->k:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    :cond_8
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget v3, p1, Landroid/support/constraint/a/h;->a:I

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aput p2, v2, v1

    if-eq v0, v4, :cond_d

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aput v1, v2, v0

    :goto_4
    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    :cond_9
    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->k:Z

    :cond_a
    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->k:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget v2, p0, Landroid/support/constraint/a/a;->i:I

    aput v2, v0, v1

    iput v1, p0, Landroid/support/constraint/a/a;->i:I

    goto :goto_4
.end method

.method final a(Landroid/support/constraint/a/h;FZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    cmpl-float v0, p2, v7

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Landroid/support/constraint/a/a;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    iget v2, p1, Landroid/support/constraint/a/h;->a:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    aput v4, v0, v1

    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v8, p0, Landroid/support/constraint/a/a;->k:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    move v2, v3

    move v0, v4

    :goto_1
    if-eq v1, v4, :cond_8

    iget v5, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v2, v5, :cond_8

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->a:I

    if-ne v5, v6, :cond_6

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/constraint/a/a;->i:I

    :goto_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->b(Landroid/support/constraint/a/b;)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-eqz v0, :cond_4

    iput v1, p0, Landroid/support/constraint/a/a;->j:I

    :cond_4
    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v3, v1

    aput v3, v2, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->a:I

    if-ge v5, v6, :cond_7

    move v0, v1

    :cond_7
    iget-object v5, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget v1, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Landroid/support/constraint/a/a;->k:Z

    if-eqz v2, :cond_9

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    iget v2, p0, Landroid/support/constraint/a/a;->j:I

    aget v1, v1, v2

    if-ne v1, v4, :cond_d

    iget v1, p0, Landroid/support/constraint/a/a;->j:I

    :cond_9
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v2, v2

    if-lt v1, v2, :cond_a

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v5, v5

    if-ge v2, v5, :cond_a

    move v2, v3

    :goto_4
    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v5, v5

    if-ge v2, v5, :cond_a

    iget-object v5, p0, Landroid/support/constraint/a/a;->f:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_e

    move v1, v2

    :cond_a
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v2, v2

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    iget v2, p0, Landroid/support/constraint/a/a;->d:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/constraint/a/a;->d:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a;->k:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    iget v3, p0, Landroid/support/constraint/a/a;->d:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    :cond_b
    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    iget v3, p1, Landroid/support/constraint/a/h;->a:I

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aput p2, v2, v1

    if-eq v0, v4, :cond_f

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v3, v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aput v1, v2, v0

    :goto_5
    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->b:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->a:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->k:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    :cond_c
    iget v0, p0, Landroid/support/constraint/a/a;->j:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v8, p0, Landroid/support/constraint/a/a;->k:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->j:I

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Landroid/support/constraint/a/a;->f:[I

    array-length v1, v1

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Landroid/support/constraint/a/a;->g:[I

    iget v2, p0, Landroid/support/constraint/a/a;->i:I

    aput v2, v0, v1

    iput v1, p0, Landroid/support/constraint/a/a;->i:I

    goto :goto_5
.end method

.method final a(Landroid/support/constraint/a/h;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/support/constraint/a/a;->i:I

    move v1, v0

    :goto_1
    if-eq v2, v5, :cond_0

    iget v3, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/support/constraint/a/a;->f:[I

    aget v3, v3, v2

    iget v4, p1, Landroid/support/constraint/a/h;->a:I

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v2, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final b(I)F
    .locals 3

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v2, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aget v0, v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Landroid/support/constraint/a/h;)F
    .locals 4

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/a;->f:[I

    aget v2, v2, v1

    iget v3, p1, Landroid/support/constraint/a/h;->a:I

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->h:[F

    aget v0, v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 5

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a;->h:[F

    aget v3, v2, v1

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    iget v1, p0, Landroid/support/constraint/a/a;->i:I

    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroid/support/constraint/a/a;->a:I

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->h:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->c:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget-object v4, p0, Landroid/support/constraint/a/a;->f:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->g:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
