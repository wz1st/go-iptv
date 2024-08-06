.class Lcom/eztv/powerful/PlayerActivity$84;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$84;->c:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$84;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/eztv/powerful/PlayerActivity$84;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$84;->c:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$84;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$84;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
