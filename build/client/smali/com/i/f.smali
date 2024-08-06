.class public final Lcom/i/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/i/f;->i:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/i/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/i/f;->g:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/i/f;->f:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/i/f;->b:I

    iput p2, p0, Lcom/i/f;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/i/f;->h:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/i/f;->i:I

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/i/f;->d:I

    iput p2, p0, Lcom/i/f;->e:I

    return-void
.end method

.method public c(II)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/i/f;->f:I

    if-eq v0, v8, :cond_0

    iget v0, p0, Lcom/i/f;->f:I

    if-ne v0, v9, :cond_13

    :cond_0
    move v0, p1

    move v1, p2

    :goto_0
    iget v2, p0, Lcom/i/f;->b:I

    invoke-static {v2, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    iget v2, p0, Lcom/i/f;->c:I

    invoke-static {v2, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    iget v4, p0, Lcom/i/f;->i:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/i/f;->g:I

    iput v0, p0, Lcom/i/f;->h:I

    return-void

    :cond_1
    iget v4, p0, Lcom/i/f;->b:I

    if-lez v4, :cond_12

    iget v4, p0, Lcom/i/f;->c:I

    if-lez v4, :cond_12

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v4, v6, :cond_8

    if-ne v5, v6, :cond_8

    int-to-float v0, v2

    int-to-float v3, v1

    div-float v4, v0, v3

    iget v0, p0, Lcom/i/f;->i:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/i/f;->b:I

    int-to-float v0, v0

    iget v3, p0, Lcom/i/f;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/i/f;->d:I

    if-lez v3, :cond_11

    iget v3, p0, Lcom/i/f;->e:I

    if-lez v3, :cond_11

    iget v3, p0, Lcom/i/f;->d:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/i/f;->e:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    move v3, v0

    :goto_2
    cmpl-float v0, v3, v4

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    iget v4, p0, Lcom/i/f;->i:I

    packed-switch v4, :pswitch_data_1

    :pswitch_0
    if-eqz v0, :cond_7

    iget v0, p0, Lcom/i/f;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v2, v1

    :goto_4
    move v3, v2

    goto :goto_1

    :pswitch_1
    const v0, 0x3fe38e39

    iget v3, p0, Lcom/i/f;->f:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/i/f;->f:I

    if-ne v3, v9, :cond_11

    :cond_2
    div-float v0, v10, v0

    move v3, v0

    goto :goto_2

    :pswitch_2
    const v0, 0x3faaaaab

    iget v3, p0, Lcom/i/f;->f:I

    if-eq v3, v8, :cond_3

    iget v3, p0, Lcom/i/f;->f:I

    if-ne v3, v9, :cond_11

    :cond_3
    div-float v0, v10, v0

    move v3, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_5

    int-to-float v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_4

    :cond_5
    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v2, v0

    move v0, v1

    goto :goto_4

    :pswitch_4
    if-eqz v0, :cond_6

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v2, v0

    move v0, v1

    goto :goto_4

    :cond_6
    int-to-float v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/i/f;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v2, v1

    goto :goto_4

    :cond_8
    if-ne v4, v7, :cond_a

    if-ne v5, v7, :cond_a

    iget v0, p0, Lcom/i/f;->b:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/i/f;->c:I

    mul-int/2addr v3, v2

    if-ge v0, v3, :cond_9

    iget v0, p0, Lcom/i/f;->b:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/i/f;->c:I

    div-int v2, v0, v2

    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/i/f;->b:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/i/f;->c:I

    mul-int/2addr v3, v2

    if-le v0, v3, :cond_10

    iget v0, p0, Lcom/i/f;->c:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/i/f;->b:I

    div-int v1, v0, v1

    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_a
    if-ne v4, v7, :cond_b

    iget v0, p0, Lcom/i/f;->c:I

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/i/f;->b:I

    div-int/2addr v0, v3

    if-ne v5, v6, :cond_f

    if-le v0, v1, :cond_f

    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_b
    if-ne v5, v7, :cond_c

    iget v0, p0, Lcom/i/f;->b:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/i/f;->c:I

    div-int v3, v0, v3

    if-ne v4, v6, :cond_d

    if-le v3, v2, :cond_d

    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_c
    iget v3, p0, Lcom/i/f;->b:I

    iget v0, p0, Lcom/i/f;->c:I

    if-ne v5, v6, :cond_e

    if-le v0, v1, :cond_e

    iget v0, p0, Lcom/i/f;->b:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/i/f;->c:I

    div-int v3, v0, v3

    :goto_5
    if-ne v4, v6, :cond_d

    if-le v3, v2, :cond_d

    iget v0, p0, Lcom/i/f;->c:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/i/f;->b:I

    div-int v1, v0, v1

    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v1, v0

    goto :goto_5

    :cond_f
    move v3, v2

    goto/16 :goto_1

    :cond_10
    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_11
    move v3, v0

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v0, p2

    move v1, p1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
