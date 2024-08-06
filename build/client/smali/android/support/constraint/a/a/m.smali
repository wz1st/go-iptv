.class public Landroid/support/constraint/a/a/m;
.super Landroid/support/constraint/a/a/o;


# instance fields
.field a:Landroid/support/constraint/a/a/e;

.field b:F

.field c:Landroid/support/constraint/a/a/m;

.field d:F

.field e:Landroid/support/constraint/a/a/m;

.field f:F

.field g:I

.field private j:Landroid/support/constraint/a/a/m;

.field private k:F

.field private l:Landroid/support/constraint/a/a/n;

.field private m:I

.field private n:Landroid/support/constraint/a/a/n;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/e;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/constraint/a/a/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/m;->g:I

    iput-object v2, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    iput v1, p0, Landroid/support/constraint/a/a/m;->m:I

    iput-object v2, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    iput v1, p0, Landroid/support/constraint/a/a/m;->o:I

    iput-object p1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "DIRECT"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "CENTER"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string v0, "MATCH"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string v0, "CHAIN"

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string v0, "BARRIER"

    goto :goto_0

    :cond_4
    const-string v0, "UNCONNECTED"

    goto :goto_0
.end method

.method public a()V
    .locals 9

    const-wide/16 v6, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    iget v1, v1, Landroid/support/constraint/a/a/n;->i:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/m;->m:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    iget v2, v2, Landroid/support/constraint/a/a/n;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/a/a/m;->d:F

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    iget v1, v1, Landroid/support/constraint/a/a/n;->i:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/m;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    iget v2, v2, Landroid/support/constraint/a/a/n;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/a/a/m;->k:F

    :cond_3
    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_6

    :cond_4
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-nez v0, :cond_5

    iput-object p0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget v0, p0, Landroid/support/constraint/a/a/m;->d:F

    iput v0, p0, Landroid/support/constraint/a/a/m;->f:F

    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->f()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v0, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v0, v0, Landroid/support/constraint/a/a/m;->f:F

    iget v1, p0, Landroid/support/constraint/a/a/m;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/m;->f:F

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_f

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_f

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v1

    iget-wide v4, v1, Landroid/support/constraint/a/f;->w:J

    add-long/2addr v4, v6

    iput-wide v4, v1, Landroid/support/constraint/a/f;->w:J

    :cond_7
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput-object v1, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v2, v2, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v2, v2, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput-object v2, v1, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    if-ne v1, v2, :cond_b

    :cond_8
    move v5, v0

    :goto_2
    if-eqz v5, :cond_c

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v0, v0, Landroid/support/constraint/a/a/m;->f:F

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->f:F

    sub-float/2addr v0, v1

    :goto_3
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    if-ne v1, v2, :cond_d

    :cond_9
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget v0, v0, Landroid/support/constraint/a/a/f;->S:F

    :goto_4
    iget-object v2, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->e()I

    move-result v4

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v2, v2, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->e()I

    move-result v2

    iget-object v6, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v7, v7, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v7

    if-ne v6, v7, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    move v2, v3

    move v4, v3

    :cond_a
    int-to-float v3, v4

    sub-float/2addr v1, v3

    int-to-float v3, v2

    sub-float/2addr v1, v3

    if-eqz v5, :cond_e

    iget-object v3, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v5, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v5, v5, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v5, v5, Landroid/support/constraint/a/a/m;->f:F

    int-to-float v2, v2

    add-float/2addr v2, v5

    mul-float v5, v1, v0

    add-float/2addr v2, v5

    iput v2, v3, Landroid/support/constraint/a/a/m;->f:F

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v2, v2, Landroid/support/constraint/a/a/m;->f:F

    int-to-float v3, v4

    sub-float/2addr v2, v3

    sub-float v0, v8, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/constraint/a/a/m;->f:F

    :goto_5
    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->f()V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/m;->f()V

    goto/16 :goto_0

    :cond_b
    move v5, v3

    goto :goto_2

    :cond_c
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v0, v0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v0, v0, Landroid/support/constraint/a/a/m;->f:F

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->f:F

    sub-float/2addr v0, v1

    goto :goto_3

    :cond_d
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget v0, v0, Landroid/support/constraint/a/a/f;->T:F

    goto :goto_4

    :cond_e
    iget-object v3, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v3, v3, Landroid/support/constraint/a/a/m;->f:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float v4, v1, v0

    add-float/2addr v3, v4

    iput v3, p0, Landroid/support/constraint/a/a/m;->f:F

    iget-object v3, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v4, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v4, v4, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v4, v4, Landroid/support/constraint/a/a/m;->f:F

    int-to-float v2, v2

    sub-float v2, v4, v2

    sub-float v0, v8, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, v3, Landroid/support/constraint/a/a/m;->f:F

    goto :goto_5

    :cond_f
    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_11

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v0

    iget-wide v2, v0, Landroid/support/constraint/a/f;->x:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Landroid/support/constraint/a/f;->x:J

    :cond_10
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v0, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput-object v1, v0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v0, v0, Landroid/support/constraint/a/a/m;->f:F

    iget v1, p0, Landroid/support/constraint/a/a/m;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/m;->f:F

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget v1, v1, Landroid/support/constraint/a/a/m;->f:F

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iget v2, v2, Landroid/support/constraint/a/a/m;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/a/a/m;->f:F

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->f()V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/m;->f()V

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Landroid/support/constraint/a/a/m;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->c()V

    goto/16 :goto_0
.end method

.method public a(ILandroid/support/constraint/a/a/m;I)V
    .locals 1

    iput p1, p0, Landroid/support/constraint/a/a/m;->g:I

    iput-object p2, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    int-to-float v0, p3

    iput v0, p0, Landroid/support/constraint/a/a/m;->d:F

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/o;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/m;F)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/m;->i:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/m;->f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_0
    iput-object p1, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput p2, p0, Landroid/support/constraint/a/a/m;->f:F

    iget v0, p0, Landroid/support/constraint/a/a/m;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->e()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->f()V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/m;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/a/a/m;->d:F

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/o;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V
    .locals 1

    iput-object p1, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/o;)V

    iput-object p3, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    iput p2, p0, Landroid/support/constraint/a/a/m;->m:I

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/n;->a(Landroid/support/constraint/a/a/o;)V

    return-void
.end method

.method a(Landroid/support/constraint/a/e;)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/h;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/m;->f:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iget-object v1, v1, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/m;->f:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/constraint/a/a/o;->b()V

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->c:Landroid/support/constraint/a/a/m;

    iput v1, p0, Landroid/support/constraint/a/a/m;->d:F

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->l:Landroid/support/constraint/a/a/n;

    iput v2, p0, Landroid/support/constraint/a/a/m;->m:I

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    iput v2, p0, Landroid/support/constraint/a/a/m;->o:I

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    iput v1, p0, Landroid/support/constraint/a/a/m;->f:F

    iput v1, p0, Landroid/support/constraint/a/a/m;->b:F

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iput v1, p0, Landroid/support/constraint/a/a/m;->k:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/m;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/m;->g:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/m;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iput p2, p0, Landroid/support/constraint/a/a/m;->k:F

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/m;ILandroid/support/constraint/a/a/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/m;->j:Landroid/support/constraint/a/a/m;

    iput-object p3, p0, Landroid/support/constraint/a/a/m;->n:Landroid/support/constraint/a/a/n;

    iput p2, p0, Landroid/support/constraint/a/a/m;->o:I

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    if-ne v0, v2, :cond_1

    iput v3, p0, Landroid/support/constraint/a/a/m;->g:I

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iput v3, v0, Landroid/support/constraint/a/a/m;->g:I

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->e()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v3, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v3, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    if-ne v2, v3, :cond_3

    :cond_2
    neg-int v0, v0

    :cond_3
    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;I)V

    goto :goto_0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/m;->f:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/m;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->e:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->g:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
