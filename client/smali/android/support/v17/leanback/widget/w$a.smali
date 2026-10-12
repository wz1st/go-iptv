.class Landroid/support/v17/leanback/widget/w$a;
.super Landroid/text/style/ReplacementSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/w;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/w;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p2, p0, Landroid/support/v17/leanback/widget/w$a;->b:I

    iput p3, p0, Landroid/support/v17/leanback/widget/w$a;->c:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15

    move-object/from16 v0, p9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    float-to-int v6, v4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/w;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    div-int v9, v6, v8

    rem-int v4, v6, v8

    div-int/lit8 v10, v4, 0x2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/w;->a(Landroid/view/View;)Z

    move-result v11

    iget-object v4, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/w;->a:Ljava/util/Random;

    iget v5, p0, Landroid/support/v17/leanback/widget/w$a;->b:I

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v9, :cond_0

    iget v4, p0, Landroid/support/v17/leanback/widget/w$a;->c:I

    add-int/2addr v4, v5

    iget-object v13, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget v13, v13, Landroid/support/v17/leanback/widget/w;->d:I

    if-lt v4, v13, :cond_1

    :cond_0
    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    mul-int v4, v5, v8

    add-int/2addr v4, v10

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v4, v13

    int-to-float v4, v4

    if-eqz v11, :cond_2

    int-to-float v13, v6

    add-float v13, v13, p5

    sub-float v4, v13, v4

    int-to-float v13, v7

    sub-float/2addr v4, v13

    :goto_1
    iget-object v13, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v13, v13, Landroid/support/v17/leanback/widget/w;->a:Ljava/util/Random;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x3f

    move-object/from16 v0, p9

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v13, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v13, v13, Landroid/support/v17/leanback/widget/w;->a:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextBoolean()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v13, v13, Landroid/support/v17/leanback/widget/w;->c:Landroid/graphics/Bitmap;

    iget-object v14, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/w;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v13, v4, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    add-float v4, v4, p5

    goto :goto_1

    :cond_3
    iget-object v13, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v13, v13, Landroid/support/v17/leanback/widget/w;->b:Landroid/graphics/Bitmap;

    iget-object v14, p0, Landroid/support/v17/leanback/widget/w$a;->a:Landroid/support/v17/leanback/widget/w;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/w;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v13, v4, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
