.class public Landroid/support/v4/f/w;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f/w$i;,
        Landroid/support/v4/f/w$c;,
        Landroid/support/v4/f/w$g;,
        Landroid/support/v4/f/w$h;,
        Landroid/support/v4/f/w$a;,
        Landroid/support/v4/f/w$d;,
        Landroid/support/v4/f/w$f;,
        Landroid/support/v4/f/w$e;,
        Landroid/support/v4/f/w$b;
    }
.end annotation


# static fields
.field static final a:[I

.field private static final ai:Landroid/support/v4/f/w$i;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/f/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Landroid/widget/EdgeEffect;

.field private S:Landroid/widget/EdgeEffect;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/f/w$e;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/support/v4/f/w$e;

.field private ac:Landroid/support/v4/f/w$e;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/f/w$d;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Landroid/support/v4/f/w$f;

.field private af:I

.field private ag:I

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final aj:Ljava/lang/Runnable;

.field private ak:I

.field b:Landroid/support/v4/f/q;

.field c:I

.field private d:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/f/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/support/v4/f/w$b;

.field private final i:Landroid/graphics/Rect;

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:Z

.field private o:Landroid/support/v4/f/w$g;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/f/w;->a:[I

    new-instance v0, Landroid/support/v4/f/w$1;

    invoke-direct {v0}, Landroid/support/v4/f/w$1;-><init>()V

    sput-object v0, Landroid/support/v4/f/w;->e:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/f/w$2;

    invoke-direct {v0}, Landroid/support/v4/f/w$2;-><init>()V

    sput-object v0, Landroid/support/v4/f/w;->f:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/f/w$i;

    invoke-direct {v0}, Landroid/support/v4/f/w$i;-><init>()V

    sput-object v0, Landroid/support/v4/f/w;->ai:Landroid/support/v4/f/w$i;

    return-void
.end method

.method private a(IFII)I
    .locals 3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/f/w;->O:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/f/w;->M:I

    if-le v0, v1, :cond_2

    if-lez p3, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$b;

    iget v0, v0, Landroid/support/v4/f/w$b;->b:I

    iget v1, v1, Landroid/support/v4/f/w$b;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/f/w;->c:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    :goto_1
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 3

    if-lez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/f/w;->scrollTo(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->b(I)Landroid/support/v4/f/w$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/support/v4/f/w$b;->e:F

    iget v1, p0, Landroid/support/v4/f/w;->u:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/f/w;->scrollTo(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/f/w;->b(I)Landroid/support/v4/f/w$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/f/w;->t:F

    iget v0, v0, Landroid/support/v4/f/w$b;->e:F

    iget v4, p0, Landroid/support/v4/f/w;->u:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/f/w;->a(III)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->e(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->e(I)V

    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->a(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/f/w;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroid/support/v4/f/w;->d(I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/support/v4/f/w$b;ILandroid/support/v4/f/w$b;)V
    .locals 11

    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v7

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/f/w;->p:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    :goto_0
    if-eqz p3, :cond_6

    iget v0, p3, Landroid/support/v4/f/w$b;->b:I

    iget v1, p1, Landroid/support/v4/f/w$b;->b:I

    if-ge v0, v1, :cond_3

    iget v1, p3, Landroid/support/v4/f/w$b;->e:F

    iget v2, p3, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    add-int/lit8 v2, v0, 0x1

    move v1, v4

    :goto_1
    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :goto_2
    iget v5, v0, Landroid/support/v4/f/w$b;->b:I

    if-le v2, v5, :cond_1

    iget-object v5, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    :goto_3
    iget v5, v0, Landroid/support/v4/f/w$b;->b:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v5, v2}, Landroid/support/v4/f/q;->a(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iput v3, v0, Landroid/support/v4/f/w$b;->e:F

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v1, p1, Landroid/support/v4/f/w$b;->b:I

    if-le v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p3, Landroid/support/v4/f/w$b;->e:F

    add-int/lit8 v2, v0, -0x1

    :goto_4
    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :goto_5
    iget v5, v0, Landroid/support/v4/f/w$b;->b:I

    if-ge v2, v5, :cond_4

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    goto :goto_5

    :cond_4
    :goto_6
    iget v5, v0, Landroid/support/v4/f/w$b;->b:I

    if-le v2, v5, :cond_5

    iget-object v5, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v5, v2}, Landroid/support/v4/f/q;->a(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_5
    iget v5, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/support/v4/f/w$b;->e:F

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v2, p1, Landroid/support/v4/f/w$b;->e:F

    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    add-int/lit8 v1, v0, -0x1

    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    if-nez v0, :cond_7

    iget v0, p1, Landroid/support/v4/f/w$b;->e:F

    :goto_7
    iput v0, p0, Landroid/support/v4/f/w;->t:F

    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Landroid/support/v4/f/w$b;->e:F

    iget v3, p1, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/f/w;->u:F

    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_b

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    move v3, v2

    :goto_a
    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    if-le v1, v2, :cond_9

    iget-object v9, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/f/q;->a(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float/2addr v3, v1

    move v1, v2

    goto :goto_a

    :cond_7
    const v0, -0x800001

    goto :goto_7

    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_9
    iget v2, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    iput v2, v0, Landroid/support/v4/f/w$b;->e:F

    iget v0, v0, Landroid/support/v4/f/w$b;->b:I

    if-nez v0, :cond_a

    iput v2, p0, Landroid/support/v4/f/w;->t:F

    :cond_a
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_9

    :cond_b
    iget v0, p1, Landroid/support/v4/f/w$b;->e:F

    iget v1, p1, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    iget v0, p1, Landroid/support/v4/f/w$b;->b:I

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_e

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    move v3, v2

    :goto_c
    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    if-ge v1, v2, :cond_c

    iget-object v9, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/f/q;->a(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v3, v1

    move v1, v2

    goto :goto_c

    :cond_c
    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_d

    iget v2, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Landroid/support/v4/f/w;->u:F

    :cond_d
    iput v3, v0, Landroid/support/v4/f/w$b;->e:F

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_b

    :cond_e
    iput-boolean v4, p0, Landroid/support/v4/f/w;->U:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/f/w;->K:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/f/w;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->K:I

    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/f/w;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/f/w;->scrollTo(II)V

    if-eq v5, v1, :cond_1

    invoke-direct {p0, v5}, Landroid/support/v4/f/w;->d(I)Z

    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/f/w;->z:Z

    move v1, v2

    move v3, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-boolean v5, v0, Landroid/support/v4/f/w$b;->c:Z

    if-eqz v5, :cond_2

    iput-boolean v2, v0, Landroid/support/v4/f/w$b;->c:Z

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/support/v4/f/w;->aj:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/f/t;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v4/f/w;->aj:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private a(FF)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/f/w;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/f/w;->E:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IFI)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/f/w$e;->a(IFI)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/f/w$e;->a(IFI)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/f/w$e;->a(IFI)V

    :cond_3
    return-void
.end method

.method private b(Z)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/f/w;->af:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/f/w;->G:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroid/support/v4/f/w;->G:F

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v8

    int-to-float v0, v8

    iget v1, p0, Landroid/support/v4/f/w;->t:F

    mul-float v4, v0, v1

    int-to-float v0, v8

    iget v1, p0, Landroid/support/v4/f/w;->u:F

    mul-float v7, v0, v1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$b;

    iget v6, v0, Landroid/support/v4/f/w$b;->b:I

    if-eqz v6, :cond_5

    iget v0, v0, Landroid/support/v4/f/w$b;->e:F

    int-to-float v4, v8

    mul-float/2addr v4, v0

    move v0, v2

    :goto_0
    iget v6, v1, Landroid/support/v4/f/w$b;->b:I

    iget-object v9, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v9}, Landroid/support/v4/f/q;->a()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_4

    iget v1, v1, Landroid/support/v4/f/w$b;->e:F

    int-to-float v6, v8

    mul-float/2addr v1, v6

    move v6, v2

    :goto_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_0

    if-eqz v0, :cond_3

    sub-float v0, v4, v5

    iget-object v1, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v8

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_2
    iget v0, p0, Landroid/support/v4/f/w;->G:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/f/w;->G:F

    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/f/w;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/f/w;->d(I)Z

    return v3

    :cond_0
    cmpl-float v0, v5, v1

    if-lez v0, :cond_2

    if-eqz v6, :cond_1

    sub-float v0, v5, v1

    iget-object v2, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v8

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_3
    move v4, v1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_3

    :cond_2
    move v4, v5

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v6, v3

    move v1, v7

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/f/w$a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/f/w;->T:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/f/w;->V:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/f/w;->a(IFI)V

    iget-boolean v1, p0, Landroid/support/v4/f/w;->V:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/f/w;->h()Landroid/support/v4/f/w$b;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/f/w;->p:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/support/v4/f/w;->p:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, v1, Landroid/support/v4/f/w$b;->b:I

    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/f/w$b;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Landroid/support/v4/f/w;->V:Z

    invoke-virtual {p0, v5, v1, v2}, Landroid/support/v4/f/w;->a(IFI)V

    iget-boolean v0, p0, Landroid/support/v4/f/w;->V:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iget-boolean v0, v0, Landroid/support/v4/f/w$c;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->a(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->a(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->a(I)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 4

    iget v0, p0, Landroid/support/v4/f/w;->ag:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/f/w;->ai:Landroid/support/v4/f/w$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->b(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->b(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/w;->ac:Landroid/support/v4/f/w$e;

    invoke-interface {v0, p1}, Landroid/support/v4/f/w$e;->b(I)V

    :cond_3
    return-void
.end method

.method private g()Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/f/w;->K:I

    invoke-direct {p0}, Landroid/support/v4/f/w;->i()V

    iget-object v0, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()Landroid/support/v4/f/w$b;
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/f/w;->p:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    move v3, v4

    move-object v5, v0

    move v7, v2

    move v8, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    if-nez v6, :cond_6

    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    add-int/lit8 v11, v9, 0x1

    if-eq v2, v11, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->h:Landroid/support/v4/f/w$b;

    add-float v2, v8, v7

    add-float/2addr v2, v1

    iput v2, v0, Landroid/support/v4/f/w$b;->e:F

    add-int/lit8 v2, v9, 0x1

    iput v2, v0, Landroid/support/v4/f/w$b;->b:I

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget v7, v0, Landroid/support/v4/f/w$b;->b:I

    invoke-virtual {v2, v7}, Landroid/support/v4/f/q;->a(I)F

    move-result v2

    iput v2, v0, Landroid/support/v4/f/w$b;->d:F

    add-int/lit8 v3, v3, -0x1

    move-object v2, v0

    :goto_3
    iget v8, v2, Landroid/support/v4/f/w$b;->e:F

    iget v0, v2, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v0, v8

    add-float/2addr v0, v1

    if-nez v6, :cond_0

    cmpl-float v6, v10, v8

    if-ltz v6, :cond_2

    :cond_0
    cmpg-float v0, v10, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_5

    :cond_1
    move-object v5, v2

    :cond_2
    return-object v5

    :cond_3
    move v10, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget v9, v2, Landroid/support/v4/f/w$b;->b:I

    iget v7, v2, Landroid/support/v4/f/w$b;->d:F

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v5, v2

    move v6, v4

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_3
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    iput-boolean v0, p0, Landroid/support/v4/f/w;->C:Z

    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/f/w;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/f/w;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Landroid/support/v4/f/w$b;
    .locals 2

    new-instance v0, Landroid/support/v4/f/w$b;

    invoke-direct {v0}, Landroid/support/v4/f/w$b;-><init>()V

    iput p1, v0, Landroid/support/v4/f/w$b;->b:I

    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v1, p1}, Landroid/support/v4/f/q;->a(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/f/w$b;->d:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Landroid/support/v4/f/w$b;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v3, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/f/q;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v8

    iput v8, p0, Landroid/support/v4/f/w;->d:I

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/f/w;->A:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    move v0, v1

    :goto_0
    iget v5, p0, Landroid/support/v4/f/w;->c:I

    move v3, v2

    move v4, v2

    move v6, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-object v7, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v9, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/f/q;->a(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v9, -0x2

    if-ne v7, v9, :cond_4

    iget-object v6, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v4, p0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    :cond_3
    iget-object v6, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget v7, v0, Landroid/support/v4/f/w$b;->b:I

    iget-object v9, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v6, p0, Landroid/support/v4/f/w;->c:I

    iget v0, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v6, v0, :cond_b

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    goto :goto_2

    :cond_4
    iget v9, v0, Landroid/support/v4/f/w$b;->b:I

    if-eq v9, v7, :cond_0

    iget v6, v0, Landroid/support/v4/f/w$b;->b:I

    iget v9, p0, Landroid/support/v4/f/w;->c:I

    if-ne v6, v9, :cond_5

    move v5, v7

    :cond_5
    iput v7, v0, Landroid/support/v4/f/w$b;->b:I

    move v6, v1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->b(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/f/w;->e:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_9

    invoke-virtual {p0, v3}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iget-boolean v6, v0, Landroid/support/v4/f/w$c;->a:Z

    if-nez v6, :cond_8

    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/f/w$c;->c:F

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/f/w;->a(IZZ)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->requestLayout()V

    :cond_a
    return-void

    :cond_b
    move v6, v1

    goto :goto_2
.end method

.method a(I)V
    .locals 13

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    if-eq v1, p1, :cond_21

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->b(I)Landroid/support/v4/f/w$b;

    move-result-object v0

    iput p1, p0, Landroid/support/v4/f/w;->c:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/f/w;->f()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/f/w;->z:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v4/f/w;->f()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroid/support/v4/f/w;->A:I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/f/w;->c:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v2}, Landroid/support/v4/f/q;->a()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    iget v3, p0, Landroid/support/v4/f/w;->c:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v0, p0, Landroid/support/v4/f/w;->d:I

    if-eq v10, v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/f/w;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pager id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Pager class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Problematic adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget v4, v0, Landroid/support/v4/f/w$b;->b:I

    iget v5, p0, Landroid/support/v4/f/w;->c:I

    if-lt v4, v5, :cond_8

    iget v4, v0, Landroid/support/v4/f/w$b;->b:I

    iget v5, p0, Landroid/support/v4/f/w;->c:I

    if-ne v4, v5, :cond_20

    :goto_4
    if-nez v0, :cond_1f

    if-lez v10, :cond_1f

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/f/w;->a(II)Landroid/support/v4/f/w$b;

    move-result-object v0

    move-object v8, v0

    :goto_5
    if-eqz v8, :cond_6

    const/4 v5, 0x0

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_9

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :goto_6
    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v12

    if-gtz v12, :cond_a

    const/4 v3, 0x0

    :goto_7
    iget v6, p0, Landroid/support/v4/f/w;->c:I

    add-int/lit8 v7, v6, -0x1

    move v6, v2

    :goto_8
    if-ltz v7, :cond_4

    cmpl-float v2, v5, v3

    if-ltz v2, :cond_d

    if-ge v7, v9, :cond_d

    if-nez v0, :cond_b

    :cond_4
    iget v3, v8, Landroid/support/v4/f/w$b;->d:F

    add-int/lit8 v4, v6, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    move-object v7, v0

    :goto_9
    if-gtz v12, :cond_12

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    iget v0, p0, Landroid/support/v4/f/w;->c:I

    add-int/lit8 v5, v0, 0x1

    move-object v0, v7

    :goto_b
    if-ge v5, v10, :cond_5

    cmpl-float v7, v3, v2

    if-ltz v7, :cond_16

    if-le v5, v11, :cond_16

    if-nez v0, :cond_13

    :cond_5
    invoke-direct {p0, v8, v6, v1}, Landroid/support/v4/f/w;->a(Landroid/support/v4/f/w$b;ILandroid/support/v4/f/w$b;)V

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    iget-object v2, v8, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/f/q;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->b(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iput v1, v0, Landroid/support/v4/f/w$c;->f:I

    iget-boolean v4, v0, Landroid/support/v4/f/w$c;->a:Z

    if-nez v4, :cond_7

    iget v4, v0, Landroid/support/v4/f/w$c;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v3

    if-eqz v3, :cond_7

    iget v4, v3, Landroid/support/v4/f/w$b;->d:F

    iput v4, v0, Landroid/support/v4/f/w$c;->c:F

    iget v3, v3, Landroid/support/v4/f/w$b;->b:I

    iput v3, v0, Landroid/support/v4/f/w$c;->e:I

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    iget v6, v8, Landroid/support/v4/f/w$b;->d:F

    sub-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v12

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    goto/16 :goto_7

    :cond_b
    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v7, v2, :cond_1e

    iget-boolean v2, v0, Landroid/support/v4/f/w$b;->c:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v0, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p0, v7, v0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v4, v6, -0x1

    if-ltz v2, :cond_c

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :goto_d
    move v6, v4

    :goto_e
    add-int/lit8 v7, v7, -0x1

    move v4, v2

    goto/16 :goto_8

    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    if-eqz v0, :cond_f

    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v7, v2, :cond_f

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v5, v0

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_e

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    goto :goto_e

    :cond_f
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v7, v0}, Landroid/support/v4/f/w;->a(II)Landroid/support/v4/f/w$b;

    move-result-object v0

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    if-ltz v4, :cond_10

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :goto_f
    move v2, v4

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v12

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    move v2, v0

    goto/16 :goto_a

    :cond_13
    iget v7, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v5, v7, :cond_14

    iget-boolean v7, v0, Landroid/support/v4/f/w$b;->c:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v0, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    :cond_14
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    :cond_16
    if-eqz v0, :cond_18

    iget v7, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v5, v7, :cond_18

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/f/w;->a(II)Landroid/support/v4/f/w$b;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v3, v0

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    goto :goto_10

    :cond_1a
    invoke-direct {p0}, Landroid/support/v4/f/w;->f()V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->b(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1b

    iget v0, v0, Landroid/support/v4/f/w$b;->b:I

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    if-eq v0, v1, :cond_0

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v2, v2, Landroid/support/v4/f/w$b;->b:I

    iget v3, p0, Landroid/support/v4/f/w;->c:I

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    goto :goto_11

    :cond_1e
    move v2, v4

    goto/16 :goto_e

    :cond_1f
    move-object v8, v0

    goto/16 :goto_5

    :cond_20
    move-object v0, v3

    goto/16 :goto_4

    :cond_21
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected a(IFI)V
    .locals 10

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v4/f/w;->W:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v8

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_2

    invoke-virtual {p0, v5}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iget-boolean v3, v0, Landroid/support/v4/f/w$c;->a:Z

    if-nez v3, :cond_1

    move v3, v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/support/v4/f/w$c;->b:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v3, v1

    :goto_2
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v1, v0

    move v0, v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v1

    goto :goto_2

    :pswitch_3
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/f/w;->b(IFI)V

    iget-object v0, p0, Landroid/support/v4/f/w;->ae:Landroid/support/v4/f/w$f;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v3

    move v1, v4

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iget-boolean v0, v0, Landroid/support/v4/f/w$c;->a:Z

    if-eqz v0, :cond_3

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Landroid/support/v4/f/w;->ae:Landroid/support/v4/f/w$f;

    invoke-interface {v5, v4, v0}, Landroid/support/v4/f/w$f;->a(Landroid/view/View;F)V

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/f/w;->V:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(III)V
    .locals 10

    const/4 v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/f/w;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_2
    iget-object v1, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    invoke-virtual {p0, v6}, Landroid/support/v4/f/w;->setScrollState(I)V

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v8, v5

    int-to-float v5, v5

    invoke-virtual {p0, v7}, Landroid/support/v4/f/w;->a(F)F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_5

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_4
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput-boolean v6, p0, Landroid/support/v4/f/w;->n:Z

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget v7, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {v5, v7}, Landroid/support/v4/f/q;->a(I)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Landroid/support/v4/f/w;->p:I

    int-to-float v7, v7

    add-float/2addr v0, v7

    div-float v0, v5, v0

    add-float/2addr v0, v9

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_4
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/f/w;->z:Z

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/f/w;->a(IZZ)V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/f/w;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/f/w;->A:I

    iget v2, p0, Landroid/support/v4/f/w;->c:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/f/w;->c:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iput-boolean v3, v0, Landroid/support/v4/f/w$b;->c:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/v4/f/w;->c:I

    if-eq v0, p1, :cond_7

    move v1, v3

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/f/w;->T:Z

    if-eqz v0, :cond_9

    iput p1, p0, Landroid/support/v4/f/w;->c:I

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->e(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/f/w;->requestLayout()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/f/w;->a(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/f/w;->a(IZIZ)V

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->c()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->c(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->d()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->c(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v4/f/w;->c(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/f/w;->c(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/f/w;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/f/w$b;->b:I

    iget v5, p0, Landroid/support/v4/f/w;->c:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/f/w;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/f/w;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/f/w;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/f/w$b;->b:I

    iget v3, p0, Landroid/support/v4/f/w;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Landroid/support/v4/f/w;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/support/v4/f/w;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v4/f/w$c;

    iget-boolean v2, v0, Landroid/support/v4/f/w$c;->a:Z

    invoke-static {p1}, Landroid/support/v4/f/w;->c(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/f/w$c;->a:Z

    iget-boolean v2, p0, Landroid/support/v4/f/w;->x:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/f/w$c;->a:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/f/w$c;->d:Z

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/f/w;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    return-void

    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method b(I)Landroid/support/v4/f/w$b;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget v2, v0, Landroid/support/v4/f/w$b;->b:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b(Landroid/view/View;)Landroid/support/v4/f/w$b;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v0

    goto :goto_1
.end method

.method b()V
    .locals 1

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->a(I)V

    return-void
.end method

.method c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/f/w;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->findFocus()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    if-ne p1, v7, :cond_5

    iget-object v2, p0, Landroid/support/v4/f/w;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/f/w;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/f/w;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/f/w;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/f/w;->c()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->playSoundEffect(I)V

    :cond_0
    return v0

    :cond_1
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    if-ne v0, p0, :cond_2

    move v0, v4

    :goto_3
    if-nez v0, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_b

    iget-object v2, p0, Landroid/support/v4/f/w;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/f/w;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/f/w;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/f/w;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-gt v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/f/w;->d()Z

    move-result v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/f/w;->c()Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/f/w;->d()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v3

    if-gez p1, :cond_3

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/f/w;->t:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-lez p1, :cond_0

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/f/w;->u:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/f/w$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/f/w;->n:Z

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/f/w;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/f/w;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/f/w;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->a(Z)V

    goto :goto_0
.end method

.method d()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    iget-object v2, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v2}, Landroid/support/v4/f/q;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/support/v4/f/w;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/f/w;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/f/w;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/f/w$b;->b:I

    iget v5, p0, Landroid/support/v4/f/w;->c:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v1}, Landroid/support/v4/f/q;->a()I

    move-result v1

    if-le v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/f/w;->t:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/f/w;->u:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v4/f/w;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v1, p0, Landroid/support/v4/f/w;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v4/f/w$c;

    invoke-direct {v0}, Landroid/support/v4/f/w$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v4/f/w$c;

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/f/w$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/f/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/support/v4/f/w;->ag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    iget v0, v0, Landroid/support/v4/f/w$c;->f:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroid/support/v4/f/w;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroid/support/v4/f/w;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/f/w;->T:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/w;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/f/w;->p:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/f/w;->p:I

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v9, v1, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$b;

    iget v4, v1, Landroid/support/v4/f/w$b;->e:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v3, v1, Landroid/support/v4/f/w$b;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/f/w$b;

    iget v11, v2, Landroid/support/v4/f/w$b;->b:I

    move v5, v3

    move v2, v6

    :goto_0
    if-ge v5, v11, :cond_2

    :goto_1
    iget v3, v1, Landroid/support/v4/f/w$b;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$b;

    goto :goto_1

    :cond_0
    iget v3, v1, Landroid/support/v4/f/w$b;->b:I

    if-ne v5, v3, :cond_3

    iget v3, v1, Landroid/support/v4/f/w$b;->e:F

    iget v4, v1, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v8

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/f/w$b;->e:F

    iget v6, v1, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v4, v6

    add-float/2addr v4, v9

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/f/w;->p:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v12, v7

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/f/w;->r:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/f/w;->p:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/f/w;->s:I

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v6, v7, v8

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v3, v5}, Landroid/support/v4/f/q;->a(I)F

    move-result v6

    add-float v3, v4, v6

    int-to-float v12, v8

    mul-float/2addr v3, v12

    add-float/2addr v6, v9

    add-float/2addr v4, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/f/w;->g()Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/f/w;->B:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/f/w;->C:Z

    if-nez v1, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroid/support/v4/f/w;->B:Z

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/support/v4/f/w;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/f/w;->G:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v0, p0, Landroid/support/v4/f/w;->J:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/f/w;->G:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/f/w;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/f/w;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v7, p0, Landroid/support/v4/f/w;->G:F

    iput v10, p0, Landroid/support/v4/f/w;->H:F

    iput-boolean v6, p0, Landroid/support/v4/f/w;->C:Z

    goto :goto_0

    :cond_7
    iget v0, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_a

    iput-boolean v6, p0, Landroid/support/v4/f/w;->B:Z

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->c(Z)V

    invoke-virtual {p0, v6}, Landroid/support/v4/f/w;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/f/w;->I:F

    iget v1, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/f/w;->G:F

    iput v10, p0, Landroid/support/v4/f/w;->H:F

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Landroid/support/v4/f/w;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Landroid/support/v4/f/w;->I:F

    iget v1, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    iput-boolean v6, p0, Landroid/support/v4/f/w;->C:Z

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->I:F

    iput v0, p0, Landroid/support/v4/f/w;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->J:F

    iput v0, p0, Landroid/support/v4/f/w;->H:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->K:I

    iput-boolean v2, p0, Landroid/support/v4/f/w;->C:Z

    iput-boolean v6, p0, Landroid/support/v4/f/w;->n:Z

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/support/v4/f/w;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/f/w;->P:I

    if-le v0, v1, :cond_b

    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/f/w;->z:Z

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    iput-boolean v6, p0, Landroid/support/v4/f/w;->B:Z

    invoke-direct {p0, v6}, Landroid/support/v4/f/w;->c(Z)V

    invoke-virtual {p0, v6}, Landroid/support/v4/f/w;->setScrollState(I)V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v4/f/w;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/f/w;->B:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v11

    sub-int v12, p4, p2

    sub-int v13, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v14

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_5

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$c;

    iget-boolean v6, v1, Landroid/support/v4/f/w$c;->a:Z

    if-eqz v6, :cond_5

    iget v6, v1, Landroid/support/v4/f/w$c;->b:I

    and-int/lit8 v6, v6, 0x7

    iget v1, v1, Landroid/support/v4/f/w$c;->b:I

    and-int/lit8 v16, v1, 0x70

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v9, v8

    move v6, v4

    move v7, v8

    :goto_1
    sparse-switch v16, :sswitch_data_0

    move v1, v2

    move v4, v2

    :goto_2
    add-int v2, v9, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v15, v2, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v5, 0x1

    move v2, v4

    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v5, v1

    move v4, v6

    move v8, v7

    goto :goto_0

    :pswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v8, v1

    move v9, v8

    move v6, v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    move v6, v4

    move v7, v8

    goto :goto_1

    :pswitch_3
    sub-int v1, v12, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    move v9, v1

    move v6, v4

    move v7, v8

    goto :goto_1

    :sswitch_0
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v4, v2, v1

    move v1, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v2

    goto :goto_2

    :sswitch_2
    sub-int v1, v13, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v2

    goto :goto_2

    :cond_0
    sub-int v1, v12, v8

    sub-int v6, v1, v4

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/w$c;

    iget-boolean v9, v1, Landroid/support/v4/f/w$c;->a:Z

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v9

    if-eqz v9, :cond_2

    int-to-float v10, v6

    iget v9, v9, Landroid/support/v4/f/w$b;->e:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v8

    iget-boolean v10, v1, Landroid/support/v4/f/w$c;->d:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/support/v4/f/w$c;->d:Z

    int-to-float v10, v6

    iget v1, v1, Landroid/support/v4/f/w$c;->c:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v10, v13, v2

    sub-int/2addr v10, v3

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v9, v2, v1, v10}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/f/w;->r:I

    sub-int v1, v13, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/f/w;->s:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v4/f/w;->W:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/f/w;->T:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/f/w;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f/w;->a(IZIZ)V

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/f/w;->T:Z

    return-void

    :cond_5
    move v1, v5

    move v6, v4

    move v7, v8

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/f/w;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/f/w;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/f/w;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Landroid/support/v4/f/w;->D:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/f/w;->E:I

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_8

    invoke-virtual {p0, v9}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/f/w$c;->a:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/support/v4/f/w$c;->b:I

    and-int/lit8 v5, v1, 0x7

    iget v1, v0, Landroid/support/v4/f/w$c;->b:I

    and-int/lit8 v3, v1, 0x70

    const/high16 v2, -0x80000000

    const/high16 v1, -0x80000000

    const/16 v7, 0x30

    if-eq v3, v7, :cond_0

    const/16 v7, 0x50

    if-ne v3, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v8, v3

    :goto_1
    const/4 v3, 0x3

    if-eq v5, v3, :cond_1

    const/4 v3, 0x5

    if-ne v5, v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    move v7, v3

    :goto_2
    if-eqz v8, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    iget v3, v0, Landroid/support/v4/f/w$c;->width:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_e

    const/high16 v5, 0x40000000    # 2.0f

    iget v2, v0, Landroid/support/v4/f/w$c;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    iget v2, v0, Landroid/support/v4/f/w$c;->width:I

    move v3, v2

    :goto_4
    iget v2, v0, Landroid/support/v4/f/w$c;->height:I

    const/4 v12, -0x2

    if-eq v2, v12, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, v0, Landroid/support/v4/f/w$c;->height:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_c

    iget v0, v0, Landroid/support/v4/f/w$c;->height:I

    :goto_5
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v11, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v8, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v6, v0

    :cond_3
    :goto_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    move v7, v3

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_6

    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->v:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->w:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/f/w;->x:Z

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/f/w;->x:Z

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$c;

    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/f/w$c;->a:Z

    if-nez v5, :cond_a

    :cond_9
    int-to-float v5, v4

    iget v0, v0, Landroid/support/v4/f/w$c;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v5, p0, Landroid/support/v4/f/w;->w:I

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_b
    return-void

    :cond_c
    move v0, v6

    goto :goto_5

    :cond_d
    move v3, v4

    goto/16 :goto_4

    :cond_e
    move v3, v4

    move v5, v2

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getChildCount()I

    move-result v0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    move v2, v3

    move v4, v5

    :goto_0
    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v4/f/w;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->a(Landroid/view/View;)Landroid/support/v4/f/w$b;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/f/w$b;->b:I

    iget v7, p0, Landroid/support/v4/f/w;->c:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/f/w$h;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/f/w$h;

    invoke-virtual {p1}, Landroid/support/v4/f/w$h;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v1, p1, Landroid/support/v4/f/w$h;->c:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/f/w$h;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/q;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroid/support/v4/f/w$h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/f/w;->a(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/f/w$h;->a:I

    iput v0, p0, Landroid/support/v4/f/w;->j:I

    iget-object v0, p1, Landroid/support/v4/f/w$h;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/f/w;->k:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/f/w$h;->d:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/f/w;->l:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/f/w$h;

    invoke-direct {v1, v0}, Landroid/support/v4/f/w$h;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    iput v0, v1, Landroid/support/v4/f/w$h;->a:I

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/f/w$h;->c:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/support/v4/f/w;->p:I

    iget v1, p0, Landroid/support/v4/f/w;->p:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/f/w;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/f/w;->Q:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->a()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/f/w;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/f/w;->z:Z

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->I:F

    iput v0, p0, Landroid/support/v4/f/w;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->J:F

    iput v0, p0, Landroid/support/v4/f/w;->H:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->K:I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v4/f/w;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    invoke-direct {p0}, Landroid/support/v4/f/w;->g()Z

    move-result v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/f/w;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, p0, Landroid/support/v4/f/w;->H:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    iput-boolean v1, p0, Landroid/support/v4/f/w;->B:Z

    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->c(Z)V

    iget v0, p0, Landroid/support/v4/f/w;->I:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/f/w;->I:F

    iget v3, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Landroid/support/v4/f/w;->G:F

    iput v5, p0, Landroid/support/v4/f/w;->H:F

    invoke-virtual {p0, v1}, Landroid/support/v4/f/w;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroid/support/v4/f/w;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/f/w;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/f/w;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Landroid/support/v4/f/w;->I:F

    iget v3, p0, Landroid/support/v4/f/w;->F:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/f/w;->L:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/f/w;->N:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroid/support/v4/f/w;->K:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroid/support/v4/f/w;->z:Z

    invoke-direct {p0}, Landroid/support/v4/f/w;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/support/v4/f/w;->h()Landroid/support/v4/f/w$b;

    move-result-object v4

    iget v5, p0, Landroid/support/v4/f/w;->p:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, v4, Landroid/support/v4/f/w$b;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/f/w$b;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/f/w$b;->d:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    iget v3, p0, Landroid/support/v4/f/w;->K:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/f/w;->I:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v6, v2, v0, v3}, Landroid/support/v4/f/w;->a(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/support/v4/f/w;->a(IZZI)V

    invoke-direct {p0}, Landroid/support/v4/f/w;->g()Z

    move-result v2

    goto/16 :goto_1

    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/f/w;->B:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/f/w;->c:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v4/f/w;->a(IZIZ)V

    invoke-direct {p0}, Landroid/support/v4/f/w;->g()Z

    move-result v2

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/f/w;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->K:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/f/w;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/f/w;->G:F

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/f/w;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/f/w;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/f/q;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, v5}, Landroid/support/v4/f/q;->a(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$b;

    iget-object v3, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget v4, v0, Landroid/support/v4/f/w$b;->b:I

    iget-object v0, v0, Landroid/support/v4/f/w$b;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/f/q;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->b(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/v4/f/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/v4/f/w;->e()V

    iput v2, p0, Landroid/support/v4/f/w;->c:I

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/f/w;->scrollTo(II)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iput-object p1, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iput v2, p0, Landroid/support/v4/f/w;->d:I

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/w;->o:Landroid/support/v4/f/w$g;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/f/w$g;

    invoke-direct {v0, p0}, Landroid/support/v4/f/w$g;-><init>(Landroid/support/v4/f/w;)V

    iput-object v0, p0, Landroid/support/v4/f/w;->o:Landroid/support/v4/f/w$g;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v3, p0, Landroid/support/v4/f/w;->o:Landroid/support/v4/f/w$g;

    invoke-virtual {v0, v3}, Landroid/support/v4/f/q;->a(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/f/w;->z:Z

    iget-boolean v0, p0, Landroid/support/v4/f/w;->T:Z

    iput-boolean v6, p0, Landroid/support/v4/f/w;->T:Z

    iget-object v3, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    invoke-virtual {v3}, Landroid/support/v4/f/q;->a()I

    move-result v3

    iput v3, p0, Landroid/support/v4/f/w;->d:I

    iget v3, p0, Landroid/support/v4/f/w;->j:I

    if-ltz v3, :cond_4

    iget-object v0, p0, Landroid/support/v4/f/w;->b:Landroid/support/v4/f/q;

    iget-object v3, p0, Landroid/support/v4/f/w;->k:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/f/w;->l:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/f/q;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p0, Landroid/support/v4/f/w;->j:I

    invoke-virtual {p0, v0, v2, v6}, Landroid/support/v4/f/w;->a(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/f/w;->j:I

    iput-object v5, p0, Landroid/support/v4/f/w;->k:Landroid/os/Parcelable;

    iput-object v5, p0, Landroid/support/v4/f/w;->l:Ljava/lang/ClassLoader;

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v4/f/w;->ad:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    iget-object v0, p0, Landroid/support/v4/f/w;->ad:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/w$d;

    invoke-interface {v0, p0, v1, p1}, Landroid/support/v4/f/w$d;->a(Landroid/support/v4/f/w;Landroid/support/v4/f/q;Landroid/support/v4/f/q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/f/w;->requestLayout()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/f/w;->z:Z

    iget-boolean v0, p0, Landroid/support/v4/f/w;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/f/w;->a(IZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Landroid/support/v4/f/w;->A:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/support/v4/f/w;->A:I

    invoke-virtual {p0}, Landroid/support/v4/f/w;->b()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/f/w$e;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v4/f/w;->ab:Landroid/support/v4/f/w$e;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/f/w;->p:I

    iput p1, p0, Landroid/support/v4/f/w;->p:I

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/f/w;->a(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f/w;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/f/w;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/f/w;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v4/f/w;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Landroid/support/v4/f/w;->ak:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v4/f/w;->ak:I

    iget-object v0, p0, Landroid/support/v4/f/w;->ae:Landroid/support/v4/f/w$f;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/f/w;->b(Z)V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/f/w;->f(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/w;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
