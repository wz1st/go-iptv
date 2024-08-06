.class public Landroid/support/v17/leanback/widget/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->j()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/aa$a;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    return v0
.end method

.method public final a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    iput p2, p0, Landroid/support/v17/leanback/widget/aa$a;->k:I

    return-void
.end method

.method public final a(IIII)V
    .locals 6

    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    iput p2, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->p()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->q()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->k()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->l()Z

    move-result v3

    if-nez v2, :cond_1

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    :cond_0
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    iget v5, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v4, :cond_8

    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    iget v5, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    :cond_3
    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    :cond_7
    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    goto :goto_0

    :cond_8
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    :cond_9
    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    goto :goto_1

    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    goto :goto_2

    :cond_c
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    :cond_d
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    goto :goto_2

    :cond_e
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    :cond_f
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    goto/16 :goto_2
.end method

.method final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method final b(II)I
    .locals 1

    sub-int v0, p1, p2

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    return-void
.end method

.method final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    return-void
.end method

.method final c()Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    return v0
.end method

.method public final d(I)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->q()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->k()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa$a;->l()Z

    move-result v3

    if-nez v2, :cond_3

    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    sub-int v4, v1, v4

    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v5, :cond_2

    iget v5, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    :cond_0
    iget v5, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    sub-int v5, p1, v5

    if-gt v5, v4, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    sub-int/2addr v0, v1

    if-nez v3, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v5, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    :cond_3
    if-nez v3, :cond_6

    sub-int v3, v0, v1

    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->k:I

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v4, :cond_5

    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    :cond_4
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    sub-int/2addr v4, p1

    if-gt v4, v3, :cond_6

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    iget v3, p0, Landroid/support/v17/leanback/widget/aa$a;->k:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    if-nez v2, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/support/v17/leanback/widget/aa$a;->f:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    :cond_6
    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/aa$a;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    return v0
.end method

.method public final g()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    return v0
.end method

.method public final i()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    return-void
.end method

.method j()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    return-void
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->k:I

    return v0
.end method

.method public final p()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final q()I
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/aa$a;->l:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    sub-int/2addr v0, v1

    :goto_2
    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->i:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/aa$a;->h:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/aa$a;->g:I

    neg-int v0, v0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/aa$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
