.class public Landroid/support/constraint/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/support/constraint/a/a/f;

.field protected b:Landroid/support/constraint/a/a/f;

.field protected c:Landroid/support/constraint/a/a/f;

.field protected d:Landroid/support/constraint/a/a/f;

.field protected e:Landroid/support/constraint/a/a/f;

.field protected f:Landroid/support/constraint/a/a/f;

.field protected g:Landroid/support/constraint/a/a/f;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/f;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/a/a/d;->p:Z

    iput-object p1, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    iput p2, p0, Landroid/support/constraint/a/a/d;->o:I

    iput-boolean p3, p0, Landroid/support/constraint/a/a/d;->p:Z

    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/f;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->l()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->g:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->g:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/constraint/a/a/d;->o:I

    mul-int/lit8 v7, v0, 0x2

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    iget-object v3, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    move v0, v4

    move-object v6, v2

    :goto_0
    if-nez v0, :cond_e

    iget v2, p0, Landroid/support/constraint/a/a/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/a/a/d;->i:I

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aput-object v5, v2, v8

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->ae:[Landroid/support/constraint/a/a/f;

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aput-object v5, v2, v8

    invoke-virtual {v3}, Landroid/support/constraint/a/a/f;->l()I

    move-result v2

    const/16 v8, 0x8

    if-eq v2, v8, :cond_7

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/f;

    if-nez v2, :cond_0

    iput-object v3, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/f;

    :cond_0
    iput-object v3, p0, Landroid/support/constraint/a/a/d;->d:Landroid/support/constraint/a/a/f;

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aget-object v2, v2, v8

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v8, :cond_7

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->g:[I

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aget v2, v2, v8

    if-eqz v2, :cond_1

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->g:[I

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aget v2, v2, v8

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->g:[I

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aget v2, v2, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    :cond_1
    iget v2, p0, Landroid/support/constraint/a/a/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/a/a/d;->j:I

    iget-object v2, v3, Landroid/support/constraint/a/a/f;->ad:[F

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aget v2, v2, v8

    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    iget v8, p0, Landroid/support/constraint/a/a/d;->k:F

    iget-object v9, v3, Landroid/support/constraint/a/a/f;->ad:[F

    iget v10, p0, Landroid/support/constraint/a/a/d;->o:I

    aget v9, v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/a/a/d;->k:F

    :cond_2
    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    invoke-static {v3, v8}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/f;I)Z

    move-result v8

    if-eqz v8, :cond_4

    cmpg-float v2, v2, v11

    if-gez v2, :cond_b

    iput-boolean v1, p0, Landroid/support/constraint/a/a/d;->l:Z

    :goto_1
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/a/a/d;->h:Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/a/f;

    if-nez v2, :cond_5

    iput-object v3, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/a/f;

    :cond_5
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/f;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/f;

    iget-object v2, v2, Landroid/support/constraint/a/a/f;->ae:[Landroid/support/constraint/a/a/f;

    iget v8, p0, Landroid/support/constraint/a/a/d;->o:I

    aput-object v3, v2, v8

    :cond_6
    iput-object v3, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/f;

    :cond_7
    if-eq v6, v3, :cond_8

    iget-object v2, v6, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    iget v6, p0, Landroid/support/constraint/a/a/d;->o:I

    aput-object v3, v2, v6

    :cond_8
    iget-object v2, v3, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v6, v7, 0x1

    aget-object v2, v2, v6

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_c

    iget-object v2, v2, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iget-object v6, v2, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v6, :cond_9

    iget-object v6, v2, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    if-eq v6, v3, :cond_a

    :cond_9
    move-object v2, v5

    :cond_a
    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    move-object v6, v3

    move-object v3, v2

    goto/16 :goto_0

    :cond_b
    iput-boolean v1, p0, Landroid/support/constraint/a/a/d;->m:Z

    goto :goto_1

    :cond_c
    move-object v2, v5

    goto :goto_2

    :cond_d
    move v0, v1

    move-object v2, v3

    goto :goto_3

    :cond_e
    iput-object v3, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/f;

    iget v0, p0, Landroid/support/constraint/a/a/d;->o:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->p:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/f;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->e:Landroid/support/constraint/a/a/f;

    :goto_4
    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->m:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->l:Z

    if-eqz v0, :cond_10

    :goto_5
    iput-boolean v1, p0, Landroid/support/constraint/a/a/d;->n:Z

    return-void

    :cond_f
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/f;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->e:Landroid/support/constraint/a/a/f;

    goto :goto_4

    :cond_10
    move v1, v4

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/constraint/a/a/d;->b()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/d;->q:Z

    return-void
.end method
