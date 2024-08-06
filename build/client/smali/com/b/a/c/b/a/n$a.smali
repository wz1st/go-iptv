.class final Lcom/b/a/c/b/a/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/b/a/c/b/a/n$b;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/b/a/c/b/a/n$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/a/n$a;->b:Lcom/b/a/c/b/a/n$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/a/n$a;->b:Lcom/b/a/c/b/a/n$b;

    invoke-virtual {v0, p0}, Lcom/b/a/c/b/a/n$b;->a(Lcom/b/a/c/b/a/m;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput p1, p0, Lcom/b/a/c/b/a/n$a;->a:I

    iput-object p2, p0, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/c/b/a/n$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/c/b/a/n$a;

    iget v1, p0, Lcom/b/a/c/b/a/n$a;->a:I

    iget v2, p1, Lcom/b/a/c/b/a/n$a;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/b/a/i/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/a/n$a;->a:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/a/n$a;->a:I

    iget-object v1, p0, Lcom/b/a/c/b/a/n$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/b/a/c/b/a/n;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
