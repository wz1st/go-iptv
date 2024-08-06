.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$i;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$d;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroid/support/v7/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Landroid/support/v7/widget/ai;

.field k:Z

.field l:I

.field m:I

.field n:Landroid/support/v7/widget/LinearLayoutManager$d;

.field final o:Landroid/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->d:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->d()I

    move-result v2

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->a(I)V

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$u;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4}, Landroid/support/v7/widget/ai;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v5}, Landroid/support/v7/widget/ai;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 5

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ai;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_3

    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ai;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_6

    :cond_5
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    :cond_2
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    move v1, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ne v0, v4, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4}, Landroid/support/v7/widget/ai;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4}, Landroid/support/v7/widget/ai;->c()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ai;->a(I)V

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v2

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->e()I

    move-result v0

    sub-int v3, v0, p2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ai;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ai;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;II)V
    .locals 9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v1

    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v0

    add-int v1, v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-lez v3, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    :cond_7
    if-lez v2, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->X()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v4}, Landroid/support/v7/widget/ai;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v0

    :goto_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v0

    goto :goto_2
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/am;->b(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private k()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private m(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public F()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>(Landroid/support/v7/widget/LinearLayoutManager$d;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->b()V

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 7

    const/high16 v6, -0x80000000

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v6, :cond_1

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$b;->a()V

    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    :cond_4
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0

    :cond_5
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_6

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    :cond_7
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v6, :cond_9

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_8

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 3

    const/16 v0, 0x140

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/16 v2, 0x6003

    :goto_0
    if-eqz p4, :cond_2

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:Landroid/support/v7/widget/bb;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/bb;->a(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/bb;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/bb;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    const v2, 0x3eaaaaab

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v2, v6, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v4, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v2, p4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    if-ne v0, v5, :cond_3

    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-ne v0, v5, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Landroid/view/View;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    if-lez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    move v4, v0

    :goto_0
    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    if-ge v2, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v2, :cond_2

    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v0, v5, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->X()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v1, :cond_8

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Z

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    if-ltz v0, :cond_a

    move v0, v1

    move v3, v2

    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->c()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->g()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v6, -0x80000000

    if-eq v3, v6, :cond_5

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v6}, Landroid/support/v7/widget/ai;->d()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v3

    sub-int v3, v6, v3

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v3, v6

    :goto_3
    if-lez v3, :cond_c

    add-int/2addr v1, v3

    :cond_5
    :goto_4
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_d

    move v3, v4

    :goto_5
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;)V

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v3

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    :goto_6
    move v1, v3

    move v5, v0

    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-lez v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_12

    invoke-direct {p0, v1, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v0

    add-int v3, v5, v0

    add-int/2addr v0, v1

    invoke-direct {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v1

    add-int v5, v3, v1

    add-int/2addr v1, v0

    :cond_7
    :goto_8
    invoke-direct {p0, p1, p2, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;II)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->a()V

    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->d()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->c()I

    move-result v3

    if-gt v1, v3, :cond_4

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    move v3, v1

    goto/16 :goto_2

    :cond_b
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v6}, Landroid/support/v7/widget/ai;->c()I

    move-result v6

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int v3, v6, v3

    goto/16 :goto_3

    :cond_c
    sub-int/2addr v0, v3

    goto/16 :goto_4

    :cond_d
    move v3, v5

    goto/16 :goto_5

    :cond_e
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_f

    :goto_a
    move v3, v5

    goto/16 :goto_5

    :cond_f
    move v5, v4

    goto :goto_a

    :cond_10
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v3, :cond_11

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v1, v3

    :cond_11
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v6

    iput v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v5, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    move v1, v0

    move v5, v3

    goto/16 :goto_7

    :cond_12
    invoke-direct {p0, v5, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v0

    add-int v3, v5, v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v1

    add-int v5, v3, v1

    add-int/2addr v1, v0

    goto/16 :goto_8

    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    goto/16 :goto_9

    :cond_14
    move v1, v0

    move v5, v3

    goto/16 :goto_7

    :cond_15
    move v0, v1

    goto/16 :goto_6
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v0, :cond_5

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->o(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v7, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Q()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->U()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v4, :cond_9

    iget v5, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    move v4, v0

    :goto_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$j;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$j;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->n(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->S()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    :cond_9
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v5, v4

    move v4, v0

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->T()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->f(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_b

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v2, v4

    move v4, v0

    goto :goto_4

    :cond_b
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 3

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ad;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ad;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ad;->d(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()V

    goto :goto_0
.end method

.method public a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0x4104

    const/16 v0, 0x4004

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:Landroid/support/v7/widget/bb;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/bb;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x1041

    const/16 v0, 0x1001

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/bb;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/bb;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:Landroid/support/v7/widget/ai;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()V

    goto :goto_0
.end method

.method b_()Z
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->O()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()V

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v4

    add-int/2addr v1, v4

    if-gez v1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->x(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v2

    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->e()Landroid/support/v7/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    :cond_0
    return-void
.end method

.method e(I)I
    .locals 4

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method e()Landroid/support/v7/widget/LinearLayoutManager$c;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Landroid/support/v7/widget/RecyclerView$j;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(II)V

    return-object v0
.end method

.method public q(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()V

    return-void
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
