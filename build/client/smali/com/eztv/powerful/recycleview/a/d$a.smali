.class Lcom/eztv/powerful/recycleview/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/recycleview/a/d$c;

.field final synthetic c:Lcom/eztv/powerful/recycleview/a/d;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/a/d;ILcom/eztv/powerful/recycleview/a/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/d$a;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/recycleview/a/d$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/recycleview/a/d$a;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$a;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/d;->a(Lcom/eztv/powerful/recycleview/a/d;)Lcom/eztv/powerful/recycleview/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$a;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/d;->a(Lcom/eztv/powerful/recycleview/a/d;)Lcom/eztv/powerful/recycleview/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/d$a;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget v2, p0, Lcom/eztv/powerful/recycleview/a/d$a;->a:I

    iget-object v3, p0, Lcom/eztv/powerful/recycleview/a/d$a;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-static {v3}, Lcom/eztv/powerful/recycleview/a/d;->b(Lcom/eztv/powerful/recycleview/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/eztv/powerful/recycleview/c/d;->a(Lcom/eztv/powerful/recycleview/a/d$c;Landroid/view/View;ILjava/util/List;)V

    :cond_0
    return-void
.end method
