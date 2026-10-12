.class final Lcom/airbnb/lottie/au$a;
.super Lcom/airbnb/lottie/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final c:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Path;

.field private f:Lcom/airbnb/lottie/av$b;

.field private g:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/bf;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Lcom/airbnb/lottie/au$a$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/au$a$1;-><init>(Lcom/airbnb/lottie/au$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->c:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/au$a$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/au$a$2;-><init>(Lcom/airbnb/lottie/au$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/bl;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->d(Lcom/airbnb/lottie/n;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/au$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/au$a;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/au$1;->a:[I

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->f:Lcom/airbnb/lottie/av$b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/av$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/au$a;->f()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/au$a;->h()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/au$a;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, v7

    div-double/2addr v4, v8

    double-to-float v0, v4

    move/from16 v21, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v16, v21, v4

    float-to-int v4, v7

    int-to-float v4, v4

    sub-float v24, v7, v4

    const/4 v4, 0x0

    cmpl-float v4, v24, v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v24

    mul-float v4, v4, v16

    float-to-double v4, v4

    add-double/2addr v2, v4

    move-wide v4, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v9, v2

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v10, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v24, v3

    if-eqz v3, :cond_2

    sub-float v2, v14, v15

    mul-float v2, v2, v24

    add-float/2addr v2, v15

    float-to-double v12, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    double-to-float v6, v12

    float-to-double v12, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    double-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v8, v21, v24

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    float-to-double v12, v8

    add-double/2addr v12, v4

    move v11, v2

    move v4, v6

    :goto_4
    const/4 v5, 0x0

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v26, v6, v18

    const/4 v2, 0x0

    move/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v22, v12

    :goto_5
    move/from16 v0, v17

    int-to-double v2, v0

    cmpg-double v2, v2, v26

    if-gez v2, :cond_b

    if-eqz v18, :cond_3

    move v2, v14

    :goto_6
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_d

    move/from16 v0, v17

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v26, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_d

    mul-float v3, v21, v24

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move v13, v3

    :goto_7
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_0

    move/from16 v0, v17

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v26, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    move v2, v11

    :cond_0
    float-to-double v4, v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v7, v4

    float-to-double v2, v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    float-to-double v2, v13

    add-double v12, v22, v2

    if-nez v18, :cond_a

    const/4 v2, 0x1

    :goto_9
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v7

    move-wide/from16 v22, v12

    goto :goto_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_0

    :cond_2
    float-to-double v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    double-to-float v6, v12

    float-to-double v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    double-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, v16

    float-to-double v12, v0

    add-double/2addr v12, v4

    move v11, v2

    move v4, v6

    goto/16 :goto_4

    :cond_3
    move v2, v15

    goto/16 :goto_6

    :cond_4
    move/from16 v0, v19

    float-to-double v2, v0

    move/from16 v0, v20

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v6, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v25, v0

    float-to-double v2, v8

    float-to-double v4, v7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v28, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v29, v0

    if-eqz v18, :cond_5

    move v4, v9

    :goto_a
    if-eqz v18, :cond_6

    move v5, v10

    :goto_b
    if-eqz v18, :cond_7

    move v3, v15

    :goto_c
    if-eqz v18, :cond_8

    move v2, v14

    :goto_d
    mul-float v12, v3, v4

    const v30, 0x3ef4e26d    # 0.47829f

    mul-float v12, v12, v30

    mul-float/2addr v12, v6

    mul-float/2addr v3, v4

    const v4, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v3, v4

    mul-float v4, v3, v25

    mul-float v3, v2, v5

    const v6, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v3, v6

    mul-float v3, v3, v28

    mul-float/2addr v2, v5

    const v5, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v5

    mul-float v2, v2, v29

    const/4 v5, 0x0

    cmpl-float v5, v24, v5

    if-eqz v5, :cond_c

    if-nez v17, :cond_9

    mul-float v12, v12, v24

    mul-float v4, v4, v24

    move v6, v2

    move v5, v3

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    sub-float v3, v20, v12

    sub-float v4, v19, v4

    add-float/2addr v5, v7

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_8

    :cond_5
    move v4, v10

    goto :goto_a

    :cond_6
    move v5, v9

    goto :goto_b

    :cond_7
    move v3, v14

    goto :goto_c

    :cond_8
    move v2, v15

    goto :goto_d

    :cond_9
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v30, v26, v30

    cmpl-double v5, v28, v30

    if-nez v5, :cond_c

    mul-float v3, v3, v24

    mul-float v2, v2, v24

    move v6, v2

    move v5, v3

    goto :goto_e

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void

    :cond_c
    move v6, v2

    move v5, v3

    goto :goto_e

    :cond_d
    move/from16 v13, v16

    goto/16 :goto_7

    :cond_e
    move v10, v2

    goto/16 :goto_3

    :cond_f
    move v9, v2

    goto/16 :goto_2

    :cond_10
    move-wide v4, v2

    goto/16 :goto_1
.end method

.method private i()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v4

    div-double/2addr v2, v6

    double-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-double v2, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v7, v2

    float-to-double v2, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v2, v12

    add-double/2addr v10, v2

    int-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    const/4 v2, 0x0

    move v9, v2

    move v4, v8

    move v3, v7

    :goto_1
    int-to-double v6, v9

    cmpg-double v2, v6, v16

    if-gez v2, :cond_2

    float-to-double v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v6, v6, v18

    double-to-float v7, v6

    float-to-double v0, v14

    move-wide/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_1

    float-to-double v0, v4

    move-wide/from16 v18, v0

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v2, v0

    float-to-double v0, v8

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v6, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v5, v5, v18

    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v18, v18, v2

    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v15, v2

    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    sub-float/2addr v3, v5

    sub-float v4, v4, v18

    add-float v5, v7, v15

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_2
    float-to-double v2, v12

    add-double/2addr v10, v2

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v4, v8

    move v3, v7

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {v2}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/au$a;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method a(Lcom/airbnb/lottie/av;)V
    .locals 2

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->a()Lcom/airbnb/lottie/av$b;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->f:Lcom/airbnb/lottie/av$b;

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->b(Lcom/airbnb/lottie/n;)V

    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->b()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->c()Lcom/airbnb/lottie/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/z;->b()Lcom/airbnb/lottie/n;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->d()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->f()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->h()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->e()Lcom/airbnb/lottie/b;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->e()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->g()Lcom/airbnb/lottie/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/airbnb/lottie/av;->g()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/au$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->k:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->l:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/lottie/au$a;->m:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/n;)V

    :cond_c
    invoke-direct {p0}, Lcom/airbnb/lottie/au$a;->g()V

    return-void
.end method
