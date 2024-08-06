.class Landroid/support/v17/leanback/widget/picker/a$1;
.super Landroid/support/v17/leanback/widget/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/picker/a;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/a$1;->a:Landroid/support/v17/leanback/widget/picker/a;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/a$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$1;->a:Landroid/support/v17/leanback/widget/picker/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$1;->a:Landroid/support/v17/leanback/widget/picker/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/a;->a(IZ)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$1;->a:Landroid/support/v17/leanback/widget/picker/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/b;->c()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a$1;->a:Landroid/support/v17/leanback/widget/picker/a;

    invoke-virtual {v2, v1, v0}, Landroid/support/v17/leanback/widget/picker/a;->a(II)V

    :cond_0
    return-void
.end method
