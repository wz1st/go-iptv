.class Lcom/b/a/c/d/e/g$a;
.super Lcom/b/a/g/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/g/a/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Landroid/os/Handler;

.field private final c:J

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/a/f;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/e/g$a;->b:Landroid/os/Handler;

    iput p2, p0, Lcom/b/a/c/d/e/g$a;->a:I

    iput-wide p3, p0, Lcom/b/a/c/d/e/g$a;->c:J

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/g$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/b/a/g/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/g/b/b",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/d/e/g$a;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/b/a/c/d/e/g$a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/d/e/g$a;->b:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/b/a/c/d/e/g$a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/g/b/b;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/e/g$a;->a(Landroid/graphics/Bitmap;Lcom/b/a/g/b/b;)V

    return-void
.end method
