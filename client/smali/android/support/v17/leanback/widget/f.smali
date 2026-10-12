.class final Landroid/support/v17/leanback/widget/f;
.super Landroid/support/v7/widget/RecyclerView$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/f$e;,
        Landroid/support/v17/leanback/widget/f$c;,
        Landroid/support/v17/leanback/widget/f$d;,
        Landroid/support/v17/leanback/widget/f$a;,
        Landroid/support/v17/leanback/widget/f$b;
    }
.end annotation


# static fields
.field private static final I:Landroid/graphics/Rect;

.field static u:[I


# instance fields
.field private H:Landroid/support/v7/widget/ai;

.field private J:Landroid/support/v17/leanback/widget/n;

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/o;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:[I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private final Y:Landroid/support/v17/leanback/widget/i;

.field private Z:I

.field a:I

.field private aa:I

.field private ab:[I

.field private ac:Landroid/support/v17/leanback/widget/c;

.field private final ad:Ljava/lang/Runnable;

.field private ae:Landroid/support/v17/leanback/widget/e$b;

.field final b:Landroid/support/v17/leanback/widget/a;

.field c:I

.field d:Landroid/support/v7/widget/RecyclerView$u;

.field e:I

.field f:I

.field final g:Landroid/util/SparseIntArray;

.field h:[I

.field i:Landroid/support/v7/widget/RecyclerView$p;

.field j:I

.field k:Landroid/support/v17/leanback/widget/m;

.field l:I

.field m:I

.field n:Landroid/support/v17/leanback/widget/f$a;

.field o:Landroid/support/v17/leanback/widget/f$d;

.field p:I

.field q:I

.field r:I

.field s:Landroid/support/v17/leanback/widget/e;

.field final t:Landroid/support/v17/leanback/widget/aa;

.field final v:Landroid/support/v17/leanback/widget/z;

.field w:Landroid/support/v17/leanback/widget/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/a;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->a:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    invoke-static {p0}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/RecyclerView$i;)Landroid/support/v7/widget/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->H:Landroid/support/v7/widget/ai;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->g:Landroid/util/SparseIntArray;

    const v0, 0x36200

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iput-object v2, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/f;->k:Landroid/support/v17/leanback/widget/m;

    iput v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    const v0, 0x800033

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->V:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->W:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->X:I

    new-instance v0, Landroid/support/v17/leanback/widget/aa;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    new-instance v0, Landroid/support/v17/leanback/widget/i;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/i;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->ab:[I

    new-instance v0, Landroid/support/v17/leanback/widget/z;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/z;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    new-instance v0, Landroid/support/v17/leanback/widget/f$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/f$1;-><init>(Landroid/support/v17/leanback/widget/f;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->ad:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/widget/f$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/f$2;-><init>(Landroid/support/v17/leanback/widget/f;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->ae:Landroid/support/v17/leanback/widget/e$b;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iput v3, p0, Landroid/support/v17/leanback/widget/f;->p:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->f(Z)V

    return-void
.end method

.method private A(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->C(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->B(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private B(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private B(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f$b;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->a()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private C(I)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->O:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->O:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private C(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f$b;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->b()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private D(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v2, :cond_0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private D(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->f()Landroid/support/v17/leanback/widget/j;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/i$a;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->a(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/i$a;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/f$b;->a(ILandroid/view/View;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/i$a;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/i$a;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->a(I)V

    goto :goto_0
.end method

.method private E(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->z(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->d(I)I

    move-result v0

    return v0
.end method

.method private E(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private F(I)I
    .locals 7

    const/high16 v6, 0x40000

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v1, :cond_3

    if-lez p1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->h()I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    move v3, p1

    :cond_1
    :goto_0
    if-nez v3, :cond_4

    :goto_1
    return v2

    :cond_2
    if-gez p1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->k()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->f()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_3
    move v3, p1

    goto :goto_0

    :cond_4
    neg-int v0, v3

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->E(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->y()V

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_9

    if-lez v3, :cond_a

    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ap()V

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v4

    if-le v4, v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    if-lez v3, :cond_d

    :cond_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ak()V

    :goto_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v5

    if-ge v5, v4, :cond_e

    :goto_5
    or-int/2addr v0, v1

    if-eqz v0, :cond_8

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ah()V

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->y()V

    move v2, v3

    goto :goto_1

    :cond_9
    if-ltz v3, :cond_6

    :cond_a
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ao()V

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    if-ltz v3, :cond_7

    :cond_d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->al()V

    goto :goto_4

    :cond_e
    move v1, v2

    goto :goto_5
.end method

.method private F(Landroid/view/View;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->A(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa;->b()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/aa$a;->d(I)I

    move-result v0

    return v0
.end method

.method private G(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->D(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->q:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ar()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->invalidate()V

    goto :goto_0
.end method

.method private G(Landroid/view/View;)I
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->r(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private H(I)I
    .locals 7

    const/high16 v6, 0x40000

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x11

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v5, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v4

    :cond_1
    :goto_1
    :sswitch_0
    return v0

    :sswitch_1
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v2, v6

    if-nez v2, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    :sswitch_3
    move v0, v2

    goto :goto_1

    :sswitch_4
    move v0, v3

    goto :goto_1

    :cond_3
    iget v5, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-ne v5, v1, :cond_0

    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_5
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    :sswitch_6
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_4

    :sswitch_7
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_5
        0x21 -> :sswitch_0
        0x42 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private a(ILandroid/view/View;Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->g()[I

    move-result-object v2

    aget v1, v2, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->g()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int v0, v1, v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private a(III[I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->leftMargin:I

    iget v3, v0, Landroid/support/v17/leanback/widget/f$b;->rightMargin:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v17/leanback/widget/f$b;->topMargin:I

    iget v4, v0, Landroid/support/v17/leanback/widget/f$b;->bottomMargin:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->S()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->U()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Landroid/support/v17/leanback/widget/f$b;->width:I

    invoke-static {p2, v2, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->T()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->V()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->height:I

    invoke-static {p3, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->j(Landroid/view/View;)I

    move-result v2

    aput v2, p4, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->k(Landroid/view/View;)I

    move-result v2

    aput v2, p4, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(IIZ)V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->F(I)I

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/f;->G(I)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_1

    move v0, p2

    move v1, p1

    :goto_1
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v2, v1, v0}, Landroid/support/v17/leanback/widget/a;->a(II)V

    goto :goto_0

    :cond_1
    move v0, p1

    move v1, p2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v2, v1, v0}, Landroid/support/v17/leanback/widget/a;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->n()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    if-eq v1, v2, :cond_4

    :cond_2
    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iput v3, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->m()V

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->invalidate()V

    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    if-nez p3, :cond_0

    :cond_6
    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_0

    :cond_7
    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v0, v0, v3

    add-int/2addr v0, p4

    sget-object v1, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v1, v1, v4

    add-int/2addr v1, p5

    invoke-direct {p0, v0, v1, p3}, Landroid/support/v17/leanback/widget/f;->a(IIZ)V

    goto :goto_0
.end method

.method private a(ZZII)V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v2, p3, p4}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;ZII)V

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/a;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/a;->focusableViewAvailable(Landroid/view/View;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2, p3, p4}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;ZII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/a;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private a(Landroid/view/View;[I)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v1

    iget-object v6, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/aa$a;->p()I

    move-result v7

    iget-object v8, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v8, v5}, Landroid/support/v17/leanback/widget/e;->f(I)I

    move-result v8

    if-ge v0, v6, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    if-ne v0, v11, :cond_e

    move-object v0, p1

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->an()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget-object v9, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v9

    invoke-virtual {v0, v9, v5}, Landroid/support/v17/leanback/widget/e;->a(II)[Landroid/support/v4/e/d;

    move-result-object v0

    aget-object v9, v0, v8

    invoke-virtual {v9, v2}, Landroid/support/v4/e/d;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v10

    sub-int v10, v1, v10

    if-le v10, v7, :cond_0

    invoke-virtual {v9}, Landroid/support/v4/e/d;->d()I

    move-result v1

    if-le v1, v11, :cond_d

    invoke-virtual {v9, v11}, Landroid/support/v4/e/d;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v4

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v6

    :goto_1
    if-eqz v0, :cond_8

    move-object p1, v0

    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->F(Landroid/view/View;)I

    move-result v0

    if-nez v4, :cond_2

    if-eqz v0, :cond_9

    :cond_2
    aput v4, p2, v2

    aput v0, p2, v3

    move v0, v3

    :goto_3
    return v0

    :cond_3
    add-int v9, v7, v6

    if-le v1, v9, :cond_c

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->X:I

    if-ne v1, v11, :cond_6

    :cond_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget-object v9, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v9

    invoke-virtual {v1, v5, v9}, Landroid/support/v17/leanback/widget/e;->a(II)[Landroid/support/v4/e/d;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/support/v4/e/d;->d()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/e/d;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v9, v0

    if-le v9, v7, :cond_5

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_b

    move-object v0, v4

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->am()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_6
    move-object v1, p1

    move-object v0, v4

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_a

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v4

    add-int v5, v6, v7

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v4, v2

    goto :goto_1

    :cond_b
    move-object v0, p1

    goto :goto_0

    :cond_c
    move-object v1, v4

    move-object v0, v4

    goto :goto_0

    :cond_d
    move-object v1, v4

    goto :goto_0

    :cond_e
    move-object v1, v4

    move-object v0, p1

    goto :goto_0
.end method

.method private ae()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->e:I

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->f:I

    return-void
.end method

.method private af()Z
    .locals 6

    const/high16 v5, 0x40000

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-nez v0, :cond_1

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->at()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ar()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->T:I

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/e;->b(I)V

    :goto_1
    return v1

    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-lt v3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->r:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v3

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->a()Z

    move-result v3

    if-eq v0, v3, :cond_5

    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->r:I

    invoke-static {v0}, Landroid/support/v17/leanback/widget/e;->a(I)Landroid/support/v17/leanback/widget/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->ae:Landroid/support/v17/leanback/widget/e$b;

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/e;->a(Landroid/support/v17/leanback/widget/e$b;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/e;->a(Z)V

    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->as()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ar()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->T:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/e;->b(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->b(Landroid/support/v7/widget/RecyclerView$p;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->e()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->g()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->i()V

    move v1, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private ag()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->o(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->C(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private ah()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, -0x401

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x400

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ai()V

    :cond_1
    return-void
.end method

.method private ai()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->ad:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/f/t;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private aj()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->D(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ak()V
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/e;->b(II)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private al()V
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    add-int/2addr v0, v3

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/e;->c(II)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    neg-int v0, v0

    goto :goto_0
.end method

.method private am()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->h()Z

    move-result v0

    return v0
.end method

.method private an()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->g()Z

    move-result v0

    return v0
.end method

.method private ao()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->f:I

    sub-int/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/e;->k(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->f:I

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private ap()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->f:I

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/e;->j(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->f:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private aq()V
    .locals 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v11

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    move v9, v8

    move v10, v0

    :goto_0
    if-ge v9, v11, :cond_8

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v0

    if-eq v10, v0, :cond_0

    move v0, v7

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v1

    add-int/lit8 v0, v11, -0x1

    :goto_2
    if-lt v0, v9, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0, v10}, Landroid/support/v17/leanback/widget/e;->g(I)Landroid/support/v17/leanback/widget/e$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    iget v0, v1, Landroid/support/v17/leanback/widget/e$a;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->o(I)I

    move-result v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa;->b()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->q:I

    sub-int v5, v0, v3

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->i(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/f;->n(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Landroid/support/v17/leanback/widget/f;->c(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->l(Landroid/view/View;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->j(Landroid/view/View;)I

    move-result v0

    add-int v4, v3, v0

    move v6, v0

    :goto_3
    iget v1, v1, Landroid/support/v17/leanback/widget/e$a;->a:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/f;->a(ILandroid/view/View;III)V

    if-eq v12, v6, :cond_4

    move v0, v7

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->k(Landroid/view/View;)I

    move-result v0

    add-int v4, v3, v0

    move v6, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v1, v10, 0x1

    move v9, v0

    move v10, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0, v10}, Landroid/support/v17/leanback/widget/e;->e(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ao()V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-gt v0, v1, :cond_7

    :goto_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->h()Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v0

    if-lt v0, v1, :cond_6

    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->y()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ar()V

    return-void

    :cond_8
    move v0, v8

    goto/16 :goto_1
.end method

.method private ar()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->b()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->q:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ag()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/support/v17/leanback/widget/aa$a;->a(IIII)V

    return-void
.end method

.method private as()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->c()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->c(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->R()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->c(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->S()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->U()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/aa$a;->a(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->T()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->V()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/aa$a;->a(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->q:I

    return-void
.end method

.method private at()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->c(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->R()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->c(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->S()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->U()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/aa$a;->a(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->T()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->V()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/aa$a;->a(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    return-void
.end method

.method private au()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->E(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/f;->a(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->F(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->M:I

    add-int/2addr v0, v4

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    aput v0, p3, v1

    aput v3, p3, v2

    move v0, v2

    :goto_0
    return v0

    :cond_2
    aput v1, p3, v1

    aput v1, p3, v2

    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_0

    move v2, v3

    move v4, v5

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v1

    iget-object v6, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/aa$a;->p()I

    move-result v6

    add-int/2addr v6, v1

    :goto_1
    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v8

    if-lt v8, v1, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v8

    if-gt v8, v6, :cond_1

    invoke-virtual {v7, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_2
    return v3

    :cond_0
    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GridLayoutManager"

    const-string v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->e:I

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->f:I

    return-void
.end method

.method private g(Z)Z
    .locals 12

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->O:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    if-nez v0, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_5

    const/4 v4, 0x0

    move-object v9, v4

    :goto_2
    if-nez v9, :cond_6

    const/4 v4, 0x0

    :goto_3
    const/4 v6, -0x1

    const/4 v5, 0x0

    move v8, v5

    :goto_4
    if-ge v8, v4, :cond_b

    invoke-virtual {v9, v8}, Landroid/support/v4/e/d;->b(I)I

    move-result v7

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v9, v5}, Landroid/support/v4/e/d;->b(I)I

    move-result v10

    move v5, v6

    :goto_5
    if-gt v7, v10, :cond_a

    iget v6, p0, Landroid/support/v17/leanback/widget/f;->e:I

    sub-int v6, v7, v6

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_3
    :goto_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->f()[Landroid/support/v4/e/d;

    move-result-object v0

    goto :goto_0

    :cond_5
    aget-object v4, v0, v1

    move-object v9, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Landroid/support/v4/e/d;->d()I

    move-result v4

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/f;->l(Landroid/view/View;)V

    :cond_8
    iget v11, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v11, :cond_9

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/f;->k(Landroid/view/View;)I

    move-result v6

    :goto_7
    if-le v6, v5, :cond_3

    move v5, v6

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/f;->j(Landroid/view/View;)I

    move-result v6

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v8, 0x2

    move v8, v7

    move v6, v5

    goto :goto_4

    :cond_b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/a;->d()Z

    move-result v4

    if-nez v4, :cond_16

    if-eqz p1, :cond_16

    if-gez v6, :cond_16

    if-lez v5, :cond_16

    if-gez v2, :cond_15

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-gez v4, :cond_10

    const/4 v4, 0x0

    :cond_c
    :goto_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v7

    if-lez v7, :cond_d

    iget-object v7, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v7

    iget-object v8, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v8

    if-lt v4, v7, :cond_d

    if-gt v4, v8, :cond_d

    sub-int v9, v4, v7

    sub-int v4, v8, v4

    if-gt v9, v4, :cond_11

    add-int/lit8 v4, v7, -0x1

    :goto_9
    if-gez v4, :cond_12

    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_12

    add-int/lit8 v4, v8, 0x1

    :cond_d
    :goto_a
    if-ltz v4, :cond_15

    if-ge v4, v5, :cond_15

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/support/v17/leanback/widget/f;->ab:[I

    invoke-direct {p0, v4, v2, v5, v7}, Landroid/support/v17/leanback/widget/f;->a(III[I)V

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->ab:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    :goto_b
    move v5, v2

    :goto_c
    if-ltz v5, :cond_14

    move v4, v5

    move v2, v5

    :goto_d
    if-gez v4, :cond_e

    const/4 v4, 0x0

    :cond_e
    iget-object v5, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    aget v5, v5, v1

    if-eq v5, v4, :cond_f

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    aput v4, v3, v1

    const/4 v3, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_10
    if-lt v4, v5, :cond_c

    add-int/lit8 v4, v5, -0x1

    goto :goto_8

    :cond_11
    add-int/lit8 v4, v8, 0x1

    goto :goto_9

    :cond_12
    if-lt v4, v5, :cond_d

    if-lez v7, :cond_d

    add-int/lit8 v4, v7, -0x1

    goto :goto_a

    :cond_13
    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->ab:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    goto :goto_b

    :cond_14
    move v4, v6

    move v2, v5

    goto :goto_d

    :cond_15
    move v5, v2

    goto :goto_c

    :cond_16
    move v4, v6

    goto :goto_d
.end method

.method private h(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->E()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->h()V

    new-instance v3, Landroid/support/v17/leanback/widget/f$d;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-le v4, v1, :cond_4

    :goto_2
    invoke-direct {v3, p0, v0, v1}, Landroid/support/v17/leanback/widget/f$d;-><init>(Landroid/support/v17/leanback/widget/f;IZ)V

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->L:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$d;->c()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$d;->d()V

    goto :goto_0
.end method

.method private y(Landroid/view/View;)I
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->m()I

    move-result v0

    goto :goto_0
.end method

.method private z(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->B(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->C(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->m:I

    return v0
.end method

.method B()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/f$a;->b:Z

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method D()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Y()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/a;->c(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method E()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Y()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/a;->c(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public F()Landroid/os/Parcelable;
    .locals 7

    new-instance v2, Landroid/support/v17/leanback/widget/f$e;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/f$e;-><init>()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->z()I

    move-result v0

    iput v0, v2, Landroid/support/v17/leanback/widget/f$e;->a:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->b()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v6, v0, v4, v5}, Landroid/support/v17/leanback/widget/z;->a(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, v2, Landroid/support/v17/leanback/widget/f$e;->b:Landroid/os/Bundle;

    return-object v2
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->F(I)I

    move-result v0

    :goto_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->G(I)I

    move-result v0

    goto :goto_1
.end method

.method final a(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f$b;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method a(Landroid/view/View;Landroid/view/View;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->f()Landroid/support/v17/leanback/widget/j;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/j;->a()[Landroid/support/v17/leanback/widget/j$a;

    move-result-object v3

    array-length v0, v3

    if-le v0, v1, :cond_4

    :goto_1
    if-eq p2, p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    move v0, v1

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/j$a;->d()I

    move-result v5

    if-eq v5, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method a(ZI)I
    .locals 11

    const/4 v9, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    iget v5, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-eq v5, v1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/e;->f(I)I

    move-result v0

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v10

    move v8, v9

    move v3, v0

    move v7, p2

    :goto_2
    if-ge v8, v10, :cond_8

    if-eqz v7, :cond_8

    if-lez v7, :cond_2

    move v4, v8

    :goto_3
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->m(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v0, v2

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object v2, v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v10, -0x1

    sub-int/2addr v0, v8

    move v4, v0

    goto :goto_3

    :cond_3
    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/f;->B(I)I

    move-result v6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/e;->f(I)I

    move-result v4

    if-ne v3, v1, :cond_4

    move v3, v4

    move v5, v6

    goto :goto_4

    :cond_4
    if-ne v4, v3, :cond_c

    if-lez v7, :cond_5

    if-gt v6, v5, :cond_6

    :cond_5
    if-gez v7, :cond_c

    if-ge v6, v5, :cond_c

    :cond_6
    if-lez v7, :cond_7

    add-int/lit8 v2, v7, -0x1

    move v5, v6

    move v7, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v7, 0x1

    move v5, v6

    move v7, v2

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_a

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    :cond_9
    iput v5, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v9, p0, Landroid/support/v17/leanback/widget/f;->m:I

    :cond_a
    :goto_5
    move p2, v7

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Z)V

    goto :goto_5

    :cond_c
    move-object v0, v2

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/f$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/f$b;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    check-cast p1, Landroid/support/v17/leanback/widget/f$b;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/f$b;-><init>(Landroid/support/v17/leanback/widget/f$b;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/f$b;-><init>(Landroid/support/v7/widget/RecyclerView$j;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/f$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/f$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    const/high16 v6, 0x20000

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    const/4 v0, 0x0

    if-eq p2, v5, :cond_2

    if-ne p2, v2, :cond_9

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p2, v5, :cond_5

    const/16 v0, 0x82

    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v4, v1, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->L()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v1, v2

    :goto_2
    if-ne p2, v5, :cond_7

    move v0, v2

    :goto_3
    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    :goto_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v4, v1, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_4
    :goto_5
    if-eqz v0, :cond_a

    move-object p1, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x21

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    const/16 v0, 0x11

    goto :goto_4

    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v4, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/a;->getDescendantFocusability()I

    move-result v1

    const/high16 v4, 0x60000

    if-ne v1, v4, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_b
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/f;->H(I)I

    move-result v4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/a;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_6
    if-ne v4, v2, :cond_10

    if-nez v1, :cond_c

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->D()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->h(Z)V

    move-object v0, p1

    :cond_e
    :goto_7
    if-eqz v0, :cond_17

    move-object p1, v0

    goto/16 :goto_0

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    if-nez v4, :cond_13

    if-nez v1, :cond_11

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_12

    :cond_11
    move-object v0, p1

    :cond_12
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->E()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/f;->h(Z)V

    move-object v0, p1

    goto :goto_7

    :cond_13
    const/4 v2, 0x3

    if-ne v4, v2, :cond_15

    if-nez v1, :cond_14

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_e

    :cond_14
    move-object v0, p1

    goto :goto_7

    :cond_15
    if-ne v4, v5, :cond_e

    if-nez v1, :cond_16

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_e

    :cond_16
    move-object v0, p1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object p1, v0

    goto/16 :goto_0

    :cond_18
    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    goto/16 :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$x;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$x;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/support/v17/leanback/widget/b;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/b;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->ac:Landroid/support/v17/leanback/widget/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->ac:Landroid/support/v17/leanback/widget/c;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/c;->a(I)Landroid/support/v17/leanback/widget/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/a;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa$a;->a(F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->H:Landroid/support/v7/widget/ai;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa;->a(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/i;->a(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/f;->a(IIZI)V

    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v17/leanback/widget/f;->a(IIZI)V

    return-void
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p3}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    :goto_1
    return-void

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    :try_start_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    neg-int v0, v0

    :goto_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1, v0, p1, p4}, Landroid/support/v17/leanback/widget/e;->a(IILandroid/support/v7/widget/RecyclerView$i$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    goto :goto_1

    :cond_3
    :try_start_2
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->Z:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->aa:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    throw v0
.end method

.method public a(IIZI)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->m:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->M:I

    if-eq p4, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/f;->b(IIZI)V

    :cond_2
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iget v2, v0, Landroid/support/v17/leanback/widget/a;->c:I

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    add-int/lit8 v1, v2, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    add-int v3, v1, v2

    if-ge v0, v3, :cond_0

    invoke-interface {p2, v0, v4}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(ILandroid/view/View;III)V
    .locals 7

    const/4 v4, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/f;->k(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->V:I

    and-int/lit8 v2, v1, 0x70

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v3, 0xc0000

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->V:I

    const v3, 0x800007

    and-int/2addr v1, v3

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v3, :cond_1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-ne v3, v4, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    :cond_2
    :goto_2
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v1, :cond_b

    add-int v5, p5, v0

    move v4, p4

    move v3, p5

    move v2, p3

    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v17/leanback/widget/f$b;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;IIII)V

    sget-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-super {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    sget-object v1, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    sget-object v3, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/f$b;->a(IIII)V

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/f;->D(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/f;->j(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->V:I

    and-int/lit8 v1, v1, 0x7

    goto :goto_1

    :cond_5
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v3, :cond_6

    const/16 v3, 0x50

    if-eq v2, v3, :cond_7

    :cond_6
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-ne v3, v4, :cond_8

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->C(I)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr p5, v1

    goto :goto_2

    :cond_8
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v3, :cond_9

    const/16 v3, 0x10

    if-eq v2, v3, :cond_a

    :cond_9
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-ne v2, v4, :cond_2

    if-ne v1, v4, :cond_2

    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->C(I)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    goto :goto_2

    :cond_b
    add-int v4, p5, v0

    move v5, p4

    move v3, p3

    move v2, p5

    goto :goto_3
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v17/leanback/widget/f$e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v17/leanback/widget/f$e;

    iget v0, p1, Landroid/support/v17/leanback/widget/f$e;->a:I

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/f$e;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/z;->a(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->G()V

    goto :goto_0
.end method

.method a(Landroid/support/v17/leanback/widget/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f;->k:Landroid/support/v17/leanback/widget/m;

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/o;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->au()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->a()V

    :cond_0
    instance-of v0, p2, Landroid/support/v17/leanback/widget/c;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/c;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->ac:Landroid/support/v17/leanback/widget/c;

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->ac:Landroid/support/v17/leanback/widget/c;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/f;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 13

    const/16 v7, 0x10

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->au()V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView$p;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->x()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_9

    if-lez v4, :cond_9

    const v2, 0x7fffffff

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->f()I

    move-result v5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->f()I

    move-result v6

    :goto_1
    if-ge v3, v4, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v8, v7}, Landroid/support/v17/leanback/widget/a;->f(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->k()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->j()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->m()I

    move-result v10

    if-eq v9, v10, :cond_6

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->m()I

    move-result v0

    if-ne v9, v0, :cond_6

    :cond_5
    if-lt v8, v5, :cond_6

    if-le v8, v6, :cond_1c

    :cond_6
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    if-le v1, v2, :cond_8

    sub-int v0, v1, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->f:I

    :cond_8
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ao()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ap()V

    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->v()V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->K()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_3
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-eq v4, v2, :cond_c

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->L:I

    if-eq v4, v1, :cond_c

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v3, p0, Landroid/support/v17/leanback/widget/f;->m:I

    :cond_c
    iput v3, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v8

    iget v9, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v10, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/a;->hasFocus()Z

    move-result v11

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v1

    :goto_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v4

    :goto_5
    iget v5, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v5, :cond_15

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->g()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->h()I

    move-result v5

    :goto_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->af()Z

    move-result v12

    if-eqz v12, :cond_16

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/e;->c(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->aq()V

    :cond_d
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->y()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v2

    neg-int v3, v6

    neg-int v4, v5

    invoke-direct {p0, v11, v0, v3, v4}, Landroid/support/v17/leanback/widget/f;->a(ZZII)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ao()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ap()V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v3

    if-ne v3, v1, :cond_d

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v1

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->al()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ak()V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->w()V

    :cond_e
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    :goto_7
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne v0, v9, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->m:I

    if-ne v0, v10, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v8, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    :cond_f
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->m()V

    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->n()V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->s()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->F(I)I

    :cond_11
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    goto/16 :goto_0

    :cond_12
    move v0, v3

    goto/16 :goto_3

    :cond_13
    move v1, v2

    goto/16 :goto_4

    :cond_14
    move v4, v2

    goto/16 :goto_5

    :cond_15
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->g()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->h()I

    move-result v6

    goto/16 :goto_6

    :cond_16
    iget v12, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v12, v12, -0x5

    iput v12, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget v12, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v12, v12, -0x11

    if-eqz v11, :cond_17

    move v3, v7

    :cond_17
    or-int/2addr v3, v12

    iput v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    if-eqz v0, :cond_19

    if-ltz v1, :cond_18

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-gt v3, v4, :cond_18

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ge v3, v1, :cond_19

    :cond_18
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    move v4, v1

    move v3, v1

    :goto_9
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/e;->c(I)V

    if-eq v4, v2, :cond_d

    :goto_a
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->am()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_19
    move v3, v1

    goto :goto_9

    :cond_1a
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ah()V

    goto/16 :goto_7

    :cond_1b
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x14

    if-ne v0, v7, :cond_10

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->m()V

    goto :goto_8

    :cond_1c
    move v0, v1

    goto/16 :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;II)V
    .locals 7

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->T()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->V()I

    move-result v5

    add-int/2addr v0, v5

    :goto_0
    iput v2, p0, Landroid/support/v17/leanback/widget/f;->Q:I

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->N:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->W:I

    if-nez v2, :cond_4

    move v2, v4

    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/f;->r:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->O:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    array-length v2, v2

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-eq v2, v5, :cond_1

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->r:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v17/leanback/widget/f;->P:[I

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->x()V

    :cond_2
    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/f;->g(Z)Z

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong spec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->S()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->U()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->W:I

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ag()I

    move-result v1

    add-int v2, v1, v0

    :cond_5
    :goto_2
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_c

    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/f;->f(II)V

    :goto_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    return-void

    :sswitch_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ag()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->Q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :sswitch_2
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->Q:I

    goto :goto_2

    :cond_6
    sparse-switch v1, :sswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong spec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->N:I

    if-nez v1, :cond_7

    sub-int v1, v2, v0

    :goto_4
    iput v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->W:I

    if-nez v1, :cond_8

    :goto_5
    iput v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->r:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->U:I

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int v2, v1, v0

    goto :goto_2

    :cond_7
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->N:I

    goto :goto_4

    :cond_8
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->W:I

    goto :goto_5

    :sswitch_4
    iget v5, p0, Landroid/support/v17/leanback/widget/f;->W:I

    if-nez v5, :cond_9

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->N:I

    if-nez v5, :cond_9

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    sub-int v4, v2, v0

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->O:I

    :goto_6
    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_5

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    mul-int/2addr v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->U:I

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_5

    move v2, v0

    goto :goto_2

    :cond_9
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->W:I

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->N:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->O:I

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->U:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->N:I

    iget v6, p0, Landroid/support/v17/leanback/widget/f;->U:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    goto :goto_6

    :cond_a
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->N:I

    if-nez v4, :cond_b

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->W:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    sub-int v4, v2, v0

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->U:I

    iget v6, p0, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->r:I

    div-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->O:I

    goto :goto_6

    :cond_b
    iget v4, p0, Landroid/support/v17/leanback/widget/f;->W:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->r:I

    iget v4, p0, Landroid/support/v17/leanback/widget/f;->N:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->O:I

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/f;->f(II)V

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v4/f/a/b;)V
    .locals 6

    const/16 v5, 0x17

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v3

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    if-le v3, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    sget-object v0, Landroid/support/v4/f/a/b$a;->B:Landroid/support/v4/f/a/b$a;

    :goto_1
    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/f/a/b$a;)V

    :goto_2
    invoke-virtual {p3, v2}, Landroid/support/v4/f/a/b;->a(Z)V

    :cond_0
    if-le v3, v2, :cond_1

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->t(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    sget-object v0, Landroid/support/v4/f/a/b$a;->z:Landroid/support/v4/f/a/b$a;

    :goto_3
    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/f/a/b$a;)V

    :goto_4
    invoke-virtual {p3, v2}, Landroid/support/v4/f/a/b;->a(Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->e(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/f/a/b$b;->a(IIZI)Landroid/support/v4/f/a/b$b;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/support/v4/f/a/b$a;->z:Landroid/support/v4/f/a/b$a;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/support/v4/f/a/b$a;->y:Landroid/support/v4/f/a/b$a;

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/f/a/b$a;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(I)V

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/support/v4/f/a/b$a;->B:Landroid/support/v4/f/a/b$a;

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/support/v4/f/a/b$a;->A:Landroid/support/v4/f/a/b$a;

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/f/a/b$a;)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a/b;->a(I)V

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/f/a/b;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/support/v17/leanback/widget/f$b;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->m()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/e;->f(I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v3, :cond_3

    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/f/a/b$c;->a(IIIIZZ)Landroid/support/v4/f/a/b$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/f/a/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v5, v2

    move v6, v1

    move v7, v0

    move v8, v1

    move v9, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/support/v4/f/a/b$c;->a(IIIIZZ)Landroid/support/v4/f/a/b$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/f/a/b;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->B()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/f$a;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v17/leanback/widget/f$a;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/f$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    check-cast v0, Landroid/support/v17/leanback/widget/f$d;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->w:Landroid/support/v17/leanback/widget/f$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->w:Landroid/support/v17/leanback/widget/f$c;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f$c;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/z;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_1

    add-int v1, p2, p4

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->a()V

    return-void

    :cond_1
    if-ge p2, v0, :cond_2

    sub-int v1, v0, p4

    if-le p3, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    sub-int/2addr v0, p4

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    goto :goto_0

    :cond_2
    if-le p2, v0, :cond_0

    if-ge p3, v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v1, v0, v1}, Landroid/support/v17/leanback/widget/f;->a(IIZI)V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/o;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->a:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->b:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->c:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->d:I

    sub-int v0, v1, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method a(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/view/View;ZII)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;ZII)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/i$a;->a(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->aj()V

    return-void
.end method

.method a(ZILandroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v2, v1, -0x1801

    if-eqz p1, :cond_1

    const/16 v1, 0x800

    :goto_0
    or-int/2addr v1, v2

    if-eqz p2, :cond_0

    const/16 v0, 0x1000

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;ILandroid/os/Bundle;)Z
    .locals 7

    const/16 v4, 0x2000

    const/16 v3, 0x1000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->C()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    iget v5, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v5, :cond_6

    sget-object v5, Landroid/support/v4/f/a/b$a;->z:Landroid/support/v4/f/a/b$a;

    invoke-virtual {v5}, Landroid/support/v4/f/a/b$a;->a()I

    move-result v5

    if-ne p3, v5, :cond_4

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    move p3, v0

    :cond_1
    :goto_3
    sparse-switch p3, :sswitch_data_0

    :goto_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    sget-object v5, Landroid/support/v4/f/a/b$a;->B:Landroid/support/v4/f/a/b$a;

    invoke-virtual {v5}, Landroid/support/v4/f/a/b$a;->a()I

    move-result v5

    if-ne p3, v5, :cond_1

    if-eqz v0, :cond_5

    :goto_5
    move p3, v4

    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_5

    :cond_6
    sget-object v0, Landroid/support/v4/f/a/b$a;->y:Landroid/support/v4/f/a/b$a;

    invoke-virtual {v0}, Landroid/support/v4/f/a/b$a;->a()I

    move-result v0

    if-ne p3, v0, :cond_7

    move p3, v4

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/support/v4/f/a/b$a;->A:Landroid/support/v4/f/a/b$a;

    invoke-virtual {v0}, Landroid/support/v4/f/a/b$a;->a()I

    move-result v0

    if-ne p3, v0, :cond_1

    move p3, v3

    goto :goto_3

    :sswitch_0
    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->h(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/f;->a(ZI)I

    goto :goto_4

    :sswitch_1
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/f;->h(Z)V

    invoke-virtual {p0, v2, v1}, Landroid/support/v17/leanback/widget/f;->a(ZI)I

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method a(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/f;->b(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/f;->c(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x23

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p3

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->H(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/f;->G(Landroid/view/View;)I

    move-result v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/f;->B(I)I

    move-result v10

    const/4 v3, -0x1

    if-ne v10, v3, :cond_4

    const/4 v3, 0x0

    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    if-eq v8, v3, :cond_6

    const/4 v3, 0x2

    if-ne v8, v3, :cond_7

    :cond_6
    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v3, :cond_b

    if-eqz v7, :cond_b

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3, v10}, Landroid/support/v17/leanback/widget/e;->g(I)Landroid/support/v17/leanback/widget/e$a;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/e$a;->a:I

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v4, 0x1

    if-eq v8, v4, :cond_8

    const/4 v4, 0x3

    if-ne v8, v4, :cond_c

    :cond_8
    const/4 v4, 0x1

    move v6, v4

    :goto_3
    if-lez v6, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    :goto_4
    const/4 v4, -0x1

    if-ne v9, v4, :cond_f

    if-lez v6, :cond_e

    const/4 v4, 0x0

    :goto_5
    if-lez v6, :cond_10

    if-gt v4, v5, :cond_11

    :cond_9
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v12

    if-nez v12, :cond_12

    :cond_a
    :goto_6
    add-int/2addr v4, v6

    goto :goto_5

    :cond_b
    const/4 v3, -0x1

    goto :goto_2

    :cond_c
    const/4 v4, -0x1

    move v6, v4

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_f
    add-int v4, v9, v6

    goto :goto_5

    :cond_10
    if-ge v4, v5, :cond_9

    :cond_11
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_12
    if-nez v7, :cond_13

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_a

    goto :goto_7

    :cond_13
    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/f;->B(I)I

    move-result v12

    iget-object v13, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v13, v12}, Landroid/support/v17/leanback/widget/e;->g(I)Landroid/support/v17/leanback/widget/e$a;

    move-result-object v13

    if-eqz v13, :cond_a

    const/4 v14, 0x1

    if-ne v8, v14, :cond_14

    iget v13, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-ne v13, v3, :cond_a

    if-le v12, v10, :cond_a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_a

    goto :goto_7

    :cond_14
    if-nez v8, :cond_15

    iget v13, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-ne v13, v3, :cond_a

    if-ge v12, v10, :cond_a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_a

    goto :goto_7

    :cond_15
    const/4 v12, 0x3

    if-ne v8, v12, :cond_16

    iget v12, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-eq v12, v3, :cond_a

    iget v12, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-lt v12, v3, :cond_11

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_6

    :cond_16
    const/4 v12, 0x2

    if-ne v8, v12, :cond_a

    iget v12, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-eq v12, v3, :cond_a

    iget v12, v13, Landroid/support/v17/leanback/widget/e$a;->a:I

    if-gt v12, v3, :cond_11

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->X:I

    if-eqz v3, :cond_1b

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa$a;->p()I

    move-result v3

    add-int v6, v3, v5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v7

    :goto_8
    if-ge v3, v7, :cond_19

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v9

    if-lt v9, v5, :cond_18

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v9

    if-gt v9, v6, :cond_18

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v5

    :goto_9
    if-ge v3, v5, :cond_1c

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_1d

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method

.method a(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;[I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a_(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->X:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/f;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->F(I)I

    move-result v0

    :goto_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ae()V

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f;->G(I)I

    move-result v0

    goto :goto_1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method final b(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f$b;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/i$a;->a(F)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->aj()V

    return-void
.end method

.method public b(I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const/high16 v0, 0x40000

    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    if-ne v3, v0, :cond_3

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/high16 v0, 0x80000

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v4, -0xc0001

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;->c(Z)V

    goto :goto_1
.end method

.method b(IIZI)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    iput p4, p0, Landroid/support/v17/leanback/widget/f;->M:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->K()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/a;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {p0, v2, p3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Z)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    :cond_3
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput p2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->L:I

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/a;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_6

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput p2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->L:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->k()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->s(I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v1, p0, Landroid/support/v17/leanback/widget/f;->m:I

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->B()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->h()V

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/f;->y(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {p0, v2, p3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Z)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_1

    :cond_8
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput p2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iput v4, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->G()V

    goto :goto_1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    const/high16 v2, -0x80000000

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    add-int v1, p2, p3

    if-le v1, v0, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    sub-int v0, p2, v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->L:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iput v2, p0, Landroid/support/v17/leanback/widget/f;->L:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->a()V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->L:I

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/o;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eq v2, p1, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v3, -0x10001

    and-int/2addr v2, v3

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->G()V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v2, v1, -0x6001

    if-eqz p1, :cond_1

    const/16 v1, 0x2000

    :goto_0
    or-int/2addr v1, v2

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->a()I

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/z;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x20000

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v4, -0x20001

    and-int/2addr v2, v4

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    or-int/2addr v0, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->X:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->m:I

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->M:I

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/f;->b(IIZI)V

    :cond_1
    return-void

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->d()I

    move-result v0

    return v0
.end method

.method d(Landroid/support/v7/widget/RecyclerView;II)I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lt p3, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    if-ge p3, v1, :cond_2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    sub-int p3, v0, p3

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa$a;->a(I)V

    return-void
.end method

.method d(Z)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const v1, -0x8001

    and-int/2addr v1, v0

    if-eqz p1, :cond_0

    const v0, 0x8000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->e()F

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa$a;->b(I)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eq v1, p1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit16 v1, v1, -0x201

    if-eqz p1, :cond_0

    const/16 v0, 0x200

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->G()V

    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i$a;->a()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->f(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->d:I

    sub-int v0, v1, v0

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/i$a;->a(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->aj()V

    return-void
.end method

.method public g()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i$a;->b()F

    move-result v0

    return v0
.end method

.method g(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->H:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/i$a;->b(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->aj()V

    return-void
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->Y:Landroid/support/v17/leanback/widget/i;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i;->a()Landroid/support/v17/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/i$a;->c()I

    move-result v0

    return v0
.end method

.method h(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->H:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->W:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->S:I

    return v0
.end method

.method i(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method public i(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->N:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->R:I

    return v0
.end method

.method j(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->s(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->R:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->S:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->U:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->T:I

    return-void
.end method

.method k(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/f;->t(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->S:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->T:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->S:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->U:I

    goto :goto_0
.end method

.method protected k()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->R:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->T:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->R:I

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->U:I

    goto :goto_0
.end method

.method l(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    sget-object v1, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/support/v17/leanback/widget/f$b;->leftMargin:I

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v1, v2

    iget v1, v0, Landroid/support/v17/leanback/widget/f$b;->topMargin:I

    iget v2, v0, Landroid/support/v17/leanback/widget/f$b;->bottomMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/f;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v4, v1, v2

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->N:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v2, :cond_1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, v0, Landroid/support/v17/leanback/widget/f$b;->width:I

    invoke-static {v2, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->height:I

    invoke-static {v1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->O:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, v0, Landroid/support/v17/leanback/widget/f$b;->height:I

    invoke-static {v2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v0, v0, Landroid/support/v17/leanback/widget/f$b;->width:I

    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    move v0, v2

    goto :goto_1
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne v0, v3, :cond_3

    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-nez v7, :cond_4

    :goto_2
    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/n;->a(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->m:I

    invoke-virtual {p0, v0, v7, v1, v2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    :goto_3
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    move v0, v6

    :goto_4
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/f;->ai()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/n;->a(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {p0, v0, v7, v3, v6}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->V:I

    return-void
.end method

.method m(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

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

.method protected n(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method n()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne v0, v3, :cond_1

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    iget v2, p0, Landroid/support/v17/leanback/widget/f;->l:I

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->m:I

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v17/leanback/widget/f;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->J:Landroid/support/v17/leanback/widget/n;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/n;->a(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v17/leanback/widget/f;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V

    goto :goto_0
.end method

.method o(I)I
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/lit8 v1, v0, -0x1

    move v0, v2

    :goto_0
    if-le v1, p1, :cond_1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/f;->C(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->U:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/f;->C(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->U:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public o()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p(I)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtraLayoutSpace must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->G()V

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->c:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/f;->r:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Landroid/support/v7/widget/RecyclerView$j;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/f$b;-><init>(II)V

    return-object v0
.end method

.method public q(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/f;->a(IIZI)V

    return-void
.end method

.method r()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->aa:I

    return v0
.end method

.method public r(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v17/leanback/widget/f;->a(IIZI)V

    return-void
.end method

.method s()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->R()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Q()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-gt v0, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->Q()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method s(I)I
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/f$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/f$3;-><init>(Landroid/support/v17/leanback/widget/f;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ad;->d(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->n()I

    move-result v0

    return v0
.end method

.method t()Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/a;->c(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/a;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/a;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method u(I)V
    .locals 4

    iput p1, p0, Landroid/support/v17/leanback/widget/f;->p:I

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v17/leanback/widget/f;->p:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method v()V
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->f()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/e;->g(I)Landroid/support/v17/leanback/widget/e$a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/f;->g:Landroid/util/SparseIntArray;

    iget v3, v3, Landroid/support/v17/leanback/widget/e$a;->a:I

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method w()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$p;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    array-length v0, v0

    if-le v5, v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    if-nez v0, :cond_2

    const/16 v0, 0x10

    :goto_1
    if-ge v0, v5, :cond_3

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    :cond_4
    move v2, v3

    move v1, v3

    :goto_2
    if-ge v2, v5, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->e()I

    move-result v6

    if-ltz v6, :cond_7

    iget-object v7, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    add-int/lit8 v0, v1, 0x1

    aput v6, v7, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    if-lez v1, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->sort([III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->h:[I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v17/leanback/widget/e;->a([IILandroid/util/SparseIntArray;)V

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method x()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f;->N()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->l()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/f;->e:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Landroid/support/v17/leanback/widget/f;->e:I

    goto :goto_0
.end method

.method y()V
    .locals 9

    const v0, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v8

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v5

    move v3, v7

    move v4, v1

    :goto_1
    if-ltz v8, :cond_0

    if-ltz v5, :cond_0

    if-ne v8, v4, :cond_4

    move v1, v6

    :goto_2
    if-ne v5, v3, :cond_5

    move v5, v6

    :goto_3
    if-nez v1, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa$a;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/aa$a;->k()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    sget-object v1, Landroid/support/v17/leanback/widget/f;->u:[I

    invoke-virtual {v0, v6, v1}, Landroid/support/v17/leanback/widget/e;->b(Z[I)I

    move-result v4

    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->z(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->g()[I

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    aget v0, v0, v7

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    :goto_4
    move v3, v0

    :goto_5
    if-eqz v5, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    sget-object v1, Landroid/support/v17/leanback/widget/f;->u:[I

    invoke-virtual {v0, v7, v1}, Landroid/support/v17/leanback/widget/e;->a(Z[I)I

    move-result v2

    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/f;->z(Landroid/view/View;)I

    move-result v0

    move v1, v2

    :goto_6
    iget-object v2, p0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/support/v17/leanback/widget/aa$a;->a(IIII)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->c()I

    move-result v8

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/e;->d()I

    move-result v5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    move v4, v7

    goto/16 :goto_1

    :cond_4
    move v1, v7

    goto/16 :goto_2

    :cond_5
    move v5, v7

    goto/16 :goto_3

    :cond_6
    move v3, v0

    move v4, v0

    goto :goto_5

    :cond_7
    move v0, v2

    move v1, v2

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f;->l:I

    return v0
.end method
