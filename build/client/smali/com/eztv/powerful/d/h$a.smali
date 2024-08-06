.class Lcom/eztv/powerful/d/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/h$d;

.field final synthetic c:Lcom/eztv/powerful/d/h;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/h;ILcom/eztv/powerful/d/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/h$a;->c:Lcom/eztv/powerful/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/eztv/powerful/d/h$a;->b:Lcom/eztv/powerful/d/h$d;

    iput p2, p0, Lcom/eztv/powerful/d/h$a;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/d/h$a;->c:Lcom/eztv/powerful/d/h;

    invoke-static {v0}, Lcom/eztv/powerful/d/h;->a(Lcom/eztv/powerful/d/h;)Lcom/eztv/powerful/d/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/h$a;->c:Lcom/eztv/powerful/d/h;

    invoke-static {v0}, Lcom/eztv/powerful/d/h;->a(Lcom/eztv/powerful/d/h;)Lcom/eztv/powerful/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/h$a;->b:Lcom/eztv/powerful/d/h$d;

    iget v2, p0, Lcom/eztv/powerful/d/h$a;->a:I

    invoke-interface {v0, v1, p1, v2}, Lcom/eztv/powerful/d/j;->a(Lcom/eztv/powerful/d/h$d;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
