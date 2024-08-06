.class final Lcom/g/a/c/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/g/a/b/e",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/a/a;

.field final synthetic b:Lcom/g/a/c/a/b;


# direct methods
.method constructor <init>(Lcom/g/a/c/a/b;Lcom/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/a/g;->b:Lcom/g/a/c/a/b;

    iput-object p2, p0, Lcom/g/a/c/a/g;->a:Lcom/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/g/a/c/a/g;->a(Ljava/lang/Exception;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/a/g;->b:Lcom/g/a/c/a/b;

    iput-object p2, v0, Lcom/g/a/c/a/b;->a:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/g/a/c/a/g;->a:Lcom/g/a/a/a;

    invoke-interface {v0, p1}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V

    return-void
.end method
