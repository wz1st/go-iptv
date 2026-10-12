.class public Landroid/support/constraint/ConstraintLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a$a;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Ljava/lang/String;

.field C:F

.field D:I

.field public E:F

.field public F:F

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:F

.field public P:F

.field public Q:I

.field public R:I

.field public S:I

.field public T:Z

.field public U:Z

.field V:Z

.field W:Z

.field X:Z

.field Y:Z

.field Z:Z

.field public a:I

.field aa:Z

.field ab:I

.field ac:I

.field ad:I

.field ae:I

.field af:I

.field ag:I

.field ah:F

.field ai:I

.field aj:I

.field ak:F

.field al:Landroid/support/constraint/a/a/f;

.field public am:Z

.field public b:I

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->A:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->E:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->F:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->P:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    new-instance v0, Landroid/support/constraint/a/a/f;

    invoke-direct {v0}, Landroid/support/constraint/a/a/f;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v1, 0x0

    const/4 v8, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->A:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F

    iput v11, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->E:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->F:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->P:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iput-boolean v11, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v11, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    new-instance v0, Landroid/support/constraint/a/a/f;

    invoke-direct {v0}, Landroid/support/constraint/a/a/f;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    sget-object v0, Landroid/support/constraint/f$b;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget-object v5, Landroid/support/constraint/ConstraintLayout$a$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_1
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    goto :goto_1

    :pswitch_2
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    goto :goto_1

    :pswitch_3
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    goto :goto_1

    :pswitch_4
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    goto :goto_1

    :pswitch_5
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    goto :goto_1

    :pswitch_6
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    goto :goto_1

    :pswitch_7
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    goto/16 :goto_1

    :pswitch_8
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    goto/16 :goto_1

    :pswitch_9
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    goto/16 :goto_1

    :pswitch_a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    goto/16 :goto_1

    :pswitch_b
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    goto/16 :goto_1

    :pswitch_c
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v0, v5

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    sub-float/2addr v0, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v0, v5

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    goto/16 :goto_1

    :pswitch_d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    goto/16 :goto_1

    :pswitch_e
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    goto/16 :goto_1

    :pswitch_f
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    goto/16 :goto_1

    :pswitch_10
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    goto/16 :goto_1

    :pswitch_11
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    goto/16 :goto_1

    :pswitch_12
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    goto/16 :goto_1

    :pswitch_13
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    goto/16 :goto_1

    :pswitch_14
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    goto/16 :goto_1

    :pswitch_15
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    goto/16 :goto_1

    :pswitch_16
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    goto/16 :goto_1

    :pswitch_17
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    goto/16 :goto_1

    :pswitch_18
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    goto/16 :goto_1

    :pswitch_19
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    goto/16 :goto_1

    :pswitch_1a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    goto/16 :goto_1

    :pswitch_1b
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    goto/16 :goto_1

    :pswitch_1c
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    goto/16 :goto_1

    :pswitch_1d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    goto/16 :goto_1

    :pswitch_1e
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->A:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->A:F

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_5

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v0, v10

    if-lez v6, :cond_0

    cmpl-float v6, v5, v10

    if-lez v6, :cond_0

    iget v6, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    if-ne v6, v11, :cond_4

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v11, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    div-float/2addr v0, v5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :pswitch_20
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->E:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->E:F

    goto/16 :goto_1

    :pswitch_21
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->F:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->F:F

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    goto/16 :goto_1

    :pswitch_24
    iget-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    goto/16 :goto_1

    :pswitch_25
    iget-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    if-ne v0, v11, :cond_0

    const-string v0, "ConstraintLayout"

    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    if-ne v0, v11, :cond_0

    const-string v0, "ConstraintLayout"

    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_28
    :try_start_3
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v9, :cond_0

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    goto/16 :goto_1

    :pswitch_29
    :try_start_4
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v9, :cond_0

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    goto/16 :goto_1

    :pswitch_2a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    goto/16 :goto_1

    :pswitch_2b
    :try_start_5
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v9, :cond_0

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    goto/16 :goto_1

    :pswitch_2c
    :try_start_6
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v9, :cond_0

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    goto/16 :goto_1

    :pswitch_2d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->P:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->P:F

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_24
        :pswitch_25
        :pswitch_1d
        :pswitch_1e
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->A:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->E:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->F:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->N:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->P:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    new-instance v0, Landroid/support/constraint/a/a/f;

    invoke-direct {v0}, Landroid/support/constraint/a/a/f;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    :cond_1
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v0, v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->I:I

    if-ne v0, v2, :cond_3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v0, v4, :cond_5

    :cond_4
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->J:I

    if-ne v0, v2, :cond_5

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    :cond_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    if-eq v0, v4, :cond_8

    :cond_6
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    instance-of v0, v0, Landroid/support/constraint/a/a/i;

    if-nez v0, :cond_7

    new-instance v0, Landroid/support/constraint/a/a/i;

    invoke-direct {v0}, Landroid/support/constraint/a/a/i;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    check-cast v0, Landroid/support/constraint/a/a/i;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/i;->a(I)V

    :cond_8
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v5, -0x1

    iget v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iget v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$a;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_9

    move v2, v1

    :goto_0
    if-eqz v2, :cond_d

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-eq v2, v5, :cond_a

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    move v0, v1

    :cond_0
    :goto_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-eq v2, v5, :cond_1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    move v0, v1

    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-eq v2, v5, :cond_2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    move v0, v1

    :cond_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    :cond_4
    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->z:F

    sub-float v0, v7, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    :cond_5
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->c:F

    sub-float v0, v7, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    :cond_6
    :goto_2
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    if-eq v0, v5, :cond_13

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    :cond_7
    :goto_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    if-eq v0, v5, :cond_14

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    :cond_8
    :goto_4
    return-void

    :cond_9
    move v2, v0

    goto :goto_0

    :cond_a
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-eq v2, v5, :cond_0

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    move v0, v1

    goto :goto_1

    :cond_b
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    if-eq v0, v5, :cond_c

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    goto :goto_2

    :cond_c
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    goto :goto_2

    :cond_d
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-eq v0, v5, :cond_e

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    :cond_e
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-eq v0, v5, :cond_f

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    :cond_f
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-eq v0, v5, :cond_10

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    :cond_10
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-eq v0, v5, :cond_11

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    :cond_11
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    if-eq v0, v5, :cond_12

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:I

    :cond_12
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    if-eq v0, v5, :cond_7

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    goto :goto_3

    :cond_14
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    goto :goto_4
.end method
