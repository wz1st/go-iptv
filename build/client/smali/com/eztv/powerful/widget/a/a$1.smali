.class Lcom/eztv/powerful/widget/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a;->d()V
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

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$1;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$1;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$1;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$1;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$1;->a:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
