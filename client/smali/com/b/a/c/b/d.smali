.class Lcom/b/a/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/b/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/d",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/c/j;


# direct methods
.method constructor <init>(Lcom/b/a/c/d;Ljava/lang/Object;Lcom/b/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/d",
            "<TDataType;>;TDataType;",
            "Lcom/b/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/d;->a:Lcom/b/a/c/d;

    iput-object p2, p0, Lcom/b/a/c/b/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/b/a/c/b/d;->c:Lcom/b/a/c/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lcom/b/a/c/b/d;->a:Lcom/b/a/c/d;

    iget-object v1, p0, Lcom/b/a/c/b/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/a/c/b/d;->c:Lcom/b/a/c/j;

    invoke-interface {v0, v1, p1, v2}, Lcom/b/a/c/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
