.class final Lcom/g/a/d/g;
.super Lcom/g/a/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/a/b/h",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/d/b;


# direct methods
.method constructor <init>(Lcom/g/a/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/d/g;->a:Lcom/g/a/d/b;

    invoke-direct {p0}, Lcom/g/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/d/g;->a(Ljava/lang/Object;)Z

    return-void
.end method
