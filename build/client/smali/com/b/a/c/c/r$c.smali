.class Lcom/b/a/c/c/r$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/support/v4/e/l$a;)Lcom/b/a/c/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<TModel;TData;>;>;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lcom/b/a/c/c/q",
            "<TModel;TData;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/q;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/c/q;-><init>(Ljava/util/List;Landroid/support/v4/e/l$a;)V

    return-object v0
.end method
