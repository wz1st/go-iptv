.class Lcom/c/a/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/e;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/c/a/a/e;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/e$a;->a:Lcom/c/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/c/a/a/e$a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/e$a;->a:Lcom/c/a/a/e;

    iget-object v1, p0, Lcom/c/a/a/e$a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/e;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/c/a/a/e$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
