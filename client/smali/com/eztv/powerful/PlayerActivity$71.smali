.class Lcom/eztv/powerful/PlayerActivity$71;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-boolean v0, v0, Lcom/eztv/powerful/PlayerActivity;->aN:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;Z)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://mobileso.bz.mgtv.com/pc/suggest/v3?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/PlayerActivity$71$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/PlayerActivity$71$1;-><init>(Lcom/eztv/powerful/PlayerActivity$71;)V

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/h;->a(Ljava/lang/String;Lcom/eztv/powerful/util/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$71;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/eztv/powerful/PlayerActivity;->aN:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
