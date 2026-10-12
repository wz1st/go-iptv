.class Lcom/b/a/c/d/e/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/d/e/g;


# direct methods
.method constructor <init>(Lcom/b/a/c/d/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/d/e/g$c;->a:Lcom/b/a/c/d/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/c/d/e/g$a;

    iget-object v2, p0, Lcom/b/a/c/d/e/g$c;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v2, v0}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/c/d/e/g$a;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/c/d/e/g$a;

    iget-object v1, p0, Lcom/b/a/c/d/e/g$c;->a:Lcom/b/a/c/d/e/g;

    iget-object v1, v1, Lcom/b/a/c/d/e/g;->a:Lcom/b/a/j;

    invoke-virtual {v1, v0}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
