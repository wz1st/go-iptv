.class Lcom/eztv/powerful/d/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/a/a/b;

.field final synthetic c:Lcom/eztv/powerful/d/f;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/f;ILcom/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/f$a;->c:Lcom/eztv/powerful/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/d/f$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/d/f$a;->b:Lcom/a/a/b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/d/f$a;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/f$a;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/f$a;->a:I

    iget-object v2, p0, Lcom/eztv/powerful/d/f$a;->b:Lcom/a/a/b;

    invoke-interface {v0, p1, v1, v2}, Lcom/eztv/powerful/d/c;->a(Landroid/view/View;ILcom/a/a/b;)V

    :cond_0
    return-void
.end method
