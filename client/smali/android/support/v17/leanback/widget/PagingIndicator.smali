.class public Landroid/support/v17/leanback/widget/PagingIndicator;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PagingIndicator$a;
    }
.end annotation


# static fields
.field private static final n:Landroid/animation/TimeInterpolator;

.field private static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private final B:Landroid/animation/AnimatorSet;

.field private final C:Landroid/animation/AnimatorSet;

.field private final D:Landroid/animation/AnimatorSet;

.field a:Z

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field f:I

.field g:I

.field final h:Landroid/graphics/Paint;

.field final i:Landroid/graphics/Paint;

.field j:Landroid/graphics/Bitmap;

.field k:Landroid/graphics/Paint;

.field final l:Landroid/graphics/Rect;

.field final m:F

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

.field private v:[I

.field private w:[I

.field private x:[I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->n:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->o:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->p:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->q:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->D:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v0, Landroid/support/v17/leanback/a$l;->PagingIndicator:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_lbDotRadius:I

    sget v5, Landroid/support/v17/leanback/a$c;->lb_page_indicator_dot_radius:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->b:I

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_arrowRadius:I

    sget v5, Landroid/support/v17/leanback/a$c;->lb_page_indicator_arrow_radius:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->d:I

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_dotToDotGap:I

    sget v5, Landroid/support/v17/leanback/a$c;->lb_page_indicator_dot_gap:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_dotToArrowGap:I

    sget v5, Landroid/support/v17/leanback/a$c;->lb_page_indicator_arrow_gap:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_dotBgColor:I

    sget v5, Landroid/support/v17/leanback/a$b;->lb_page_indicator_dot:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->b(Landroid/content/res/TypedArray;II)I

    move-result v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->h:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_arrowBgColor:I

    sget v5, Landroid/support/v17/leanback/a$b;->lb_page_indicator_arrow_background:I

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->b(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->g:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->k:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_arrowColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/support/v17/leanback/a$l;->PagingIndicator_arrowColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    sget v0, Landroid/support/v17/leanback/a$b;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v4, Landroid/support/v17/leanback/a$c;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->t:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->i:Landroid/graphics/Paint;

    sget v4, Landroid/support/v17/leanback/a$c;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->i:Landroid/graphics/Paint;

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->t:I

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-float v3, v3

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->l:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->d:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->m:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->B:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->B:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    invoke-direct {p0, v8, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(FF)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v2

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->b(FF)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->b()Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->C:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->C:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    invoke-direct {p0, v9, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->a(FF)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v2

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->b(FF)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->b()Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->D:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->B:Landroid/animation/AnimatorSet;

    aput-object v4, v3, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->C:Landroid/animation/AnimatorSet;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method private a(FF)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->o:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->n:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/a$d;->lb_ic_nav_arrow:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private b()Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->q:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->n:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private b(FF)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->p:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->n:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v4

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    if-eqz v3, :cond_0

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    add-int/2addr v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    add-int/2addr v4, v1

    aput v4, v3, v6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    aput v1, v3, v6

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    add-int/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    add-int/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    add-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v3, v4, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    sub-int/2addr v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    sub-int v4, v1, v4

    aput v4, v3, v6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    aput v1, v3, v6

    :goto_1
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    sub-int/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    sub-int/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    sub-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->f:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->b()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v4, v1, v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->A:I

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_1
    iput v1, v4, Landroid/support/v17/leanback/widget/PagingIndicator$a;->h:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    aget v4, v4, v0

    int-to-float v4, v4

    iput v4, v1, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->A:I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    if-ge v1, v4, :cond_2

    :goto_2
    iput v2, v0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->h:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->b()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/support/v17/leanback/widget/PagingIndicator$a;->h:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->s:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->r:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private setSelectedPage(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->z:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->d()V

    goto :goto_0
.end method


# virtual methods
.method getDotSelectedLeftX()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->w:[I

    return-object v0
.end method

.method getDotSelectedRightX()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->x:[I

    return-object v0
.end method

.method getDotSelectedX()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->v:[I

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    return-void

    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->c()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->c()V

    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->g:I

    return-void
.end method

.method public setArrowColor(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->k:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->k:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPageCount(I)V
    .locals 4

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The page count should be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    new-array v0, v0, [Landroid/support/v17/leanback/widget/PagingIndicator$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    move v0, v1

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->y:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->u:[Landroid/support/v17/leanback/widget/PagingIndicator$a;

    new-instance v3, Landroid/support/v17/leanback/widget/PagingIndicator$a;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;-><init>(Landroid/support/v17/leanback/widget/PagingIndicator;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->c()V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void
.end method
