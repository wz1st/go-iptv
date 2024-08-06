.class Lcom/eztv/powerful/d/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/d$e;

.field final synthetic c:Lcom/eztv/powerful/d/d;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/d;ILcom/eztv/powerful/d/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/d$d;->c:Lcom/eztv/powerful/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/d/d$d;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/d/d$d;->b:Lcom/eztv/powerful/d/d$e;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/d/d$d;->c:Lcom/eztv/powerful/d/d;

    invoke-static {v0}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d;)Lcom/eztv/powerful/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/d$d;->c:Lcom/eztv/powerful/d/d;

    invoke-static {v0}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d;)Lcom/eztv/powerful/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$d;->b:Lcom/eztv/powerful/d/d$e;

    iget v2, p0, Lcom/eztv/powerful/d/d$d;->a:I

    invoke-interface {v0, v1, p1, v2}, Lcom/eztv/powerful/d/a;->a(Lcom/eztv/powerful/d/d$e;Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
