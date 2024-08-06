.class public Lcom/l/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/c/c/g;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/l/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/c/c/b;Lcom/g/a/c/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/l/b;->a:Ljava/lang/String;

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/css"

    invoke-interface {p2, v0}, Lcom/g/a/c/c/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/l/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/l/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/g/a/c/c/d;->a(Ljava/lang/String;)V

    return-void
.end method
