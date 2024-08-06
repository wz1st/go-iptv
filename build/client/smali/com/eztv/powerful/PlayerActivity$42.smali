.class Lcom/eztv/powerful/PlayerActivity$42;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/widget/EditText;I)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$42;->c:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$42;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$42;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "\u5bc6\u7801\u592a\u5c11\u5566!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    move v1, v2

    move-object v3, v0

    :goto_1
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    iget v5, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    iget v5, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    iget v5, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    iget v5, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    iget v4, p0, Lcom/eztv/powerful/PlayerActivity$42;->b:I

    invoke-virtual {v0, v4}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget v0, v0, Lcom/eztv/powerful/b/a;->a:I

    invoke-static {v0}, Lcom/eztv/powerful/b/b;->a(I)V

    invoke-static {v1, v3}, Lcom/eztv/powerful/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bc6\u7801\u8bbe\u7f6e\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$42;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\u8f93\u5165\u9519\u8bef"

    invoke-static {v0, v2}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
