.class final Lcom/b/a/c/b/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/h$a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/b/g;

.field private final b:Lcom/b/a/c/a;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/g;Lcom/b/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/b/g$b;->a:Lcom/b/a/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/b/a/c/b/g$b;->b:Lcom/b/a/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TZ;>;)",
            "Lcom/b/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/g$b;->a:Lcom/b/a/c/b/g;

    iget-object v1, p0, Lcom/b/a/c/b/g$b;->b:Lcom/b/a/c/a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/a;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method
