.class Lcom/b/a/c/c/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/b/a/c/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/b$b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLcom/b/a/c/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/b/a/c/c/b$b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/b$c;->a:[B

    iput-object p2, p0, Lcom/b/a/c/c/b$c;->b:Lcom/b/a/c/c/b$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/c/b$c;->b:Lcom/b/a/c/c/b$b;

    invoke-interface {v0}, Lcom/b/a/c/c/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/a/d$a",
            "<-TData;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/c/b$c;->b:Lcom/b/a/c/c/b$b;

    iget-object v1, p0, Lcom/b/a/c/c/b$c;->a:[B

    invoke-interface {v0, v1}, Lcom/b/a/c/c/b$b;->b([B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/b/a/c/a;
    .locals 1

    sget-object v0, Lcom/b/a/c/a;->a:Lcom/b/a/c/a;

    return-object v0
.end method
