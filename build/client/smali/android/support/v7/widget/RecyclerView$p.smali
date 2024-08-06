.class public final Landroid/support/v7/widget/RecyclerView$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/support/v7/widget/RecyclerView$o;

.field final synthetic f:Landroid/support/v7/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x2

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->g:Ljava/util/List;

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$x;IIJ)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$o;->b(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$x;I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->b(IJ)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->e(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p3, p1, Landroid/support/v7/widget/RecyclerView$x;->h:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/f/t;->e(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/f/t;->b(Landroid/view/View;I)V

    :cond_0
    invoke-static {v0}, Landroid/support/v4/f/t;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->c()Landroid/support/v4/f/b;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/support/v4/f/b;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(IZJ)Landroid/support/v7/widget/RecyclerView$x;
    .locals 11

    const/16 v10, 0x2000

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->f(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    if-eqz v1, :cond_6

    move v0, v6

    :goto_0
    move v2, v0

    :goto_1
    if-nez v1, :cond_19

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$p;->b(IZ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v1, v3, v7}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->j()V

    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_3
    move-object v0, v8

    :cond_4
    :goto_3
    if-nez v0, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/e;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    if-lt v3, v1, :cond_9

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->l()V

    goto :goto_2

    :cond_8
    move v2, v6

    goto :goto_3

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroid/support/v7/widget/RecyclerView$p;->a(JIZ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_17

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    move v9, v6

    :goto_4
    if-nez v0, :cond_b

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$v;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$v;->a(Landroid/support/v7/widget/RecyclerView$p;II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->a(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->v()V

    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->f(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_c
    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$o;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v8

    :goto_5
    return-object v1

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/support/v7/widget/RecyclerView$x;->c:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    sub-long v2, v4, v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$o;->a(IJ)V

    :cond_f
    move-object v1, v0

    move v8, v9

    :goto_6
    if-eqz v8, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1, v10}, Landroid/support/v7/widget/RecyclerView$x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v7, v10}, Landroid/support/v7/widget/RecyclerView$x;->a(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$u;->j:Z

    if-eqz v0, :cond_10

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$f;->e(Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$f;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->u()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$x;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$c;)V

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    iput p1, v1, Landroid/support/v7/widget/RecyclerView$x;->h:I

    move v2, v7

    :goto_7
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    :goto_9
    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView$j;->h:Z

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->o()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;IIJ)Z

    move-result v0

    move v2, v0

    goto :goto_7

    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_14
    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    goto :goto_8

    :cond_15
    move v6, v7

    goto :goto_9

    :cond_16
    move v2, v7

    goto :goto_7

    :cond_17
    move v9, v2

    goto/16 :goto_4

    :cond_18
    move-object v1, v0

    move v8, v2

    goto/16 :goto_6

    :cond_19
    move-object v0, v1

    goto/16 :goto_3

    :cond_1a
    move-object v1, v8

    move v2, v7

    goto/16 :goto_1
.end method

.method a(JIZ)Landroid/support/v7/widget/RecyclerView$x;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v3

    if-ne p3, v3, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$x;->a(II)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-nez p4, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v3

    if-ne p3, v3, :cond_4

    if-nez p4, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez p4, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(IZJ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    return-void
.end method

.method a(II)V
    .locals 8

    const/4 v5, 0x0

    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-le v7, v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    :cond_2
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-ne v7, p1, :cond_3

    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/RecyclerView$x;->a(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$x;->a(IZ)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    add-int v2, p1, p2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-lt v3, v2, :cond_1

    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/RecyclerView$x;->a(IZ)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-lt v3, p1, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$o;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$o;->c()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$o;->b()V

    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$v;

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$x;Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x4000

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$x;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->a(II)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/support/v4/f/b;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->d(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->j()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->l()V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$x;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$x;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$x;->d:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->h()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$x;->d:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method b(IZ)Landroid/support/v7/widget/RecyclerView$x;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->n()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->q()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-nez p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/s;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s;->e(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/s;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/s;->e(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->c(Landroid/view/View;)V

    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->n()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v3

    if-ne v3, p1, :cond_6

    if-nez p2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->F:I

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/RecyclerView$x;->a(IZ)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->y()Z

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-lez v0, :cond_d

    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_6
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/aa$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$x;->d:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/aa$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/aa$a;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/aa$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_7
    add-int/lit8 v0, v3, 0x1

    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    :goto_3
    if-nez v0, :cond_c

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V

    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/bc;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bc;->g(Landroid/support/v7/widget/RecyclerView$x;)V

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->q:Landroid/support/v7/widget/RecyclerView;

    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v1, v2

    move v0, v2

    goto :goto_4
.end method

.method b(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->n:Landroid/support/v7/widget/RecyclerView$p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$x;->o:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->l()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 4

    add-int v2, p1, p2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$x;->d:I

    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$x;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->n:Landroid/support/v7/widget/RecyclerView$p;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$x;->o:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$x;->a(Landroid/support/v7/widget/RecyclerView$p;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$x;->a(Landroid/support/v7/widget/RecyclerView$p;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/aa$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa$a;->a()V

    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method d(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/bc;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bc;->g(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    return-object v0
.end method

.method f(I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method g()Landroid/support/v7/widget/RecyclerView$o;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/RecyclerView$o;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    return-object v0
.end method

.method h()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$x;->b(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$x;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->d()V

    :cond_3
    return-void
.end method

.method i()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$j;->g:Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
