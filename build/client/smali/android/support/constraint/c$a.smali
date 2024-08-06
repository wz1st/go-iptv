.class Landroid/support/constraint/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public S:I

.field public T:I

.field public U:F

.field public V:Z

.field public W:F

.field public X:F

.field public Y:F

.field public Z:F

.field a:Z

.field public aa:F

.field public ab:F

.field public ac:F

.field public ad:F

.field public ae:F

.field public af:F

.field public ag:F

.field public ah:Z

.field public ai:Z

.field public aj:I

.field public ak:I

.field public al:I

.field public am:I

.field public an:I

.field public ao:I

.field public ap:F

.field public aq:F

.field public ar:Z

.field public as:I

.field public at:I

.field public au:[I

.field public av:Ljava/lang/String;

.field public b:I

.field public c:I

.field d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method private constructor <init>()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/support/constraint/c$a;->a:Z

    iput v1, p0, Landroid/support/constraint/c$a;->e:I

    iput v1, p0, Landroid/support/constraint/c$a;->f:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/c$a;->g:F

    iput v1, p0, Landroid/support/constraint/c$a;->h:I

    iput v1, p0, Landroid/support/constraint/c$a;->i:I

    iput v1, p0, Landroid/support/constraint/c$a;->j:I

    iput v1, p0, Landroid/support/constraint/c$a;->k:I

    iput v1, p0, Landroid/support/constraint/c$a;->l:I

    iput v1, p0, Landroid/support/constraint/c$a;->m:I

    iput v1, p0, Landroid/support/constraint/c$a;->n:I

    iput v1, p0, Landroid/support/constraint/c$a;->o:I

    iput v1, p0, Landroid/support/constraint/c$a;->p:I

    iput v1, p0, Landroid/support/constraint/c$a;->q:I

    iput v1, p0, Landroid/support/constraint/c$a;->r:I

    iput v1, p0, Landroid/support/constraint/c$a;->s:I

    iput v1, p0, Landroid/support/constraint/c$a;->t:I

    iput v5, p0, Landroid/support/constraint/c$a;->u:F

    iput v5, p0, Landroid/support/constraint/c$a;->v:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/c$a;->w:Ljava/lang/String;

    iput v1, p0, Landroid/support/constraint/c$a;->x:I

    iput v2, p0, Landroid/support/constraint/c$a;->y:I

    iput v3, p0, Landroid/support/constraint/c$a;->z:F

    iput v1, p0, Landroid/support/constraint/c$a;->A:I

    iput v1, p0, Landroid/support/constraint/c$a;->B:I

    iput v1, p0, Landroid/support/constraint/c$a;->C:I

    iput v1, p0, Landroid/support/constraint/c$a;->D:I

    iput v1, p0, Landroid/support/constraint/c$a;->E:I

    iput v1, p0, Landroid/support/constraint/c$a;->F:I

    iput v1, p0, Landroid/support/constraint/c$a;->G:I

    iput v1, p0, Landroid/support/constraint/c$a;->H:I

    iput v1, p0, Landroid/support/constraint/c$a;->I:I

    iput v2, p0, Landroid/support/constraint/c$a;->J:I

    iput v1, p0, Landroid/support/constraint/c$a;->K:I

    iput v1, p0, Landroid/support/constraint/c$a;->L:I

    iput v1, p0, Landroid/support/constraint/c$a;->M:I

    iput v1, p0, Landroid/support/constraint/c$a;->N:I

    iput v1, p0, Landroid/support/constraint/c$a;->O:I

    iput v1, p0, Landroid/support/constraint/c$a;->P:I

    iput v3, p0, Landroid/support/constraint/c$a;->Q:F

    iput v3, p0, Landroid/support/constraint/c$a;->R:F

    iput v2, p0, Landroid/support/constraint/c$a;->S:I

    iput v2, p0, Landroid/support/constraint/c$a;->T:I

    iput v4, p0, Landroid/support/constraint/c$a;->U:F

    iput-boolean v2, p0, Landroid/support/constraint/c$a;->V:Z

    iput v3, p0, Landroid/support/constraint/c$a;->W:F

    iput v3, p0, Landroid/support/constraint/c$a;->X:F

    iput v3, p0, Landroid/support/constraint/c$a;->Y:F

    iput v3, p0, Landroid/support/constraint/c$a;->Z:F

    iput v4, p0, Landroid/support/constraint/c$a;->aa:F

    iput v4, p0, Landroid/support/constraint/c$a;->ab:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/c$a;->ac:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/c$a;->ad:F

    iput v3, p0, Landroid/support/constraint/c$a;->ae:F

    iput v3, p0, Landroid/support/constraint/c$a;->af:F

    iput v3, p0, Landroid/support/constraint/c$a;->ag:F

    iput-boolean v2, p0, Landroid/support/constraint/c$a;->ah:Z

    iput-boolean v2, p0, Landroid/support/constraint/c$a;->ai:Z

    iput v2, p0, Landroid/support/constraint/c$a;->aj:I

    iput v2, p0, Landroid/support/constraint/c$a;->ak:I

    iput v1, p0, Landroid/support/constraint/c$a;->al:I

    iput v1, p0, Landroid/support/constraint/c$a;->am:I

    iput v1, p0, Landroid/support/constraint/c$a;->an:I

    iput v1, p0, Landroid/support/constraint/c$a;->ao:I

    iput v4, p0, Landroid/support/constraint/c$a;->ap:F

    iput v4, p0, Landroid/support/constraint/c$a;->aq:F

    iput-boolean v2, p0, Landroid/support/constraint/c$a;->ar:Z

    iput v1, p0, Landroid/support/constraint/c$a;->as:I

    iput v1, p0, Landroid/support/constraint/c$a;->at:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/constraint/c$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/constraint/c$a;-><init>()V

    return-void
.end method

.method private a(ILandroid/support/constraint/ConstraintLayout$a;)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/c$a;->d:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iput v0, p0, Landroid/support/constraint/c$a;->h:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iput v0, p0, Landroid/support/constraint/c$a;->i:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iput v0, p0, Landroid/support/constraint/c$a;->j:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iput v0, p0, Landroid/support/constraint/c$a;->k:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iput v0, p0, Landroid/support/constraint/c$a;->l:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iput v0, p0, Landroid/support/constraint/c$a;->m:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iput v0, p0, Landroid/support/constraint/c$a;->n:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iput v0, p0, Landroid/support/constraint/c$a;->o:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iput v0, p0, Landroid/support/constraint/c$a;->p:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v0, p0, Landroid/support/constraint/c$a;->q:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v0, p0, Landroid/support/constraint/c$a;->r:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v0, p0, Landroid/support/constraint/c$a;->s:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v0, p0, Landroid/support/constraint/c$a;->t:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->z:F

    iput v0, p0, Landroid/support/constraint/c$a;->u:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->A:F

    iput v0, p0, Landroid/support/constraint/c$a;->v:F

    iget-object v0, p2, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/c$a;->w:Ljava/lang/String;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v0, p0, Landroid/support/constraint/c$a;->x:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->n:I

    iput v0, p0, Landroid/support/constraint/c$a;->y:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v0, p0, Landroid/support/constraint/c$a;->z:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v0, p0, Landroid/support/constraint/c$a;->A:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v0, p0, Landroid/support/constraint/c$a;->B:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput v0, p0, Landroid/support/constraint/c$a;->C:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iput v0, p0, Landroid/support/constraint/c$a;->g:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iput v0, p0, Landroid/support/constraint/c$a;->e:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iput v0, p0, Landroid/support/constraint/c$a;->f:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iput v0, p0, Landroid/support/constraint/c$a;->b:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iput v0, p0, Landroid/support/constraint/c$a;->c:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->D:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->E:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->F:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->G:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->F:F

    iput v0, p0, Landroid/support/constraint/c$a;->Q:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->E:F

    iput v0, p0, Landroid/support/constraint/c$a;->R:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v0, p0, Landroid/support/constraint/c$a;->T:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v0, p0, Landroid/support/constraint/c$a;->S:I

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->ah:Z

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->ai:Z

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iput v0, p0, Landroid/support/constraint/c$a;->aj:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iput v0, p0, Landroid/support/constraint/c$a;->ak:I

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->ah:Z

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iput v0, p0, Landroid/support/constraint/c$a;->al:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->N:I

    iput v0, p0, Landroid/support/constraint/c$a;->am:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iput v0, p0, Landroid/support/constraint/c$a;->an:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iput v0, p0, Landroid/support/constraint/c$a;->ao:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->O:F

    iput v0, p0, Landroid/support/constraint/c$a;->ap:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->P:F

    iput v0, p0, Landroid/support/constraint/c$a;->aq:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginEnd()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/c$a;->H:I

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginStart()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/c$a;->I:I

    :cond_0
    return-void
.end method

.method private a(ILandroid/support/constraint/d$a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/c$a;->a(ILandroid/support/constraint/ConstraintLayout$a;)V

    iget v0, p2, Landroid/support/constraint/d$a;->an:F

    iput v0, p0, Landroid/support/constraint/c$a;->U:F

    iget v0, p2, Landroid/support/constraint/d$a;->aq:F

    iput v0, p0, Landroid/support/constraint/c$a;->X:F

    iget v0, p2, Landroid/support/constraint/d$a;->ar:F

    iput v0, p0, Landroid/support/constraint/c$a;->Y:F

    iget v0, p2, Landroid/support/constraint/d$a;->as:F

    iput v0, p0, Landroid/support/constraint/c$a;->Z:F

    iget v0, p2, Landroid/support/constraint/d$a;->at:F

    iput v0, p0, Landroid/support/constraint/c$a;->aa:F

    iget v0, p2, Landroid/support/constraint/d$a;->au:F

    iput v0, p0, Landroid/support/constraint/c$a;->ab:F

    iget v0, p2, Landroid/support/constraint/d$a;->av:F

    iput v0, p0, Landroid/support/constraint/c$a;->ac:F

    iget v0, p2, Landroid/support/constraint/d$a;->aw:F

    iput v0, p0, Landroid/support/constraint/c$a;->ad:F

    iget v0, p2, Landroid/support/constraint/d$a;->ax:F

    iput v0, p0, Landroid/support/constraint/c$a;->ae:F

    iget v0, p2, Landroid/support/constraint/d$a;->ay:F

    iput v0, p0, Landroid/support/constraint/c$a;->af:F

    iget v0, p2, Landroid/support/constraint/d$a;->az:F

    iput v0, p0, Landroid/support/constraint/c$a;->ag:F

    iget v0, p2, Landroid/support/constraint/d$a;->ap:F

    iput v0, p0, Landroid/support/constraint/c$a;->W:F

    iget-boolean v0, p2, Landroid/support/constraint/d$a;->ao:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->V:Z

    return-void
.end method

.method private a(Landroid/support/constraint/b;ILandroid/support/constraint/d$a;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/support/constraint/c$a;->a(ILandroid/support/constraint/d$a;)V

    instance-of v0, p1, Landroid/support/constraint/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/c$a;->at:I

    check-cast p1, Landroid/support/constraint/a;

    invoke-virtual {p1}, Landroid/support/constraint/a;->getType()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/c$a;->as:I

    invoke-virtual {p1}, Landroid/support/constraint/a;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/c$a;->au:[I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/constraint/c$a;ILandroid/support/constraint/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/c$a;->a(ILandroid/support/constraint/d$a;)V

    return-void
.end method

.method static synthetic a(Landroid/support/constraint/c$a;Landroid/support/constraint/b;ILandroid/support/constraint/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/c$a;->a(Landroid/support/constraint/b;ILandroid/support/constraint/d$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/constraint/c$a;
    .locals 3

    new-instance v0, Landroid/support/constraint/c$a;

    invoke-direct {v0}, Landroid/support/constraint/c$a;-><init>()V

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->a:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->a:Z

    iget v1, p0, Landroid/support/constraint/c$a;->b:I

    iput v1, v0, Landroid/support/constraint/c$a;->b:I

    iget v1, p0, Landroid/support/constraint/c$a;->c:I

    iput v1, v0, Landroid/support/constraint/c$a;->c:I

    iget v1, p0, Landroid/support/constraint/c$a;->e:I

    iput v1, v0, Landroid/support/constraint/c$a;->e:I

    iget v1, p0, Landroid/support/constraint/c$a;->f:I

    iput v1, v0, Landroid/support/constraint/c$a;->f:I

    iget v1, p0, Landroid/support/constraint/c$a;->g:F

    iput v1, v0, Landroid/support/constraint/c$a;->g:F

    iget v1, p0, Landroid/support/constraint/c$a;->h:I

    iput v1, v0, Landroid/support/constraint/c$a;->h:I

    iget v1, p0, Landroid/support/constraint/c$a;->i:I

    iput v1, v0, Landroid/support/constraint/c$a;->i:I

    iget v1, p0, Landroid/support/constraint/c$a;->j:I

    iput v1, v0, Landroid/support/constraint/c$a;->j:I

    iget v1, p0, Landroid/support/constraint/c$a;->k:I

    iput v1, v0, Landroid/support/constraint/c$a;->k:I

    iget v1, p0, Landroid/support/constraint/c$a;->l:I

    iput v1, v0, Landroid/support/constraint/c$a;->l:I

    iget v1, p0, Landroid/support/constraint/c$a;->m:I

    iput v1, v0, Landroid/support/constraint/c$a;->m:I

    iget v1, p0, Landroid/support/constraint/c$a;->n:I

    iput v1, v0, Landroid/support/constraint/c$a;->n:I

    iget v1, p0, Landroid/support/constraint/c$a;->o:I

    iput v1, v0, Landroid/support/constraint/c$a;->o:I

    iget v1, p0, Landroid/support/constraint/c$a;->p:I

    iput v1, v0, Landroid/support/constraint/c$a;->p:I

    iget v1, p0, Landroid/support/constraint/c$a;->q:I

    iput v1, v0, Landroid/support/constraint/c$a;->q:I

    iget v1, p0, Landroid/support/constraint/c$a;->r:I

    iput v1, v0, Landroid/support/constraint/c$a;->r:I

    iget v1, p0, Landroid/support/constraint/c$a;->s:I

    iput v1, v0, Landroid/support/constraint/c$a;->s:I

    iget v1, p0, Landroid/support/constraint/c$a;->t:I

    iput v1, v0, Landroid/support/constraint/c$a;->t:I

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->v:F

    iput v1, v0, Landroid/support/constraint/c$a;->v:F

    iget-object v1, p0, Landroid/support/constraint/c$a;->w:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/constraint/c$a;->w:Ljava/lang/String;

    iget v1, p0, Landroid/support/constraint/c$a;->A:I

    iput v1, v0, Landroid/support/constraint/c$a;->A:I

    iget v1, p0, Landroid/support/constraint/c$a;->B:I

    iput v1, v0, Landroid/support/constraint/c$a;->B:I

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->u:F

    iput v1, v0, Landroid/support/constraint/c$a;->u:F

    iget v1, p0, Landroid/support/constraint/c$a;->C:I

    iput v1, v0, Landroid/support/constraint/c$a;->C:I

    iget v1, p0, Landroid/support/constraint/c$a;->D:I

    iput v1, v0, Landroid/support/constraint/c$a;->D:I

    iget v1, p0, Landroid/support/constraint/c$a;->E:I

    iput v1, v0, Landroid/support/constraint/c$a;->E:I

    iget v1, p0, Landroid/support/constraint/c$a;->F:I

    iput v1, v0, Landroid/support/constraint/c$a;->F:I

    iget v1, p0, Landroid/support/constraint/c$a;->G:I

    iput v1, v0, Landroid/support/constraint/c$a;->G:I

    iget v1, p0, Landroid/support/constraint/c$a;->H:I

    iput v1, v0, Landroid/support/constraint/c$a;->H:I

    iget v1, p0, Landroid/support/constraint/c$a;->I:I

    iput v1, v0, Landroid/support/constraint/c$a;->I:I

    iget v1, p0, Landroid/support/constraint/c$a;->J:I

    iput v1, v0, Landroid/support/constraint/c$a;->J:I

    iget v1, p0, Landroid/support/constraint/c$a;->K:I

    iput v1, v0, Landroid/support/constraint/c$a;->K:I

    iget v1, p0, Landroid/support/constraint/c$a;->L:I

    iput v1, v0, Landroid/support/constraint/c$a;->L:I

    iget v1, p0, Landroid/support/constraint/c$a;->M:I

    iput v1, v0, Landroid/support/constraint/c$a;->M:I

    iget v1, p0, Landroid/support/constraint/c$a;->N:I

    iput v1, v0, Landroid/support/constraint/c$a;->N:I

    iget v1, p0, Landroid/support/constraint/c$a;->O:I

    iput v1, v0, Landroid/support/constraint/c$a;->O:I

    iget v1, p0, Landroid/support/constraint/c$a;->P:I

    iput v1, v0, Landroid/support/constraint/c$a;->P:I

    iget v1, p0, Landroid/support/constraint/c$a;->Q:F

    iput v1, v0, Landroid/support/constraint/c$a;->Q:F

    iget v1, p0, Landroid/support/constraint/c$a;->R:F

    iput v1, v0, Landroid/support/constraint/c$a;->R:F

    iget v1, p0, Landroid/support/constraint/c$a;->S:I

    iput v1, v0, Landroid/support/constraint/c$a;->S:I

    iget v1, p0, Landroid/support/constraint/c$a;->T:I

    iput v1, v0, Landroid/support/constraint/c$a;->T:I

    iget v1, p0, Landroid/support/constraint/c$a;->U:F

    iput v1, v0, Landroid/support/constraint/c$a;->U:F

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->V:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->V:Z

    iget v1, p0, Landroid/support/constraint/c$a;->W:F

    iput v1, v0, Landroid/support/constraint/c$a;->W:F

    iget v1, p0, Landroid/support/constraint/c$a;->X:F

    iput v1, v0, Landroid/support/constraint/c$a;->X:F

    iget v1, p0, Landroid/support/constraint/c$a;->Y:F

    iput v1, v0, Landroid/support/constraint/c$a;->Y:F

    iget v1, p0, Landroid/support/constraint/c$a;->Z:F

    iput v1, v0, Landroid/support/constraint/c$a;->Z:F

    iget v1, p0, Landroid/support/constraint/c$a;->aa:F

    iput v1, v0, Landroid/support/constraint/c$a;->aa:F

    iget v1, p0, Landroid/support/constraint/c$a;->ab:F

    iput v1, v0, Landroid/support/constraint/c$a;->ab:F

    iget v1, p0, Landroid/support/constraint/c$a;->ac:F

    iput v1, v0, Landroid/support/constraint/c$a;->ac:F

    iget v1, p0, Landroid/support/constraint/c$a;->ad:F

    iput v1, v0, Landroid/support/constraint/c$a;->ad:F

    iget v1, p0, Landroid/support/constraint/c$a;->ae:F

    iput v1, v0, Landroid/support/constraint/c$a;->ae:F

    iget v1, p0, Landroid/support/constraint/c$a;->af:F

    iput v1, v0, Landroid/support/constraint/c$a;->af:F

    iget v1, p0, Landroid/support/constraint/c$a;->ag:F

    iput v1, v0, Landroid/support/constraint/c$a;->ag:F

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->ah:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->ah:Z

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->ai:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->ai:Z

    iget v1, p0, Landroid/support/constraint/c$a;->aj:I

    iput v1, v0, Landroid/support/constraint/c$a;->aj:I

    iget v1, p0, Landroid/support/constraint/c$a;->ak:I

    iput v1, v0, Landroid/support/constraint/c$a;->ak:I

    iget v1, p0, Landroid/support/constraint/c$a;->al:I

    iput v1, v0, Landroid/support/constraint/c$a;->al:I

    iget v1, p0, Landroid/support/constraint/c$a;->am:I

    iput v1, v0, Landroid/support/constraint/c$a;->am:I

    iget v1, p0, Landroid/support/constraint/c$a;->an:I

    iput v1, v0, Landroid/support/constraint/c$a;->an:I

    iget v1, p0, Landroid/support/constraint/c$a;->ao:I

    iput v1, v0, Landroid/support/constraint/c$a;->ao:I

    iget v1, p0, Landroid/support/constraint/c$a;->ap:F

    iput v1, v0, Landroid/support/constraint/c$a;->ap:F

    iget v1, p0, Landroid/support/constraint/c$a;->aq:F

    iput v1, v0, Landroid/support/constraint/c$a;->aq:F

    iget v1, p0, Landroid/support/constraint/c$a;->as:I

    iput v1, v0, Landroid/support/constraint/c$a;->as:I

    iget v1, p0, Landroid/support/constraint/c$a;->at:I

    iput v1, v0, Landroid/support/constraint/c$a;->at:I

    iget-object v1, p0, Landroid/support/constraint/c$a;->au:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/c$a;->au:[I

    iget-object v2, p0, Landroid/support/constraint/c$a;->au:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/c$a;->au:[I

    :cond_0
    iget v1, p0, Landroid/support/constraint/c$a;->x:I

    iput v1, v0, Landroid/support/constraint/c$a;->x:I

    iget v1, p0, Landroid/support/constraint/c$a;->y:I

    iput v1, v0, Landroid/support/constraint/c$a;->y:I

    iget v1, p0, Landroid/support/constraint/c$a;->z:F

    iput v1, v0, Landroid/support/constraint/c$a;->z:F

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->ar:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->ar:Z

    return-object v0
.end method

.method public a(Landroid/support/constraint/ConstraintLayout$a;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/c$a;->h:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->d:I

    iget v0, p0, Landroid/support/constraint/c$a;->i:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->e:I

    iget v0, p0, Landroid/support/constraint/c$a;->j:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->f:I

    iget v0, p0, Landroid/support/constraint/c$a;->k:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->g:I

    iget v0, p0, Landroid/support/constraint/c$a;->l:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->h:I

    iget v0, p0, Landroid/support/constraint/c$a;->m:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->i:I

    iget v0, p0, Landroid/support/constraint/c$a;->n:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->j:I

    iget v0, p0, Landroid/support/constraint/c$a;->o:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->k:I

    iget v0, p0, Landroid/support/constraint/c$a;->p:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->l:I

    iget v0, p0, Landroid/support/constraint/c$a;->q:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iget v0, p0, Landroid/support/constraint/c$a;->r:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iget v0, p0, Landroid/support/constraint/c$a;->s:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iget v0, p0, Landroid/support/constraint/c$a;->t:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iget v0, p0, Landroid/support/constraint/c$a;->D:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->E:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->F:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->G:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->P:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iget v0, p0, Landroid/support/constraint/c$a;->O:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iget v0, p0, Landroid/support/constraint/c$a;->u:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->z:F

    iget v0, p0, Landroid/support/constraint/c$a;->v:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->A:F

    iget v0, p0, Landroid/support/constraint/c$a;->x:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iget v0, p0, Landroid/support/constraint/c$a;->y:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->n:I

    iget v0, p0, Landroid/support/constraint/c$a;->z:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iget-object v0, p0, Landroid/support/constraint/c$a;->w:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    iget v0, p0, Landroid/support/constraint/c$a;->A:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iget v0, p0, Landroid/support/constraint/c$a;->B:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iget v0, p0, Landroid/support/constraint/c$a;->Q:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->F:F

    iget v0, p0, Landroid/support/constraint/c$a;->R:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->E:F

    iget v0, p0, Landroid/support/constraint/c$a;->T:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iget v0, p0, Landroid/support/constraint/c$a;->S:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iget-boolean v0, p0, Landroid/support/constraint/c$a;->ah:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->T:Z

    iget-boolean v0, p0, Landroid/support/constraint/c$a;->ai:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iget v0, p0, Landroid/support/constraint/c$a;->aj:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iget v0, p0, Landroid/support/constraint/c$a;->ak:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iget v0, p0, Landroid/support/constraint/c$a;->al:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iget v0, p0, Landroid/support/constraint/c$a;->am:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->N:I

    iget v0, p0, Landroid/support/constraint/c$a;->an:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iget v0, p0, Landroid/support/constraint/c$a;->ao:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iget v0, p0, Landroid/support/constraint/c$a;->ap:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->O:F

    iget v0, p0, Landroid/support/constraint/c$a;->aq:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->P:F

    iget v0, p0, Landroid/support/constraint/c$a;->C:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iget v0, p0, Landroid/support/constraint/c$a;->g:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->c:F

    iget v0, p0, Landroid/support/constraint/c$a;->e:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->a:I

    iget v0, p0, Landroid/support/constraint/c$a;->f:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->b:I

    iget v0, p0, Landroid/support/constraint/c$a;->b:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v0, p0, Landroid/support/constraint/c$a;->c:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->height:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/c$a;->I:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginStart(I)V

    iget v0, p0, Landroid/support/constraint/c$a;->H:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginEnd(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/c$a;->a()Landroid/support/constraint/c$a;

    move-result-object v0

    return-object v0
.end method
