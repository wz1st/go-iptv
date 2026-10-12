.class Lcom/eztv/powerful/d/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/eztv/powerful/d/f;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/f$c;->b:Lcom/eztv/powerful/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/d/f$c;->a:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/d/f$c;->b:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/f$c;->b:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/f$c;->a:I

    invoke-interface {v0, p1, v1, p3}, Lcom/eztv/powerful/d/c;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
