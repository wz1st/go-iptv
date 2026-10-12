.class Lcom/eztv/powerful/widget/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/widget/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/widget/a/a/b$c;

.field final synthetic c:Lcom/eztv/powerful/widget/a/a/b;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/widget/a/a/b;ILcom/eztv/powerful/widget/a/a/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/b$a;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/widget/a/a/b$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/widget/a/a/b$a;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$a;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/b;->b(Lcom/eztv/powerful/widget/a/a/b;)Lcom/eztv/powerful/widget/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$a;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/b;->b(Lcom/eztv/powerful/widget/a/a/b;)Lcom/eztv/powerful/widget/a/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/b$a;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget v2, p0, Lcom/eztv/powerful/widget/a/a/b$a;->a:I

    iget-object v3, p0, Lcom/eztv/powerful/widget/a/a/b$a;->c:Lcom/eztv/powerful/widget/a/a/b;

    iget-object v3, v3, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/eztv/powerful/widget/a/c/b;->a(Lcom/eztv/powerful/widget/a/a/b$c;Landroid/view/View;ILjava/util/List;)V

    :cond_0
    return-void
.end method
