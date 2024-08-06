.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/a/a/g;

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Landroid/support/constraint/c;

.field private p:I

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Landroid/support/constraint/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/g;

    invoke-direct {v0}, Landroid/support/constraint/a/a/g;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/g;

    invoke-direct {v0}, Landroid/support/constraint/a/a/g;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/g;

    invoke-direct {v0}, Landroid/support/constraint/a/a/g;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int v12, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v3

    add-int v13, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v14

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v2, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    move-object/from16 v16, v0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v3, :cond_0

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->e(I)V

    iget v9, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v8, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v3, :cond_2

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->I:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    :cond_2
    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v3, :cond_7

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->J:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_3
    const/4 v3, 0x1

    move v5, v3

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v5, :cond_11

    if-nez v9, :cond_8

    const/4 v3, -0x2

    move/from16 v0, p1

    invoke-static {v0, v13, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v7, 0x1

    move v10, v3

    :goto_3
    if-nez v8, :cond_b

    const/4 v3, -0x2

    move/from16 v0, p2

    invoke-static {v0, v12, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_4
    invoke-virtual {v15, v10, v5}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v4, v3, Landroid/support/constraint/a/f;->a:J

    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    iput-wide v4, v3, Landroid/support/constraint/a/f;->a:J

    :cond_4
    const/4 v3, -0x2

    if-ne v9, v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->b(Z)V

    const/4 v3, -0x2

    if-ne v8, v3, :cond_e

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->c(Z)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v3, v7

    move v5, v4

    move v9, v8

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/support/constraint/a/a/f;->j(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/f;->k(I)V

    if-eqz v3, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/support/constraint/a/a/f;->n(I)V

    :cond_5
    if-eqz v6, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/f;->o(I)V

    :cond_6
    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v2, :cond_0

    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->q(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    move v5, v3

    goto :goto_2

    :cond_8
    const/4 v5, -0x1

    if-ne v9, v5, :cond_9

    const/4 v5, -0x1

    move/from16 v0, p1

    invoke-static {v0, v13, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v10, v5

    move v7, v3

    goto :goto_3

    :cond_9
    const/4 v5, -0x2

    if-ne v9, v5, :cond_a

    const/4 v3, 0x1

    :cond_a
    move/from16 v0, p1

    invoke-static {v0, v13, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v10, v5

    move v7, v3

    goto/16 :goto_3

    :cond_b
    const/4 v3, -0x1

    if-ne v8, v3, :cond_c

    const/4 v3, -0x1

    move/from16 v0, p2

    invoke-static {v0, v12, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v5, v3

    move v6, v4

    goto/16 :goto_4

    :cond_c
    const/4 v3, -0x2

    if-ne v8, v3, :cond_10

    const/4 v3, 0x1

    :goto_8
    move/from16 v0, p2

    invoke-static {v0, v12, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    move v5, v4

    move v6, v3

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    :cond_f
    return-void

    :cond_10
    move v3, v4

    goto :goto_8

    :cond_11
    move v6, v4

    move v5, v8

    goto :goto_7
.end method

.method private final b(I)Landroid/support/constraint/a/a/f;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->c()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(II)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int v15, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v3

    add-int v16, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v17

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    move/from16 v0, v17

    if-ge v6, v0, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v8, v2, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v3, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/support/constraint/a/a/f;->e(I)V

    iget v5, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v9, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v5, :cond_2

    if-nez v9, :cond_3

    :cond_2
    invoke-virtual {v8}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/n;->e()V

    invoke-virtual {v8}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/n;->e()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x2

    if-ne v5, v10, :cond_4

    const/4 v3, 0x1

    :cond_4
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    const/4 v11, -0x2

    if-ne v9, v11, :cond_5

    const/4 v4, 0x1

    :cond_5
    move/from16 v0, p2

    invoke-static {v0, v15, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v12, v10, Landroid/support/constraint/a/f;->a:J

    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    iput-wide v12, v10, Landroid/support/constraint/a/f;->a:J

    :cond_6
    const/4 v10, -0x2

    if-ne v5, v10, :cond_a

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v8, v5}, Landroid/support/constraint/a/a/f;->b(Z)V

    const/4 v5, -0x2

    if-ne v9, v5, :cond_b

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v8, v5}, Landroid/support/constraint/a/a/f;->c(Z)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v5}, Landroid/support/constraint/a/a/f;->j(I)V

    invoke-virtual {v8, v9}, Landroid/support/constraint/a/a/f;->k(I)V

    if-eqz v3, :cond_7

    invoke-virtual {v8, v5}, Landroid/support/constraint/a/a/f;->n(I)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v8, v9}, Landroid/support/constraint/a/a/f;->o(I)V

    :cond_8
    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v3, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    invoke-virtual {v8, v3}, Landroid/support/constraint/a/a/f;->q(I)V

    :cond_9
    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/n;->a(I)V

    invoke-virtual {v8}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/n;->a(I)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->P()V

    const/4 v2, 0x0

    move v14, v2

    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_e

    :cond_d
    :goto_5
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_4

    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v2, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    move-object/from16 v19, v0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v3, :cond_d

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v3, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->e(I)V

    iget v12, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v8, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v12, :cond_f

    if-nez v8, :cond_d

    :cond_f
    sget-object v3, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v9

    sget-object v3, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v10

    sget-object v3, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v3

    if-eqz v3, :cond_16

    sget-object v3, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_6
    sget-object v4, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v20

    sget-object v4, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v21

    sget-object v4, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    move v13, v4

    :goto_7
    if-nez v12, :cond_10

    if-nez v8, :cond_10

    if-eqz v3, :cond_10

    if-nez v13, :cond_d

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v4

    sget-object v7, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v4, v7, :cond_18

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v7

    sget-object v11, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v7, v11, :cond_19

    const/4 v7, 0x1

    :goto_9
    if-nez v4, :cond_11

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/constraint/a/a/n;->e()V

    :cond_11
    if-nez v7, :cond_12

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/constraint/a/a/n;->e()V

    :cond_12
    if-nez v12, :cond_1b

    if-eqz v4, :cond_1a

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->d()Z

    move-result v11

    if-eqz v11, :cond_1a

    if-eqz v3, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/a/a/m;->g()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v10}, Landroid/support/constraint/a/a/m;->g()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v10}, Landroid/support/constraint/a/a/m;->d()F

    move-result v3

    invoke-virtual {v9}, Landroid/support/constraint/a/a/m;->d()F

    move-result v9

    sub-float/2addr v3, v9

    float-to-int v12, v3

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/support/constraint/a/a/n;->a(I)V

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v9, v3

    move v10, v4

    move v11, v5

    :goto_a
    if-nez v8, :cond_1e

    if-eqz v7, :cond_1d

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->e()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v13, :cond_1d

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/a/a/m;->g()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/a/a/m;->g()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/a/a/m;->d()F

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/a/a/m;->d()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v8, v3

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/support/constraint/a/a/n;->a(I)V

    move/from16 v0, p2

    invoke-static {v0, v15, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v4, v3

    move v5, v7

    :goto_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v4}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v0, v3, Landroid/support/constraint/a/f;->a:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/support/constraint/a/f;->a:J

    :cond_13
    const/4 v3, -0x2

    if-ne v12, v3, :cond_20

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->b(Z)V

    const/4 v3, -0x2

    if-ne v8, v3, :cond_21

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->c(Z)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->j(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->k(I)V

    if-eqz v11, :cond_14

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/f;->n(I)V

    :cond_14
    if-eqz v6, :cond_15

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->o(I)V

    :cond_15
    if-eqz v10, :cond_22

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/constraint/a/a/n;->a(I)V

    :goto_e
    if-eqz v5, :cond_23

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/n;->a(I)V

    :goto_f
    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v2, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->q(I)V

    goto/16 :goto_5

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_7

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_1a
    const/4 v3, -0x2

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v9, v3

    move v10, v4

    move v11, v5

    goto/16 :goto_a

    :cond_1b
    const/4 v3, -0x1

    if-ne v12, v3, :cond_1c

    const/4 v3, -0x1

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v9, v3

    move v10, v4

    move v11, v5

    goto/16 :goto_a

    :cond_1c
    const/4 v3, -0x2

    if-ne v12, v3, :cond_26

    const/4 v3, 0x1

    :goto_10
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v9, v5

    move v10, v4

    move v11, v3

    goto/16 :goto_a

    :cond_1d
    const/4 v3, -0x2

    move/from16 v0, p2

    invoke-static {v0, v15, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v4, v3

    goto/16 :goto_b

    :cond_1e
    const/4 v3, -0x1

    if-ne v8, v3, :cond_1f

    const/4 v3, -0x1

    move/from16 v0, p2

    invoke-static {v0, v15, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v4, v3

    move v5, v7

    goto/16 :goto_b

    :cond_1f
    const/4 v3, -0x2

    if-ne v8, v3, :cond_25

    const/4 v3, 0x1

    :goto_11
    move/from16 v0, p2

    invoke-static {v0, v15, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    move v5, v7

    move v6, v3

    goto/16 :goto_b

    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_22
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/n;->c()V

    goto/16 :goto_e

    :cond_23
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/n;->c()V

    goto/16 :goto_f

    :cond_24
    return-void

    :cond_25
    move v3, v6

    goto :goto_11

    :cond_26
    move v3, v5

    goto :goto_10
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/f$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_6

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    goto :goto_1

    :cond_2
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    goto :goto_1

    :cond_3
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    goto :goto_1

    :cond_4
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    goto :goto_1

    :cond_5
    sget v5, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    :try_start_0
    new-instance v5, Landroid/support/constraint/c;

    invoke-direct {v5}, Landroid/support/constraint/c;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    goto :goto_1

    :catch_0
    move-exception v5

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(I)V

    return-void
.end method

.method private c()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v16

    if-eqz v15, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move/from16 v0, v16

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1, v5}, Landroid/support/constraint/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/constraint/a/a/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v1, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/f;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->f()V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/ConstraintLayout;->p:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    move/from16 v0, v16

    if-ge v2, v0, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->p:I

    if-ne v3, v4, :cond_4

    instance-of v3, v1, Landroid/support/constraint/d;

    if-eqz v3, :cond_4

    check-cast v1, Landroid/support/constraint/d;

    invoke-virtual {v1}, Landroid/support/constraint/d;->getConstraintSet()Landroid/support/constraint/c;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/support/constraint/c;->a(Landroid/support/constraint/ConstraintLayout;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/g;->U()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/b;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/support/constraint/b;->a(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    move/from16 v0, v16

    if-ge v2, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/support/constraint/e;

    if-eqz v3, :cond_8

    check-cast v1, Landroid/support/constraint/e;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/support/constraint/e;->a(Landroid/support/constraint/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    move v14, v1

    :goto_7
    move/from16 v0, v16

    if-ge v14, v0, :cond_2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/f;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_8
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {v9}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    iput-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    :cond_c
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->e(I)V

    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->e(I)V

    :cond_d
    invoke-virtual {v1, v3}, Landroid/support/constraint/a/a/f;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a/g;->b(Landroid/support/constraint/a/a/f;)V

    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-eqz v2, :cond_14

    check-cast v1, Landroid/support/constraint/a/a/i;

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_10

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->c:F

    :cond_10
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_12

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/i;->e(F)V

    goto :goto_8

    :cond_11
    if-eqz v15, :cond_c

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Landroid/support/constraint/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "id/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/a/a/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v2

    goto/16 :goto_9

    :cond_12
    const/4 v2, -0x1

    if-eq v4, v2, :cond_13

    invoke-virtual {v1, v4}, Landroid/support/constraint/a/a/i;->u(I)V

    goto/16 :goto_8

    :cond_13
    const/4 v2, -0x1

    if-eq v3, v2, :cond_a

    invoke-virtual {v1, v3}, Landroid/support/constraint/a/a/i;->v(I)V

    goto/16 :goto_8

    :cond_14
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->q:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->r:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->s:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->h:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->i:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->j:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->k:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->l:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->R:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->m:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    :cond_15
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iget v12, v9, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_2d

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iget v12, v9, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->z:F

    const/4 v7, -0x1

    if-ne v13, v7, :cond_16

    const/4 v7, -0x1

    if-ne v12, v7, :cond_16

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$a;->q:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1b

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->q:I

    :cond_16
    :goto_a
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2d

    const/4 v7, -0x1

    if-ne v4, v7, :cond_2d

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$a;->r:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1c

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->r:I

    move v10, v2

    move v7, v3

    move v8, v4

    move v11, v5

    :goto_b
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->m:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v2

    if-eqz v2, :cond_17

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->n:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f;FI)V

    :cond_17
    :goto_c
    if-eqz v15, :cond_19

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->R:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    :cond_18
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->R:I

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/a/a/f;->a(II)V

    :cond_19
    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v2, :cond_29

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Landroid/support/constraint/a/a/f$a;->d:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f$a;)V

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v3, v2, Landroid/support/constraint/a/a/e;->d:I

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v3, v2, Landroid/support/constraint/a/a/e;->d:I

    :goto_d
    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v2, :cond_2b

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    sget-object v2, Landroid/support/constraint/a/a/f$a;->d:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/f$a;)V

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v3, v2, Landroid/support/constraint/a/a/e;->d:I

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v3, v2, Landroid/support/constraint/a/a/e;->d:I

    :goto_e
    iget-object v2, v9, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, v9, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->b(Ljava/lang/String;)V

    :cond_1a
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->E:F

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->c(F)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->F:F

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->d(F)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->G:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->r(I)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->H:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->s(I)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->O:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/constraint/a/a/f;->a(IIIF)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->N:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->P:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/constraint/a/a/f;->b(IIIF)V

    goto/16 :goto_8

    :cond_1b
    iget v7, v9, Landroid/support/constraint/ConstraintLayout$a;->p:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    iget v12, v9, Landroid/support/constraint/ConstraintLayout$a;->p:I

    goto/16 :goto_a

    :cond_1c
    iget v7, v9, Landroid/support/constraint/ConstraintLayout$a;->s:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2d

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$a;->s:I

    move v10, v2

    move v7, v3

    move v8, v4

    move v11, v5

    goto/16 :goto_b

    :cond_1d
    const/4 v2, -0x1

    if-eq v13, v2, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_1e

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    :cond_1e
    :goto_f
    const/4 v2, -0x1

    if-eq v11, v2, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_1f

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    :cond_1f
    :goto_10
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->h:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->h:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_20

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->u:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    :cond_20
    :goto_11
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->j:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->j:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_21

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->w:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    :cond_21
    :goto_12
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->l:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$a;->l:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/ConstraintLayout$a;

    if-eqz v4, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    const/4 v4, 0x1

    iput-boolean v4, v9, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    sget-object v2, Landroid/support/constraint/a/a/e$c;->f:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    sget-object v4, Landroid/support/constraint/a/a/e$c;->f:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sget-object v6, Landroid/support/constraint/a/a/e$b;->b:Landroid/support/constraint/a/a/e$b;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/e;IILandroid/support/constraint/a/a/e$b;IZ)Z

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->i()V

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->i()V

    :cond_22
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-ltz v2, :cond_23

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v10}, Landroid/support/constraint/a/a/f;->a(F)V

    :cond_23
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->A:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->A:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_17

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->A:F

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->b(F)V

    goto/16 :goto_c

    :cond_24
    const/4 v2, -0x1

    if-eq v12, v2, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_1e

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    goto/16 :goto_f

    :cond_25
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1f

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_1f

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    goto/16 :goto_10

    :cond_26
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->i:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->i:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_20

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->u:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    goto/16 :goto_11

    :cond_27
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->k:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/a/a/f;

    move-result-object v3

    if-eqz v3, :cond_21

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    sget-object v4, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$a;->w:I

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    goto/16 :goto_12

    :cond_28
    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f$a;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->j(I)V

    goto/16 :goto_d

    :cond_29
    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f$a;)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->width:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->j(I)V

    goto/16 :goto_d

    :cond_2a
    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/f$a;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->k(I)V

    goto/16 :goto_e

    :cond_2b
    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/f$a;)V

    iget v2, v9, Landroid/support/constraint/ConstraintLayout$a;->height:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/f;->k(I)V

    goto/16 :goto_e

    :cond_2c
    return-void

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_2d
    move v10, v2

    move v7, v3

    move v8, v4

    move v11, v5

    goto/16 :goto_b
.end method

.method private c(II)V
    .locals 9

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int v7, v2, v4

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int v8, v2, v4

    sget-object v4, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    sparse-switch v5, :sswitch_data_0

    move v3, v1

    :goto_0
    sparse-switch v6, :sswitch_data_1

    move v0, v1

    :goto_1
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/g;->l(I)V

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v5, v1}, Landroid/support/constraint/a/a/g;->m(I)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1, v4}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/f$a;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1, v3}, Landroid/support/constraint/a/a/g;->j(I)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/g;->b(Landroid/support/constraint/a/a/f$a;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/g;->k(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->l(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->m(I)V

    return-void

    :sswitch_0
    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    goto :goto_0

    :sswitch_1
    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    move v3, v1

    goto :goto_0

    :sswitch_2
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v8

    goto :goto_0

    :sswitch_3
    sget-object v2, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    goto :goto_1

    :sswitch_4
    sget-object v2, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    move v0, v1

    goto :goto_1

    :sswitch_5
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v7

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private d()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/support/constraint/e;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/support/constraint/e;

    invoke-virtual {v0, p0}, Landroid/support/constraint/e;->b(Landroid/support/constraint/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b;

    invoke-virtual {v0, p0}, Landroid/support/constraint/b;->c(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/constraint/ConstraintLayout$a;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$a;
    .locals 2

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;)Landroid/support/constraint/a/a/f;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/g;->N()V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->c:J

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$a;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v10, v1

    const/high16 v11, 0x44870000    # 1080.0f

    const/high16 v12, 0x44f00000    # 1920.0f

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v2

    div-float/2addr v2, v11

    mul-float/2addr v2, v9

    float-to-int v13, v2

    int-to-float v2, v3

    div-float/2addr v2, v12

    mul-float/2addr v2, v10

    float-to-int v14, v2

    int-to-float v2, v4

    div-float/2addr v2, v11

    mul-float/2addr v2, v9

    float-to-int v15, v2

    int-to-float v1, v1

    div-float/2addr v1, v12

    mul-float/2addr v1, v10

    float-to-int v0, v1

    move/from16 v16, v0

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v13

    int-to-float v3, v14

    add-int v1, v13, v15

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    int-to-float v2, v1

    int-to-float v3, v14

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    int-to-float v2, v1

    add-int v1, v14, v16

    int-to-float v3, v1

    int-to-float v4, v13

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    add-int v1, v14, v16

    int-to-float v3, v1

    int-to-float v4, v13

    int-to-float v5, v14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, -0xff0100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v13

    int-to-float v3, v14

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    add-int v1, v14, v16

    int-to-float v3, v1

    add-int v1, v13, v15

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->a()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/g;->J()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v7, :cond_1

    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroid/support/constraint/a/a/f;->t()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/constraint/a/a/f;->u()I

    move-result v8

    invoke-virtual {v6}, Landroid/support/constraint/a/a/f;->p()I

    move-result v0

    add-int v9, v7, v0

    invoke-virtual {v6}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    add-int v6, v8, v0

    invoke-virtual {v1, v7, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    instance-of v0, v1, Landroid/support/constraint/e;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/e;

    invoke-virtual {v0}, Landroid/support/constraint/e;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b;

    invoke-virtual {v0, p0}, Landroid/support/constraint/b;->b(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/g;->h(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/g;->i(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->c(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->d(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/constraint/a/a/g;->a(Z)V

    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->c(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->p()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->r()I

    move-result v18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout;->m:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout;->m:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->b()V

    const/4 v2, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->n:I

    and-int/lit8 v3, v3, 0x8

    const/16 v10, 0x8

    if-ne v3, v10, :cond_d

    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_1
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/g;->O()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/constraint/a/a/g;->f(II)V

    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->b(II)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->d()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-static {v2}, Landroid/support/constraint/a/a/a;->a(Landroid/support/constraint/a/a/g;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-boolean v2, v2, Landroid/support/constraint/a/a/g;->as:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-boolean v2, v2, Landroid/support/constraint/a/a/g;->at:Z

    if-eqz v2, :cond_4

    const/high16 v2, -0x80000000

    if-ne v4, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v2, v2, Landroid/support/constraint/a/a/g;->av:I

    if-ge v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v3, v3, Landroid/support/constraint/a/a/g;->av:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->j(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    sget-object v3, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/f$a;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-boolean v2, v2, Landroid/support/constraint/a/a/g;->au:Z

    if-eqz v2, :cond_6

    const/high16 v2, -0x80000000

    if-ne v6, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v2, v2, Landroid/support/constraint/a/a/g;->aw:I

    if-ge v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v3, v3, Landroid/support/constraint/a/a/g;->aw:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->k(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    sget-object v3, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/g;->b(Landroid/support/constraint/a/a/f$a;)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/ConstraintLayout;->n:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->p()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/g;->r()I

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    if-eq v10, v2, :cond_7

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v4, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-object v4, v4, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v4, v10, v2}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    if-eq v2, v3, :cond_8

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v6, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-object v2, v2, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-boolean v2, v2, Landroid/support/constraint/a/a/g;->at:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v2, v2, Landroid/support/constraint/a/a/g;->av:I

    if-le v2, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-object v2, v2, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-boolean v2, v2, Landroid/support/constraint/a/a/g;->au:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget v2, v2, Landroid/support/constraint/a/a/g;->aw:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    iget-object v2, v2, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v2, v3, v7}, Landroid/support/constraint/a/a/a;->a(Ljava/util/List;II)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, "First pass"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    add-int v20, v9, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v2

    add-int v21, v8, v2

    if-lez v19, :cond_23

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    move v5, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    move v6, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->p()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->r()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x0

    move v15, v2

    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/f;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->B()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_11

    move v7, v9

    move v2, v12

    move v3, v13

    :goto_6
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move v9, v7

    move v12, v2

    move v13, v3

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_1

    :cond_e
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->a(II)V

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    move v5, v2

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    move v6, v2

    goto :goto_4

    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$a;

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v7, :cond_2d

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-eqz v7, :cond_12

    move v7, v9

    move v2, v12

    move v3, v13

    goto :goto_6

    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_13

    move v7, v9

    move v2, v12

    move v3, v13

    goto :goto_6

    :cond_13
    if-eqz v16, :cond_14

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/a/a/n;->g()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/a/a/n;->g()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v9

    move v2, v12

    move v3, v13

    goto :goto_6

    :cond_14
    iget v7, v4, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_19

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-eqz v7, :cond_19

    iget v7, v4, Landroid/support/constraint/ConstraintLayout$a;->width:I

    move/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    :goto_7
    iget v8, v4, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/16 v22, -0x2

    move/from16 v0, v22

    if-ne v8, v0, :cond_1a

    iget-boolean v8, v4, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v8, :cond_1a

    iget v8, v4, Landroid/support/constraint/ConstraintLayout$a;->height:I

    move/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v8

    :goto_8
    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v0, v7, Landroid/support/constraint/a/f;->b:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v7, Landroid/support/constraint/a/f;->b:J

    :cond_15
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->p()I

    move-result v8

    if-eq v7, v8, :cond_2c

    invoke-virtual {v2, v7}, Landroid/support/constraint/a/a/f;->j(I)V

    if-eqz v16, :cond_16

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->i()Landroid/support/constraint/a/a/n;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/a/a/n;->a(I)V

    :cond_16
    if-eqz v5, :cond_2b

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->x()I

    move-result v7

    if-le v7, v9, :cond_2b

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->x()I

    move-result v7

    sget-object v8, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_9
    const/4 v8, 0x1

    :goto_a
    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->r()I

    move-result v9

    move/from16 v0, v22

    if-eq v0, v9, :cond_2a

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/f;->k(I)V

    if-eqz v16, :cond_17

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->j()Landroid/support/constraint/a/a/n;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/support/constraint/a/a/n;->a(I)V

    :cond_17
    if-eqz v6, :cond_29

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->y()I

    move-result v8

    if-le v8, v11, :cond_29

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->y()I

    move-result v8

    sget-object v9, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/a/a/e;->e()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_b
    const/4 v9, 0x1

    move v11, v8

    :goto_c
    iget-boolean v4, v4, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_18

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->A()I

    move-result v8

    if-eq v4, v8, :cond_18

    invoke-virtual {v2, v4}, Landroid/support/constraint/a/a/f;->q(I)V

    const/4 v9, 0x1

    :cond_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_28

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v2

    move v10, v9

    move v3, v13

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->p()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto/16 :goto_7

    :cond_1a
    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->r()I

    move-result v8

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_8

    :cond_1b
    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/g;->j(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/g;->k(I)V

    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->P()V

    :cond_1c
    const-string v2, "2nd pass"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/g;->p()I

    move-result v3

    if-ge v3, v9, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/g;->j(I)V

    const/4 v2, 0x1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/g;->r()I

    move-result v3

    if-ge v3, v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2, v11}, Landroid/support/constraint/a/a/g;->k(I)V

    const/4 v2, 0x1

    :cond_1e
    if-eqz v2, :cond_1f

    const-string v2, "3rd pass"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    :cond_1f
    const/4 v2, 0x0

    move v5, v2

    move v4, v14

    :goto_d
    move/from16 v0, v19

    if-ge v5, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/f;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->B()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_20

    move v2, v4

    :goto_e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    goto :goto_d

    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->p()I

    move-result v7

    if-ne v6, v7, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->r()I

    move-result v7

    if-eq v6, v7, :cond_27

    :cond_21
    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->l()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_27

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->p()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->r()I

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v6, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->b:J

    :cond_22
    add-int/lit8 v2, v4, 0x1

    goto :goto_e

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/g;->p()I

    move-result v2

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/g;->r()I

    move-result v3

    add-int v3, v3, v20

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_26

    move/from16 v0, p1

    invoke-static {v2, v0, v12}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v12, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v2, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/g;->K()Z

    move-result v4

    if-eqz v4, :cond_24

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/g;->L()Z

    move-result v4

    if-eqz v4, :cond_25

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    :goto_f
    return-void

    :cond_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    goto :goto_f

    :cond_27
    move v2, v4

    goto/16 :goto_e

    :cond_28
    move v10, v9

    move v2, v12

    move v3, v13

    goto/16 :goto_6

    :cond_29
    move v8, v11

    goto/16 :goto_b

    :cond_2a
    move v9, v8

    goto/16 :goto_c

    :cond_2b
    move v7, v9

    goto/16 :goto_9

    :cond_2c
    move v7, v9

    move v8, v10

    goto/16 :goto_a

    :cond_2d
    move v7, v9

    move v2, v12

    move v3, v13

    goto/16 :goto_6
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/f;

    move-result-object v0

    instance-of v1, p1, Landroid/support/constraint/Guideline;

    if-eqz v1, :cond_1

    instance-of v0, v0, Landroid/support/constraint/a/a/i;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    new-instance v1, Landroid/support/constraint/a/a/i;

    invoke-direct {v1}, Landroid/support/constraint/a/a/i;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    check-cast v1, Landroid/support/constraint/a/a/i;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/i;->a(I)V

    :cond_1
    instance-of v0, p1, Landroid/support/constraint/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/b;

    invoke-virtual {v0}, Landroid/support/constraint/b;->a()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$a;

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/f;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/g;->c(Landroid/support/constraint/a/a/f;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/c;

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/g;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/g;->a(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
