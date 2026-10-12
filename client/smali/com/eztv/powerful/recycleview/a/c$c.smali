.class Lcom/eztv/powerful/recycleview/a/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/recycleview/a/c$e;

.field final synthetic c:Lcom/eztv/powerful/recycleview/a/c;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/c$c;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/recycleview/a/c$c;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/recycleview/a/c$c;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$c;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/c;->a(Lcom/eztv/powerful/recycleview/a/c;)Lcom/eztv/powerful/recycleview/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$c;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/c;->a(Lcom/eztv/powerful/recycleview/a/c;)Lcom/eztv/powerful/recycleview/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/c$c;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget v2, p0, Lcom/eztv/powerful/recycleview/a/c$c;->a:I

    invoke-interface {v0, v1, p1, v2, p3}, Lcom/eztv/powerful/recycleview/c/c;->a(Lcom/eztv/powerful/recycleview/a/c$e;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
