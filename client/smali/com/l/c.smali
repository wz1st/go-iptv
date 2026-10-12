.class public Lcom/l/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/c/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/c/c/b;Lcom/g/a/c/c/d;)V
    .locals 2

    invoke-interface {p1}, Lcom/g/a/c/c/b;->d()Lcom/g/a/c/e;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/g/a/c/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/eztv/powerful/b/b;->a(I)V

    invoke-static {}, Lcom/eztv/powerful/b/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/g/a/c/c/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method
