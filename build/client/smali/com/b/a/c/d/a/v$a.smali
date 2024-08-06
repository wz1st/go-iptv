.class final Lcom/b/a/c/d/a/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/u",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/v$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/v$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/d/a/v$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/v$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/b/a/i/j;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method
