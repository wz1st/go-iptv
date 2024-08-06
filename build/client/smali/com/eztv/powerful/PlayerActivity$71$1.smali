.class Lcom/eztv/powerful/PlayerActivity$71$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity$71;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity$71;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity$71;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$71$1;->a:Lcom/eztv/powerful/PlayerActivity$71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71$1;->a:Lcom/eztv/powerful/PlayerActivity$71;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/eztv/powerful/PlayerActivity;->aM:Ljava/util/List;

    const-string v0, "("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Lcom/eztv/powerful/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/e;->b(Ljava/lang/String;)Lcom/a/a/e;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->d(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/a/a/b;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$71$1;->a:Lcom/eztv/powerful/PlayerActivity$71;

    iget-object v2, v2, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v2, v2, Lcom/eztv/powerful/PlayerActivity;->aM:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71$1;->a:Lcom/eztv/powerful/PlayerActivity$71;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0xa1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V

    return-void
.end method
