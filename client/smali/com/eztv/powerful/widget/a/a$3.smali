.class Lcom/eztv/powerful/widget/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/a/a;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget v2, v2, Lcom/eztv/powerful/widget/a/a;->i:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->c()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :try_start_1
    new-instance v1, Lcom/eztv/powerful/widget/a/a$3$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$3$1;-><init>(Lcom/eztv/powerful/widget/a/a$3;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/widget/a/a/b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a;->b(Lcom/eztv/powerful/widget/a/a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    new-instance v2, Lcom/eztv/powerful/widget/a/a$3$2;

    invoke-direct {v2, p0}, Lcom/eztv/powerful/widget/a/a$3$2;-><init>(Lcom/eztv/powerful/widget/a/a$3;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_2
    new-instance v1, Lcom/eztv/powerful/widget/a/a$3$3;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$3$3;-><init>(Lcom/eztv/powerful/widget/a/a$3;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/widget/a/a/b;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget v2, v2, Lcom/eztv/powerful/widget/a/a;->i:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->c()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :try_start_1
    new-instance v1, Lcom/eztv/powerful/widget/a/a$3$4;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$3$4;-><init>(Lcom/eztv/powerful/widget/a/a$3;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/widget/a/a/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$3;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a;->b(Lcom/eztv/powerful/widget/a/a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
