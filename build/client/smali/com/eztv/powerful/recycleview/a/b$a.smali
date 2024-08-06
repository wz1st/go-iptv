.class Lcom/eztv/powerful/recycleview/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/recycleview/a/b$b;

.field final synthetic c:Lcom/eztv/powerful/recycleview/a/b;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/a/b;ILcom/eztv/powerful/recycleview/a/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/b$a;->c:Lcom/eztv/powerful/recycleview/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/recycleview/a/b$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/recycleview/a/b$a;->b:Lcom/eztv/powerful/recycleview/a/b$b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b$a;->c:Lcom/eztv/powerful/recycleview/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/b;->a(Lcom/eztv/powerful/recycleview/a/b;)Lcom/eztv/powerful/recycleview/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b$a;->c:Lcom/eztv/powerful/recycleview/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/b;->a(Lcom/eztv/powerful/recycleview/a/b;)Lcom/eztv/powerful/recycleview/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/b$a;->b:Lcom/eztv/powerful/recycleview/a/b$b;

    iget v2, p0, Lcom/eztv/powerful/recycleview/a/b$a;->a:I

    invoke-interface {v0, v1, p1, v2}, Lcom/eztv/powerful/recycleview/c/b;->a(Lcom/eztv/powerful/recycleview/a/b$b;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
