.class Landroid/support/v7/widget/StaggeredGridLayoutManager$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    const/high16 v1, -0x80000000

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_0
.end method

.method a(IIZ)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(IIZZZ)I

    move-result v0

    return v0
.end method

.method a(IIZZZ)I
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->c()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->d()I

    move-result v5

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eq p1, p2, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v6

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v7

    if-eqz p5, :cond_2

    if-gt v6, v5, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-eqz p5, :cond_5

    if-lt v7, v4, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    if-lt v6, v4, :cond_a

    if-gt v7, v5, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    :goto_3
    return v0

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_2
    if-ge v6, v5, :cond_3

    const/4 v2, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-le v7, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    :cond_8
    if-lt v6, v4, :cond_9

    if-le v7, v5, :cond_a

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    :cond_a
    add-int/2addr p1, v1

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public a(II)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method a()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    :cond_2
    return-void
.end method

.method a(ZI)V
    .locals 3

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e()V

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->c()I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_4
    if-eq p2, v2, :cond_5

    add-int/2addr v0, p2

    :cond_5
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_1
.end method

.method b()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_0
.end method

.method b(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return-object v0
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    return-void
.end method

.method d()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    return-void
.end method

.method f()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    return-void
.end method

.method g()V
    .locals 5

    const/high16 v4, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    return-void
.end method

.method h()V
    .locals 4

    const/high16 v3, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ai;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    :cond_2
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    return v0
.end method

.method public j()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method
