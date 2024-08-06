.class public Lcom/eztv/powerful/widget/a/a/b;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/widget/a/a/b$a;,
        Lcom/eztv/powerful/widget/a/a/b$b;,
        Lcom/eztv/powerful/widget/a/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/widget/a/a/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/b/a/g/e;

.field private c:Lcom/eztv/powerful/widget/a/c/b;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Lcom/b/a/g/e;

    invoke-direct {v0}, Lcom/b/a/g/e;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->b:Lcom/b/a/g/e;

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/b;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/widget/a/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/widget/a/a/b;)Lcom/eztv/powerful/widget/a/c/b;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->c:Lcom/eztv/powerful/widget/a/c/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 0

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/widget/a/a/b$c;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/widget/a/a/b$c;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/widget/a/a/b$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/widget/a/a/b$c;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a/b;->a(Lcom/eztv/powerful/widget/a/a/b$c;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/widget/a/a/b$c;I)V
    .locals 6

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/b$c;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/widget/a/a/b$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/widget/a/a/b$b;-><init>(Lcom/eztv/powerful/widget/a/a/b;ILcom/eztv/powerful/widget/a/a/b$c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/b$c;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/widget/a/a/b$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/widget/a/a/b$a;-><init>(Lcom/eztv/powerful/widget/a/a/b;ILcom/eztv/powerful/widget/a/a/b$c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a/b;->b:Lcom/b/a/g/e;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Lcom/b/a/g/e;->a(I)Lcom/b/a/g/e;

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a/b;->b:Lcom/b/a/g/e;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Lcom/b/a/g/e;->b(I)Lcom/b/a/g/e;

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/c;->b(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b/a/j;->a(Ljava/io/File;)Lcom/b/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a/b;->b:Lcom/b/a/g/e;

    invoke-virtual {v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v1

    iget-object v2, p1, Lcom/eztv/powerful/widget/a/a/b$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/b/a/i;->a(Landroid/widget/ImageView;)Lcom/b/a/g/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/b$c;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/b$c;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65f6\u957f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/eztv/powerful/util/i;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/eztv/powerful/widget/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/b;->c:Lcom/eztv/powerful/widget/a/c/b;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/b;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a/b;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/widget/a/a/b$c;

    move-result-object v0

    return-object v0
.end method
