.class Lcom/eztv/powerful/PlayerActivity$38;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$38;->b:Lcom/eztv/powerful/PlayerActivity;

    iput-boolean p2, p0, Lcom/eztv/powerful/PlayerActivity$38;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$38;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-static {p1}, Lcom/a/a/e;->b(Ljava/lang/String;)Lcom/a/a/e;

    move-result-object v0

    const-string v1, "videoshow"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->c(Ljava/lang/String;)Lcom/a/a/e;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->d(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/a/a/b;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v3, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v4

    const-string v5, "imgh_url"

    invoke-virtual {v4, v5}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v5}, Lcom/eztv/powerful/recycleview/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v4, "update"

    invoke-virtual {v0, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v4, "update"

    invoke-virtual {v0, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v4, "update"

    invoke-virtual {v0, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/eztv/powerful/recycleview/b/d;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v1}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v4, "intro"

    invoke-virtual {v0, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/eztv/powerful/recycleview/b/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->N:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "\u5168\u96c6"

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$38;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$38;->b:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V

    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$38;->b:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method
