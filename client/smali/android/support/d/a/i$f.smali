.class Landroid/support/d/a/i$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final n:Landroid/graphics/Matrix;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field final c:Landroid/support/d/a/i$c;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/Boolean;

.field final k:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/d/a/i$f;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/d/a/i$f;->d:F

    iput v1, p0, Landroid/support/d/a/i$f;->e:F

    iput v1, p0, Landroid/support/d/a/i$f;->f:F

    iput v1, p0, Landroid/support/d/a/i$f;->g:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/d/a/i$f;->h:I

    iput-object v2, p0, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->k:Landroid/support/v4/e/a;

    new-instance v0, Landroid/support/d/a/i$c;

    invoke-direct {v0}, Landroid/support/d/a/i$c;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/support/d/a/i$f;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/d/a/i$f;->d:F

    iput v1, p0, Landroid/support/d/a/i$f;->e:F

    iput v1, p0, Landroid/support/d/a/i$f;->f:F

    iput v1, p0, Landroid/support/d/a/i$f;->g:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/d/a/i$f;->h:I

    iput-object v2, p0, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$f;->k:Landroid/support/v4/e/a;

    new-instance v0, Landroid/support/d/a/i$c;

    iget-object v1, p1, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    iget-object v2, p0, Landroid/support/d/a/i$f;->k:Landroid/support/v4/e/a;

    invoke-direct {v0, v1, v2}, Landroid/support/d/a/i$c;-><init>(Landroid/support/d/a/i$c;Landroid/support/v4/e/a;)V

    iput-object v0, p0, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    iget v0, p1, Landroid/support/d/a/i$f;->d:F

    iput v0, p0, Landroid/support/d/a/i$f;->d:F

    iget v0, p1, Landroid/support/d/a/i$f;->e:F

    iput v0, p0, Landroid/support/d/a/i$f;->e:F

    iget v0, p1, Landroid/support/d/a/i$f;->f:F

    iput v0, p0, Landroid/support/d/a/i$f;->f:F

    iget v0, p1, Landroid/support/d/a/i$f;->g:F

    iput v0, p0, Landroid/support/d/a/i$f;->g:F

    iget v0, p1, Landroid/support/d/a/i$f;->q:I

    iput v0, p0, Landroid/support/d/a/i$f;->q:I

    iget v0, p1, Landroid/support/d/a/i$f;->h:I

    iput v0, p0, Landroid/support/d/a/i$f;->h:I

    iget-object v0, p1, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    iget-object v0, p1, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$f;->k:Landroid/support/v4/e/a;

    iget-object v1, p1, Landroid/support/d/a/i$f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(FFFF)F
    .locals 2

    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v2, v1, v8

    float-to-double v2, v2

    aget v4, v1, v9

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aget v3, v1, v10

    float-to-double v4, v3

    aget v3, v1, v11

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    aget v4, v1, v8

    aget v5, v1, v9

    aget v6, v1, v10

    aget v1, v1, v11

    invoke-static {v4, v5, v6, v1}, Landroid/support/d/a/i$f;->a(FFFF)F

    move-result v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    :cond_0
    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroid/support/d/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    iget-object v0, p1, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p1, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p1, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    iget-object v0, p1, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a/i$d;

    instance-of v1, v0, Landroid/support/d/a/i$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/support/d/a/i$c;

    iget-object v2, p1, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/d/a/i$f;->a(Landroid/support/d/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/support/d/a/i$e;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/support/d/a/i$e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/d/a/i$f;->a(Landroid/support/d/a/i$c;Landroid/support/d/a/i$e;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/support/d/a/i$c;Landroid/support/d/a/i$e;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    int-to-float v0, p4

    iget v1, p0, Landroid/support/d/a/i$f;->f:F

    div-float/2addr v0, v1

    int-to-float v1, p5

    iget v2, p0, Landroid/support/d/a/i$f;->g:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p1, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0, v3}, Landroid/support/d/a/i$f;->a(Landroid/graphics/Matrix;)F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/support/d/a/i$e;->a(Landroid/graphics/Path;)V

    iget-object v0, p0, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Landroid/support/d/a/i$e;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_2
    check-cast p2, Landroid/support/d/a/i$b;

    iget v3, p2, Landroid/support/d/a/i$b;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p2, Landroid/support/d/a/i$b;->h:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    :cond_3
    iget v3, p2, Landroid/support/d/a/i$b;->g:F

    iget v4, p2, Landroid/support/d/a/i$b;->i:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    iget v4, p2, Landroid/support/d/a/i$b;->h:F

    iget v5, p2, Landroid/support/d/a/i$b;->i:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    :cond_4
    iget-object v5, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    iget-object v6, p0, Landroid/support/d/a/i$f;->l:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v5, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    cmpl-float v6, v3, v4

    if-lez v6, :cond_b

    iget-object v6, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v5, v0, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v3, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_5
    iget-object v3, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v0, p2, Landroid/support/d/a/i$b;->c:Landroid/support/v4/content/a/b;

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/support/d/a/i$b;->c:Landroid/support/v4/content/a/b;

    iget-object v3, p0, Landroid/support/d/a/i$f;->b:Landroid/graphics/Paint;

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroid/support/d/a/i$f;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/support/d/a/i$f;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_6
    iget-object v3, p0, Landroid/support/d/a/i$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->a()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v4, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p2, Landroid/support/d/a/i$b;->f:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v4, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    iget v0, p2, Landroid/support/d/a/i$b;->e:I

    if-nez v0, :cond_d

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    invoke-virtual {v4, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p2, Landroid/support/d/a/i$b;->a:Landroid/support/v4/content/a/b;

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/d/a/i$b;->a:Landroid/support/v4/content/a/b;

    iget-object v3, p0, Landroid/support/d/a/i$f;->a:Landroid/graphics/Paint;

    if-nez v3, :cond_8

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroid/support/d/a/i$f;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/support/d/a/i$f;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_8
    iget-object v3, p0, Landroid/support/d/a/i$f;->a:Landroid/graphics/Paint;

    iget-object v4, p2, Landroid/support/d/a/i$b;->k:Landroid/graphics/Paint$Join;

    if-eqz v4, :cond_9

    iget-object v4, p2, Landroid/support/d/a/i$b;->k:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_9
    iget-object v4, p2, Landroid/support/d/a/i$b;->j:Landroid/graphics/Paint$Cap;

    if-eqz v4, :cond_a

    iget-object v4, p2, Landroid/support/d/a/i$b;->j:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_a
    iget v4, p2, Landroid/support/d/a/i$b;->l:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->a()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v4, p0, Landroid/support/d/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p2, Landroid/support/d/a/i$b;->d:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_4
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v0, v2, v1

    iget v1, p2, Landroid/support/d/a/i$b;->b:F

    mul-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/support/d/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Landroid/support/d/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v0, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->b()I

    move-result v0

    iget v4, p2, Landroid/support/d/a/i$b;->f:F

    invoke-static {v0, v4}, Landroid/support/d/a/i;->a(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_d
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0}, Landroid/support/v4/content/a/b;->b()I

    move-result v0

    iget v4, p2, Landroid/support/d/a/i$b;->d:F

    invoke-static {v0, v4}, Landroid/support/d/a/i;->a(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    iget-object v1, p0, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    sget-object v2, Landroid/support/d/a/i$f;->n:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/d/a/i$f;->a(Landroid/support/d/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    invoke-virtual {v0}, Landroid/support/d/a/i$c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/i$f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a([I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$f;->c:Landroid/support/d/a/i$c;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i$c;->a([I)Z

    move-result v0

    return v0
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/support/d/a/i$f;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$f;->h:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/d/a/i$f;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/d/a/i$f;->h:I

    return-void
.end method
