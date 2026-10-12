.class public Lcom/k/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/k/a/c;


# instance fields
.field private final a:Lcom/k/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/k/a/h;->a()Lcom/k/a/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/k/a/h$a;->a()Lcom/k/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/a;->a:Lcom/k/a/b;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/k/a/a;->a:Lcom/k/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/k/a/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
